(function( $ ) {
	
	$.extend({ 
		ajaxFileUpload:function(form,callback,ajaxsave){
			DWZ.debug('ajaxFileUpload')
		
			
			if(1==2){
			
			//得到不需要上传附件的文件名
			var getFiles=function(){
				var json={};
				$('input[combofile]').each(function(index,el){
				    var name  = ($(el).attr('name'))
				    var value =($(el).attr('combofile'))
				    if(!json[name])
				        json[name]=[];
				    json[name].push(value);
				})
				return json;
			}
			
			//转换为ajax的data要求格式
			var josnToArr = function(json){
				var arr=[];
				for(v in json){
					var obj={};
					obj['name'] = v;
					obj['value'] = json[v]+"";
					arr.push(obj);
				}
				return arr;
			}
			
			
			var isNeedFielup=false;
			var $form=$(form); 
			var storedFiles = josnToArr(getFiles());
			$('input[type=file]', $form).each(function(index,el){
				if($(el).val()){
					isNeedFielup=true;
				}
			})
			
			if(!isNeedFielup){ 
				ajaxsave.apply(this,[storedFiles])
				return; 
			}
			}
			//if($('#randomForm').length==0){   
				//$('#randomForm').remove(); 
	       		//$('#randomIframe').remove(); 
				var randomForm = $('<form action="'+window.WWWROOT+'/base/processFileUpload.action" target="randomIframe"   style="display:none"  enctype ="multipart/form-data"  method="post" id="randomForm"> </form>');
				var  randomIframe = $('<iframe id="randomIframe"   style="display:none" name="randomIframe"></iframe>');
				randomIframe.on('load', callback || function(){
									DWZ.debug('randomIframe loaded')
									DWZ.debug(arguments)
									$(document).trigger("ajaxStop");
									var iframe = $('#randomIframe')[0];   
									var doc = iframe.contentDocument ? iframe.contentDocument : window.frames[iframe.id].document;
									var jsonstr=$(doc).text();   // IE
									if(!jsonstr){ 
										jsonstr=$(doc).find('pre').text();  //firefox
									}
									var json = $.parseJSON(jsonstr);
									if(json) 
									if(!(json['success'])){
										jQuery.alert("保存失败<br>"+json.msg?json.msg:'');
										$(document).trigger("ajaxStop");
										return false;
									}
										
									var arr =new Array();
									for(v in json){
										var obj={};
										obj['name']=v;
										obj['value']=json[v];
										arr.push(obj);
									}
									DWZ.debug(json)      
									DWZ.debug(arr)   
									//ajaxsave.apply(this,[$.merge(arr,storedFiles)])
								});  
				//$form.parent().append(randomForm) ;     
				//$form.parent().append(randomIframe) ; 
			//} 
			 
			// $form.find('input[type=file]').clone().appendTo(randomForm);  // firefox  
			//$form.find('input[type=file]')..not(':disabled').appendTo(randomForm);    // IE
			
			$(document).trigger("ajaxStart"); 
			$('#randomForm')[0].submit();  
		} 
	}) 
	
    $.widget( "custom.comboFile", {
    	options: {
		delay: 400, 
		minLength: 1,
		source: null,
		autoFocus:true, 
		position: {
			my: "left top",
			at: "left bottom",
			collision: "none"
		},
		// callbacks
		change: null,
		prefix:null,
		showType:0 , //0 精简模式  下拉按钮显示与隐藏文件列表 ,   1 复杂模式, div显示文件列表,不隐藏
		close: null,  
		focus: null,
		open: null,
		click: null, 
		listFiles:null, 
		response: null,
		search: null,
		select: null
		},
		_syncToHiddenEL : function(){
			
			var syncDatas=[]; 
			var syncTexts=[];
			var files = this.element.data('fileNames');
			for(v in files){  
				if(files[v]){
					syncDatas.push(files[v])
					syncTexts.push(files[v].text)  
				}
			}  
			this.element.data('fileNames',syncDatas); 
			$('#hidden_'+this.element.attr('id')).val(syncTexts.join(','));
			
			if(this.options.showType)
				this.element.butList.trigger('click')
		
		},
		_createIFrame :function(callback){ 
				var that =this; 
			 	$('#randomForm').remove(); 
			 	$('#randomIframe').remove(); 
			 	$('#randomDownloadIframe').remove();
				var  randomDownloadIframe = $('<iframe id="randomDownloadIframe"   style="display:none" name="randomDownloadIframe"></iframe>');
				var randomForm = $('<form action="'+window.WWWROOT+'/base/processFileUpload.action" target="randomIframe"   style="display:none"  enctype ="multipart/form-data"  method="post" id="randomForm"> </form>');
				var  randomIframe = $('<iframe id="randomIframe"   style="display:none" name="randomIframe"></iframe>');
				randomIframe.on('load', callback || function(){
									DWZ.debug('randomIframe loaded')
									DWZ.debug(arguments)
									var filedName = $('#randomForm input[type=file]:last').attr('name'); 
									$('#randomForm input[type=file]:last').remove();
									var iframe = $('#randomIframe')[0];   
									var doc = iframe.contentDocument ? iframe.contentDocument : window.frames[iframe.id].document;
									var jsonstr=$(doc).text();   // IE
									if(!jsonstr){ 
										jsonstr=$(doc).find('pre').text();  //firefox
									}
									var json = $.parseJSON(jsonstr);
									if(json){ 
										if(!(json['success'])){
										jQuery.alert("保存失败<br>"+json.msg?json.msg:'');
										return false;
										}
										that.element.data('fileNames').push({text:json[filedName]}); 
										that._syncToHiddenEL();
									} 
									
								
									$('li[combofile] .ui-icon-circle-close').die();
									$('li[combofile] .ui-icon-circle-close').click(function(){
										event.stopPropagation()}
									)
									
				});   
				
				$('body').append(randomForm);    
				$('body').append(randomIframe);    
				$('body').append(randomDownloadIframe);  
				
				
		},
		
		//update 页面回写数据到el中 
		//param: fileNames 以逗号分割的文件名
		setList :function(fileNames){ 
			 DWZ.debug('setList' )
			 DWZ.debug(fileNames ) 
			 if(fileNames){
				 var $el= this.element.parent();
					var arr = fileNames.split(',');
					for(v in arr){
						var obj ={text:arr[v]};
						this.element.data('fileNames').push(obj); 
					}
					this._syncToHiddenEL();
			 } 
			
		}, 
		//控件修改事件 
		_change : function(event){
			DWZ.debug('_change')
        	DWZ.debug(arguments) 
        	$(event.target).appendTo($('#randomForm')) 
        	$(document).trigger("ajaxStart");  
			$('#randomForm')[0].submit();  
			$(document).trigger("ajaxStop"); 
			this._moveFile2button();  
		}, 
		
		//移动 file 至 button 下面 ,并透明化
		// 兼容ie , ie下必须由file控件直接得到用户点击才能激活click事件,否则会被浏览器拒绝访问 
		_moveFile2button:function(){
			var $el= this.element.parent();
			var $file =this.element.clone();
			var $button =this.element.butUpload;
			$file.show();
			if(this.options.prefix){
				var  namestr = $file.attr('name');
				$file.attr('name', this.options.prefix+namestr)
			}
				   
			$file.width('65px'); 
			$file.height('25px');
			$file.css({'opacity':'0','filter':'alpha(opacity=0)'});
			$file.css({'cursor':'pointer'});
			$file.removeAttr('id').uniqueId().removeAttr('disabled').appendTo($el);
			this._on( $file ,{change:this.options['change']}); 
			$file.offset($button.offset());
			$file.offset({left:$button.offset().left+20});
		}, 
		
		//点击上传事件 
		_click : function(){
//			var $el= this.element.parent();
//			var $file =this.element.clone();
//			var $button =this.element.butUpload;
//			$file.show();
//			$file.width('65px'); 
//			$file.height('25px');
//			
//			$file.removeAttr('id').uniqueId().removeAttr('disabled').appendTo($el);
//			this._on( $file ,{change:this.options['change']}); 
//			$file.offset($button.offset())
//			$file.offset({left:$button.offset().left+20})
			//$file.trigger('click') 
		}, 
		//列表展示
        _listFiles:function(clickEvent){ 
        	clickEvent.stopPropagation();
        	DWZ.debug('_listFiles')
        	DWZ.debug(arguments)
        	
        	if(!this.options.showType)
	        	if ( this.menu.is( ":visible" ) ) {
	        		this._close(); 
	        		return;
	        	}  
        	var that= this;
        	var fileinputName = this.element.attr('name'); 
        	that.menu.empty();  
			var items =this.element.data('fileNames') ; 
			DWZ.debug(items)    
			this._suggest(items);   
			
			$('li[combofile] .ui-icon-circle-close').die();
			$('li[combofile] .ui-icon-circle-close').click(function(){
				event.stopPropagation();
			//	items.item.remove(); 
				var item = $(this).parents('li'); 
				$.each(that.element.data('fileNames'),function(index,el){ 
		           if(el.text==item.attr('comboFile'))
		             delete that.element.data('fileNames')[index] 
		 		})  
		 		that._syncToHiddenEL();
				item.remove();
			})
        },
		//默认值
	    _getCreateOptions: function(){
			var defalutOptions={click:this._click , listFiles:this._listFiles , change:this._change}; 
			return defalutOptions;  
		},
		//覆盖 widget 
        _create: function() {	
		 DWZ.debug('_create')
		 this.element.hide()  
		 this._createIFrame();
		 this.element.data('fileNames',[]);
		 this.element.butUpload =$('<button>').attr('comboFile','1').attr('type','button') 
		 .addClass('ui-state-default ui-corner-all') 
		 .button({  
			 label:'上传文件', 
			 icons: {  
				primary: 'ui-icon-plus'
			 }
		 }) 
		 .insertAfter(this.element)
		 .css('float','left')
		// .position({   my: " center center ",			  at: "left center",			  of: this.element.parent()		  }); 
		  
		 //兼容ie  ie下必须由 file 控件触发点击
		 //this._on( this.element.butUpload,{	click:this.options['click']}); 
			
		this.element.butList= $('<button>').attr('comboFile','1').attr('type','button')
		 .attr('z-index',10)
		 .addClass('ui-state-default ui-corner-all')
		 .attr('style','width:25px;height:28px;border-radius:0')
		 .button({  
		 	text:false,   
			 icons: {
				primary: 'ui-icon ui-icon-triangle-1-s'
			 } 
		 }) 
		 .insertAfter(this.element)  
		 .position({   my: "left center ",			  at: "right center",			  of: this.element.butUpload  });
		  
		 this._on( this.element.butList,{	click:this.options['listFiles']});   
		 
		 var that =this;
		 if(this.options.showType){
			 this.menu = $('<ul>').attr('comboFile','1').css('overflow','auto').css('position','relative').css('min-height','100px').css('text-align','left').css('margin-bottom','10px').hide();
		 }
		 else
			 this.menu = $('<ul>').attr('comboFile','1').css('overflow','auto').css('position','absolute').hide();  
		 
		 this.menu.menu({     
		 	select: function(event,items){ 
		 		DWZ.debug(' this.menu.menu({  select');
		 		//event.stopPropagation(); 
		 		DWZ.debug(arguments);
		 		var file = $(event.currentTarget).text(); 
		 		$('#randomDownloadIframe').attr('src', window.WWWROOT+ '/base/getFile.action?remoteFileName='+file)
		 		/*items.item.remove(); 
		 		$.each(that.element.data('fileNames'),function(index,el){
		           if(el.text==items.item.attr('comboFile'))
		             delete that.element.data('fileNames')[index] 
		 		})  
		 		that._syncToHiddenEL(); */
		 	}
		 	});    
		 
		 if(this.options.showType){
			 this.menu.appendTo(  this.element.closest('div') )
			 this.element.butList.trigger('click')
			 this.element.butList.hide();
		 } 
		 else{
			 this.menu.appendTo( this.document.find( this.options.appendTo || "body" )[ 0 ] )
			 this._on( this.document, {
					click: function( event ) {
						
						if ( !$( event.target ).closest( ".ui-menu" ).length ) {
							DWZ.debug(arguments)
							$('ul[combofile]').hide();
						}
					}
				});
		 }
			  
				
		 this.element.data('but',this.element.butUpload); 
		 this.element.data('list',this.element.butList);
		 this.element.data('menu',this.menu); 
		 
		 this._moveFile2button();
		  
		    
		 
		  
      }, 
      //覆盖 widget 
      _init : function() {   
    			 DWZ.debug('_init')
    			 
      },
      //列表组装
     _suggest: function( items ) {
		var ul = this.menu.data('menu').element 
			.empty()
			.zIndex( this.element.zIndex() + 1 );
		this._renderMenu( ul, items ); 
		this.menu.data('menu').refresh();
  
		// size and position menu
		ul.show();  
		this._resizeMenu();
		ul.position( $.extend({
			of: this.element.butUpload
		}, this.options.position )); 

		//this.menu.focus();  
	},  

	_resizeMenu: function() {
		
		var ul =this.menu.data('menu').element;
		ul.outerWidth( Math.max(
			// Firefox wraps long text (possibly a rounding bug)
			// so we add 1px to avoid the wrapping (#7513)
			ul.width( "" ).outerWidth() + 10,
			this.element.butUpload.outerWidth()  
		) );
	},

	_renderMenu: function( ul, items ) {
		var that = this;
		$.each( items, function( index, item ) {
			that._renderItemData( ul, item );
		});
	},

	_renderItemData: function( ul, item ) {
		return this._renderItem( ul, item ).data( "ui-comboFile-item", item );
	},

	_renderItem: function( ul, item ) {  
		DWZ.debug(arguments)
		
		var closeDiv = $('<span>').addClass('ui-icon ui-icon-circle-close  ')//.css('position','relative'); 
		var a =  $( "<a>" ).text( item.text ).append(closeDiv.hide())   ;  
		var li=	$( "<li>" ).attr('comboFile',item.text)  
		//	.append($('<div>')    
				.append(a)
		//		.append(closeDiv) 
		//		) 
			.appendTo( ul );  
	   
		if(!this.element.butUpload.attr('disabled'))
			   this.element.data('closeDiv',closeDiv); 
			     
			    this._on(li,{mouseenter:function(){
			    	if(this.element.butUpload.attr('disabled')){ 
						return li; 
					}
			    	closeDiv.show();
			    	closeDiv.position({    my: " left left",  at: "right-8 left" ,of:a });   
			    }});
			      this._on(li,{mouseleave:function(){
			    	closeDiv.hide();
			    }}); 
		
		return li;
	},
	_close: function( event ) {
		DWZ.debug('_close')
		if ( this.menu.is( ":visible" ) ) {
			this.menu.hide();
			//this.menu.data('menu').blur(); 
		}
	} ,
	_destroy: function() {
		this.element.butList.remove()
		this.element.butUpload.remove() 
		this.menu.remove();
	}
    
    });
  })( jQuery );