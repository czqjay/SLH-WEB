(function( $ ) {
	
	$.comboSelect=$.comboSelect||{};
	$.extend($.comboSelect,{
			setDefault : function(event){ 
				var d= event.data;
				var $el=$('#'+d.id);
				var json= d.defaultoption;
				var id=""; 
				var value=""; 
				var selectedValue=d.value?d.value:'';
				if(json)
				if($.isArray(json)){
					$el.html('');  
				 	for(v in json){ 
				 		var j = json[v];   
				 		id = j.id?j.id:'';       
						value = j.value?j.value:'---请选择---'; 
						if(selectedValue==id)
							$el.append("<option selected='true'  value='"+id+"'>"+value+"</option>")
						else
							$el.append("<option value='"+id+"'>"+value+"</option>")
				 	}
				}else{
					id = json.id?json.id:'';  
					value = json.id?json.value:'---请选择---'; 
					$el.html('');
					$el.append("<option selected='true'  value='"+id+"'>"+value+"</option>")
				} 
				 
			},
			selectReset : function(event,options){  
				var d= event.data; 
				var $el=$('#'+d.id); 
				if(options&&options['id']){
					$el.val(options['id']);  
					$('#combo'+d.id).val($el.find('option:selected').text());
				}else{
					$el.val($el.find('option:first').val()); 
					$('#combo'+d.id).val($el.find('option:selected').text());
						
				}   
				$el.trigger('change',event) ;    
			},
			reload : function(event,options){
			
				var d= event.data;
				var $el=$('#'+d.id);
				var json=d.jsonreader||{};
				var url= d.dataUrl;  
				var selectedValue=d.value;
				var postData={}; 
				postData['nd']=Math.random();  
				var sid =json.id?json.id:'id';
				var svalue =json.value?json.value:'name'; 
				var sformat =json.format;
				var f =d.jsonreader||{};
	
				
				if(options){
					url = options.url?options.url:url; 
					postData= options.data?options.data:postData;   
				}
				if(!selectedValue){ 
					selectedValue =options.selectedValue; 
				}
				 
				jQuery.ajax({
				  dataType: "json",
				  url: url,
				  async :false,
				  data:postData,
				  success: function(resData){ 
					if(resData.success) 
				
						for(i in resData.list){
							var ovalue = resData.list[i][sid];
							var otext =  resData.list[i][svalue];
							
							if(sformat){
								var valueArr = sformat.split('+'); 
								var arr = [];
								for(v in valueArr){ 
										arr.push( resData.list[i][valueArr[v]]? resData.list[i][valueArr[v]]:valueArr[v]); 
								}
								otext = arr.join(" "); 
							} 
								
							
							if(selectedValue==resData.list[i][sid]){
								$el.append("<option selected='true' title="+otext+"  value="+ovalue+">"+otext+"</option>")
							}
							else
								$el.append("<option title="+otext+"  value="+ovalue+">"+otext+"</option>")			
							}
					}
				});
				
			}
	})
	
	
    $.widget( "custom.combobox", {
    	options: {
		delay: 300,
		minLength: 1,
		source: null,
		// callbacks
		change: null,
		close: null, 
		focus: null,
		open: null,
		response: null,
		search: null, 
		select: null
	},
      _create: function() {  
    	this.element.data('opts',this.options);
		if(this.element.parent().hasClass('ui-inputInWidth')){ 
		//	this.element.parent().removeClass('ui-inputInWidth'); // margin: 5px 30px 0 100px;
      	// this.element.parent().css('margin', '0');   
        //	this.element.parent().css('text-align','left');
		}
		this.element.width(this.element.parent().width());
		 
        this.wrapper = $( "<div>" )
//          .addClass( "custom-combobox" ) 
        .addClass( "row" )
        .insertAfter( this.element )//.css('float','left');       
 		this.element.attr( "comboid", "combo"+this.element.attr('id')) ;  
        this.element.hide();  
        this.element.bind('setDefault',{id:this.options.id,defaultoption:this.options.defaultoption,value:this.options.value},$.comboSelect.setDefault) ;
		this.element.bind('selectReset',{id:this.options.id},$.comboSelect.selectReset);
		this.element.bind('reload',{id:this.options.id,jsonreader:this.options.jsonreader,dataUrl:this.options.dataUrl,value:this.options.value},$.comboSelect.reload);
		if(this.options.defaultoption)
			this.element.trigger('setDefault') 
			
		if(this.options.dataUrl) 
			this.element.trigger('reload',{proxy:this})   
			
	    if($('#combo'+this.options.id).length==0){   
			 this._createAutocomplete();  
        	 this._createShowAllButton();     
		}		 
      }, 
      _createAutocomplete: function() {
      	DWZ.debug("_createAutocomplete")
        var selected = this.element.children( ":selected" ),
       // value = selected.val() ? selected.text() : "";
 		value = selected.text(); 
 		DWZ.debug(this.element)  
 		DWZ.debug(this.element.width()) 
 		DWZ.debug(this.element.parent()) 
 		
 		DWZ.debug(this.wrapper) 
 		
        this.input = $( "<input>" ) 
          .appendTo( this.wrapper )   
          .attr('style','text-align:left; ')
          .val( value )      
          .attr( "title", "" ) 
          .attr( "id", "combo"+this.element.attr('id') ) 
            .addClass( "col-xs-10 " )
             .addClass( "textInput" )
          .autocomplete({ 
            delay: 0,
            minLength: 0,
            source: $.proxy( this, "_source" ),
            change: function(){
            	DWZ.debug('change')  
            }
          }); 
//    //   .tooltip({ 
//      //      tooltipClass: "ui-state-highlight" 
//       //   }); 
//         //  this.input.attr('style','width:'+(this.element.parent().width()-50)+'px')  
//  
        this._on( this.input, {
          autocompleteselect: function( event, ui ) {
          DWZ.debug("autocompleteselect")
          ui.item.option.selected = true; 
          this.element.trigger('change') ;   
          this._trigger( "select", event, { 
              item: ui.item.option, 
              ele:this.element
            });
          },
          autocompletechange: "_removeIfInvalid"
          
        });
      },
 
      _createShowAllButton: function() {
        var input = this.input, 
          wasOpen = false;
          var btn =$('<button></button>')  
          .attr( "tabIndex", -1 )
           .attr( "type", 'button' )
          .attr( "title", "显示所有" )  
          .addClass('col-xs-2') 
          .appendTo( this.wrapper  )
          .attr( "style", '    float: left;       width: 18px;          height: 18px;' )  
          .button({  
            icons: { 
              primary: "ui-icon-triangle-1-s" 
            },
            text: false
          }).mousedown(function() { 
            wasOpen = input.autocomplete( "widget" ).is( ":visible" );
          })
           .removeClass('ui-corner-all')
         
          .click(function(event) {
            input.focus();
            event.stopPropagation(); 
            // Close if already visible
            if ( wasOpen ) {
              return;
            } 
            // Pass empty string as value to search for, displaying all results
           input.autocomplete( "search", "" );
          }) ;
      },
      _source: function( request, response ) {
        var matcher = new RegExp( $.ui.autocomplete.escapeRegex(request.term), "i" );
        response( this.element.children( "option" ).map(function() {
          var text = $( this ).text();
         // if ( this.value && ( !request.term || matcher.test(text) ) )  
         if (  matcher.test(text)  ) 
            return {
              label: text,
              value: text,   
              option: this 
            };
        }) );
      },
      _removeIfInvalid: function( event, ui ) {
      	DWZ.debug('_removeIfInvalid')
        // Selected an item, nothing to do
        if ( ui.item ) {
          return;
        }
        // Search for a match (case-insensitive)
        var value = this.input.val(),
          valueLowerCase = value.toLowerCase(),
          valid = false;
        this.element.children( "option" ).each(function() {
          if ( $( this ).text().toLowerCase() === valueLowerCase ) {
            this.selected = valid = true;
            return false;
          }
        });
        // Found a match, nothing to do
        if ( valid ) {
          return; 
        }
 
        // Remove invalid value
        this.input
          .val( "" )
          .attr( "title", "" )
     //     .tooltip( "open" );  
        this.element.val("0");  
         this.element.val("");     
        this._delay(function() {
          this.input.tooltip( "close" ).attr( "title", "" ); 
        }, 2500 );
        this.input.data( "ui-autocomplete" ).term = "";
      },
 
      _destroy: function() {
        this.wrapper.remove();
        this.element.show();
      }
    });
    
  })( jQuery );