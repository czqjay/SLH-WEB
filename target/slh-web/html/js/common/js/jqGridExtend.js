
$.jgrid['createEl'] = function(eltype,options,vl,autowidth, ajaxso) { 
		var elem = "", $t = this;
		function setAttributes(elm, atr, exl ) {
			var exclude = ['dataInit','dataEvents','dataUrl', 'buildSelect','sopt', 'searchhidden', 'defaultValue', 'attr', 'custom_element', 'custom_value'];
			if(exl !== undefined && $.isArray(exl)) {
				$.merge(exclude, exl);
			}
			$.each(atr, function(key, value){ 
				if($.inArray(key, exclude) === -1) {
					$(elm).attr(key,value);
				}
			});
			if(!atr.hasOwnProperty('id')) {
				$(elm).attr('id', $.jgrid.randId());
			}
		}
		switch (eltype)
		{
			case "textarea" :
				elem = document.createElement("textarea");
				if(autowidth) {
					if(!options.cols) { $(elem).css({width:"98%"});}
				} else if (!options.cols) { options.cols = 20; }
				if(!options.rows) { options.rows = 2; }
				if(vl=='&nbsp;' || vl=='&#160;' || (vl.length==1 && vl.charCodeAt(0)==160)) {vl="";}
				elem.value = vl;
				setAttributes(elem, options);
				$(elem).attr({"role":"textbox","multiline":"true"});
			break;
			case "checkbox" : //what code for simple checkbox
				elem = document.createElement("input");
				elem.type = "checkbox";
				if( !options.value ) {
					var vl1 = vl.toLowerCase();
					if(vl1.search(/(false|0|no|off|undefined)/i)<0 && vl1!=="") {
						elem.checked=true;
						elem.defaultChecked=true;
						elem.value = vl;
					} else {
						elem.value = "on";
					}
					$(elem).attr("offval","off");
				} else {
					var cbval = options.value.split(":");
					if(vl === cbval[0]) {
						elem.checked=true;
						elem.defaultChecked=true;
					}
					elem.value = cbval[0];
					$(elem).attr("offval",cbval[1]);
				}
				setAttributes(elem, options, ['value']);
				$(elem).attr("role","checkbox");
			break;
			case "select" :
				elem = document.createElement("select");
				elem.setAttribute("role","select");
				var msl, ovm = [];
				if(options.multiple && options.multiple===true) {
					msl = true;
					elem.multiple="multiple";
					$(elem).attr("aria-multiselectable","true");
				} else { msl = false; }
				if(options.dataUrl !== undefined) {
					var rowid = options.name ? String(options.id).substring(0, String(options.id).length - String(options.name).length - 1) : String(options.id),
						postData = options.postData || ajaxso.postData;

					if ($t.p && $t.p.idPrefix) {
						rowid = $.jgrid.stripPref($t.p.idPrefix, rowid);
					} else {
						postData = undefined; // don't use postData for searching from jqFilter. One can implement the feature in the future if required.
					}
					$.ajax($.extend({
						url: options.dataUrl,
						type : "GET",
						dataType: "html",
						data: $.isFunction(postData) ? postData.call($t, rowid, vl, String(options.name)) : postData,
						context: {elem:elem, options:options, vl:vl},
						success: function(data){
							var a,	ovm = [], elem = this.elem, vl = this.vl,
							options = $.extend({},this.options),
							msl = options.multiple===true;
							if($.isFunction(options.buildSelect)) {
								var b = options.buildSelect.call($t,data);
								a = $(b).html();
							} else {
								a = $(data).html();
							}
							if(a) {
								$(elem).append(a);
								setAttributes(elem, options);
								if(options.size === undefined) { options.size =  msl ? 3 : 1;}
								if(msl) {
									ovm = vl.split(",");
									ovm = $.map(ovm,function(n){return $.trim(n);});
								} else {
									ovm[0] = $.trim(vl);
								}
								//$(elem).attr(options);
								setTimeout(function(){
									$("option",elem).each(function(i){
										//if(i===0) { this.selected = ""; }
										// fix IE8/IE7 problem with selecting of the first item on multiple=true
										if (i === 0 && elem.multiple) { this.selected = false; }
										$(this).attr("role","option");
										if($.inArray($.trim($(this).text()),ovm) > -1 || $.inArray($.trim($(this).val()),ovm) > -1 ) {
											this.selected= "selected";
										}
									});
								},0);
							}
						}
					},ajaxso || {}));
				} else if(options.value) {
					var i;
					if(options.size === undefined) {
						options.size = msl ? 3 : 1;
					}
					if(msl) {
						ovm = vl.split(",");
						ovm = $.map(ovm,function(n){return $.trim(n);});
					}
					if(typeof options.value === 'function') { options.value = options.value(); }
					var so,sv, ov, 
					sep = options.separator === undefined ? ":" : options.separator,
					delim = options.delimiter === undefined ? ";" : options.delimiter;
					if(typeof options.value === 'string') {
						so = options.value.split(delim);
						for(i=0; i<so.length;i++){
							sv = so[i].split(sep);
							if(sv.length > 2 ) {
								sv[1] = $.map(sv,function(n,ii){if(ii>0) { return n;} }).join(sep);
							}
							ov = document.createElement("option");
							ov.setAttribute("role","option");
							ov.value = sv[0]; ov.innerHTML = sv[1];
							elem.appendChild(ov);
							if (!msl &&  ($.trim(sv[0]) == $.trim(vl) || $.trim(sv[1]) == $.trim(vl))) { ov.selected ="selected"; }
							if (msl && ($.inArray($.trim(sv[1]), ovm)>-1 || $.inArray($.trim(sv[0]), ovm)>-1)) {ov.selected ="selected";}
						}
					} else if (typeof options.value === 'object') {
						var oSv = options.value, key;
						for (key in oSv) {
							if (oSv.hasOwnProperty(key ) ){
								ov = document.createElement("option");
								ov.setAttribute("role","option");
								ov.value = key; ov.innerHTML = oSv[key];
								elem.appendChild(ov);
								if (!msl &&  ( $.trim(key) == $.trim(vl) || $.trim(oSv[key]) == $.trim(vl)) ) { ov.selected ="selected"; }
								if (msl && ($.inArray($.trim(oSv[key]),ovm)>-1 || $.inArray($.trim(key),ovm)>-1)) { ov.selected ="selected"; }
							}
						}
					}
					setAttributes(elem, options, ['value']);
				}
			break;
			case "suiselect" : 
				
				var elem = document.createElement("div");
				var el = document.createElement("select");
				$(elem).append(el) 
				var id = options.id; 
				var name = options.name;
				options.value=vl; 
				el.id =id;
				el.name=name;
				var rowid = options.name ? String(options.id).substring(0, String(options.id).length - String(options.name).length - 1) : String(options.id);

//				var  defaultoption="[{'id':'','value':'请选择'}]"  ;
//				var dataUrl="${ctxPath}/transportationType/getSelectBody.action?optionId=trpCode&optionName=trpDesc"; 
//				var jsonreader="{'id':'trpCode','value':'trpDesc','format':'trpCode+trpDesc'}" ; 
				$(el).data('defaultoption',options.defaultoption)
				var selurl=	$.isFunction(options.dataUrl) ? options.dataUrl.call($t, rowid, vl, String(options.name)) : options.dataUrl;
				options.dataUrl = selurl; 
				$(el).data('dataUrl',options.dataUrl );
				$(el).data('jsonreader',options.jsonreader) ;
				setTimeout(function(){
					$(el).combobox( 	 options ); 
				},10);
				
				
			 	setAttributes(el, options);  
			//	$(elem).combobox(options)  
			//	DWZ.debug(this)
				
			break;

			case "text" :
			case "password" :
			case "button" :
				var role;
				if(eltype=="button") { role = "button"; }
				else { role = "textbox"; }
				elem = document.createElement("input");
				elem.type = eltype;
				elem.value = vl;
				setAttributes(elem, options);
				if(eltype != "button"){
					if(autowidth) {
						if(!options.size) { $(elem).css({width:"98%"}); }
					} else if (!options.size) { options.size = 20; }
				}
				$(elem).attr("role",role);
				if(options.class&& options.class =='datePicker'){
					setTimeout(function(){
						var $this = $(elem);
						var opts = {};
						if ($this.attr("dateFmt")) opts.pattern = $this.attr("dateFmt");
						if ($this.attr("format")) opts.pattern = $this.attr("format");
						if ($this.attr("minDate")) opts.minDate = $this.attr("minDate"); 
						if ($this.attr("maxDate")) opts.maxDate = $this.attr("maxDate");
						if ($this.attr("mmStep")) opts.mmStep = $this.attr("mmStep");
						if ($this.attr("ssStep")) opts.ssStep = $this.attr("ssStep");
						$this.datepicker(opts);
					},10);
				}
				
			break;
			case "image" :
			case "file" :
				elem = document.createElement("input");
				elem.type = eltype;
				setAttributes(elem, options);
				break;
			case "custom" :
				elem = document.createElement("span");
				try {
					if($.isFunction(options.custom_element)) {
						var celm = options.custom_element.call($t,vl,options,elem); 
						if(celm) {
							celm = $(celm).addClass("customelement").attr({id:options.id,name:options.name});
							$(elem).empty().append(celm);
						} else {
							throw "e2";
						}
					} else {
						throw "e1";
					}
				} catch (e) {
					if (e=="e1") { $.jgrid.info_dialog($.jgrid.errors.errcap,"function 'custom_element' "+$.jgrid.edit.msg.nodefined, $.jgrid.edit.bClose);}
					if (e=="e2") { $.jgrid.info_dialog($.jgrid.errors.errcap,"function 'custom_element' "+$.jgrid.edit.msg.novalue,$.jgrid.edit.bClose);}
					else { $.jgrid.info_dialog($.jgrid.errors.errcap,typeof e==="string"?e:e.message,$.jgrid.edit.bClose); }
				}
			break;
		}
		return elem;
	}
	
	
	
