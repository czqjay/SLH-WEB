(function( $ ) {
	
	
    $.widget( "custom.comboCheckcbox", {
    	options: { 
			utils:[],
			values:[],
			type:'checkbox'
		},
		//覆盖 widget 
	_create: function() {	
		DWZ.debug('_create');
		var $el = 	this.element;
		if(this.options.utils)
			for(v in this.options.utils){ 
			var util = this.options.utils[v];   
			DWZ.debug(util)
			var $li =$('<li>').appendTo ($el).addClass('suicheckboxli');
			var $input =$('<input>').attr('type',this.options.type).addClass('suicheckbox');
			$input.attr('value',util.value);
			$input.css('width','14px');
			$input.attr('name',util.name);
			$li.append($input); 
			var $span =$('<span>').addClass('suicheckboxspan').text(util.lable);
			$li.append($span);
			
			if(this.options.values){  
				var arr = this.options.values.split(',');
				for(k in arr){
					DWZ.debug(arr[k])
					DWZ.debug(arr[k]==util.value) 
					if(arr[k]==util.value){
						$input.attr('checked',true) 
					}
				}
			}
	}
		
		
		
	},
      //覆盖 widget 
	_init : function() {   
    		DWZ.debug('_init')
	},
	_close: function( event ) {
		DWZ.debug('_close')
		
	} ,
	_destroy: function() {
		this.element.remove();
	}
	});
    
  })( jQuery );