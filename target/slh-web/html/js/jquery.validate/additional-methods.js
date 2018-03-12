


//非法字符验证    
jQuery.validator.addMethod("illegal", function(value, element){
	return this.optional(element) || value.isIllegal();
}, "请勿输入非法字符");
 
//混合电话验证
jQuery.validator.addMethod("mixPhone", function(value, element){
	return this.optional(element) || value.mixPhone();
}, "可输入 区号-（可选）固定电话7~8位、手机号码");

//密码验证    
jQuery.validator.addMethod("password", function(value, element){ 
	if ($("#passwd") && $("#passwd").attr("readonly")) return true;
	var pattern = /^(([0-9]+[a-zA-Z]+[0-9]*)|([a-zA-Z]+[0-9]+[a-zA-Z]*))$/;
	return this.optional(element) || (value.length >= 8 && pattern.test(value) && value.length <= 20);
}, "密码必须由8～20位的字母和数字组成");

jQuery.validator.addMethod("simplePassword", function(value, element){
	if ($("#simplePassword") && $("#simplePassword").attr("readonly")) return true;
	var pattern = /^[0-9a-zA-Z\_]*$/;
	return this.optional(element) ||pattern.test(value);
}, "限用字母、数字、下划线"); 

//身份证验证    
jQuery.validator.addMethod("idCard", function(value, element){
	return this.optional(element) || value.isIdCard();
});

//身份证验证    
jQuery.validator.addMethod("phone", function(value, element){
	return this.optional(element) || value.isPhone();
}, "请输入正确的电话号码 如 010-33333333");

jQuery.validator.addMethod("mobile", function(value, element){
	return this.optional(element) || value.isMobile();
}, "请输入正确的手机号码");

jQuery.validator.addMethod("isPostCode", function(value, element){
	return this.optional(element) || value.isPostCode();
}, "请输入正确的邮政编码");

//联动对比两个日期控件的时间，后者不能先于前者
jQuery.validator.addMethod("next", function(value, element){
	var next = document.getElementById(element.getAttribute("next"));
	var v1 = value.trim().replace(/\D/g,"");
	var v2 = next.value.trim().replace(/\D/g,"");
	
	return this.optional(element) || Number(v2)>=Number(v1);
}, "起始时间不能晚于结束时间");

//字符最小长度验证（一个中文字符长度为2）
jQuery.validator.addMethod("stringMinLength", function(value, element, param) {
	var length = value.length;
	for ( var i = 0; i < value.length; i++) {
		if (value.charCodeAt(i) > 127) {
			length++;
		}
	} 
	return this.optional(element) || (length >= param[0]);
}, $.validator.format("长度不能小于{0}!{1}"));      
   
// 字符最大长度验证（一个中文字符长度为2）
jQuery.validator.addMethod("stringMaxLength", function(value, element, param) {
	var length = value.length;
	for ( var i = 0; i < value.length; i++) {
		if (value.charCodeAt(i) > 127) {
			length++;
		}
	}
	return this.optional(element) || (length <= param);
}, $.validator.format("长度不能大于{0}!"));   
  
// 字符验证
jQuery.validator.addMethod("string", function(value, element) {
	return this.optional(element) || /^[\u0391-\uFFE5\w]+$/.test(value);
}, "不允许包含特殊符号!");   
  
// 中文字两个字节
jQuery.validator.addMethod("byteRangeLength",
		function(value, element, param) {
			var length = value.length;
			for ( var i = 0; i < value.length; i++) {
				if (value.charCodeAt(i) > 127) {
					length++;
				}
			}
			return this.optional(element)
					|| (length >= param[0] && length <= param[1]);
		}, "请确保输入的值在3-15个字节之间(一个中文字算2个字节)");   
  
// 只能输入中文
jQuery.validator.addMethod("stringCH", function(value, element) {
	var length = value.length;
	for ( var i = 0; i < value.length; i++) {
		if (value.charCodeAt(i) > 127) {
			length++;
		}
	}
	return this.optional(element) || /[^u4E00-u9FA5]/g.test(value);
}, "只能输入汉字,一个汉字占两具字节");   
  
// 只能输入26个字母
jQuery.validator.addMethod("stringEN", function(value, element) {
	var length = value.length;
	for ( var i = 0; i < value.length; i++) {
		if (value.charCodeAt(i) > 127) {
			length++;
		}
	}
	//alert(length);
	return this.optional(element) || /^[A-Za-z]+$/g.test(value);
}, "只能输入字母");

//只能输入数字与字母
jQuery.validator.addMethod("digitLetter", function(value, element) {
	//alert(length);
	value=value.trim();
	return this.optional(element) || /^[A-Za-z0-9]+$/.test(value);
}, "只能输入字母与数字");

//只能输入数字与字母或者中文
jQuery.validator.addMethod("letterNumberChinese", function(value, element) {
	value=value.trim();
	return this.optional(element) || /^[A-Za-z0-9\u4e00-\u9fa5]+$/.test(value);
}, "只能输入字母,数字和中文");

//只能输入字母或者中文
jQuery.validator.addMethod("letterChinese", function(value, element) {
	value=value.trim(); 
	return this.optional(element) || /^[A-Za-z\u4e00-\u9fa5]+$/.test(value);
}, "只能输入字母和中文");


//more,用于比较:大于或小于<input type="text" name='endTime' more="[$('#startTime'),'计划结束时间','计划开始时间']" />
jQuery.validator.addMethod("more", function(value, element,param) {
	/*分解参数,是否有,*/
	var otherObj ;
	var isEqual=false;
	var isGrid=false;   //是否在grid中验证
	if (jQuery.isFunction(param[0])) {
		otherObj = param[0].call(element) 
	}else{ 
		otherObj = $(param[0]);  
	}
	
	
	if(param[3] && param[3]=="equal"){
		isEqual=true;
	}
	 
	if((param[3] && param[3]=="inGrid") || (param[4] && param[4]=="inGrid")){
		isGrid=true;
	}
	
	
	if(isGrid){
		otherObj = $(element).parents('tr').find('[name='+param[0]+']');
	}
	
	value = value.trim();
	var ok = true;
	if(value!="" && otherObj && (otherObj.val().trim().length>0)){
		var otherVal = otherObj.val().trim();
				
		if($(element).attr("datatype")=="number")
		{
			/*先转化为数字,再比较*/
			var lone = parseFloat(otherVal);
			var gone = parseFloat(value);
			
			if(gone < lone){
				ok=false;
			}
		}else if($(element).attr("calendar"))
		{
			/*如果是时间*/
			var v1 = value.trim().replace(/\D/g,"");
			var v2 = otherVal.replace(/\D/g,"");
			if(isEqual){
				if(Number(v1)<Number(v2)){
					ok=false;
				}
			}else{
				if(Number(v1)<=Number(v2)){
					ok=false;
				}
				
			}
			
		}else{
			/*字符串比较*/
			if(value.localeCompare(otherVal)<0){
				ok=false;
			}
		}
	}
	//alert(length);
	return this.optional(element) || ok;
}, $.validator.format("{1}小于等于{2}!")); 

//samelen,两个值的长度要一样
jQuery.validator.addMethod("samelen", function(value, element,param) {
	/*分解参数,是否有,*/
	var otherObj = $(param);
	value = value.trim();
	var ok = true;
	if(value!="" && otherObj && (otherObj.val().trim().length>0)){
		var otherVal = otherObj.val().trim();
		if(value.length!=otherVal.length){
			ok = false;
		}
	}
	//alert(length);
	return this.optional(element) || ok;
});

// noFullWidthStr, 汉字和全角字符的判断
jQuery.validator.addMethod("noFullWidthStr", function(value, element){
	return this.optional(element) || value.noFullWidthStr();
}, "请输入非汉字和全角的字符串");

//double 格式的验证
jQuery.validator.addMethod("isDouble", function(value, element,param){
	var reg = /^\d{1,12}(\.\d{1,3})?$/; 
	value=value.trim(); 
	return this.optional(element) ||reg.test(value); 
}, "请输入正确的格式: 12整数 3位小数 的数字");

//score
jQuery.validator.addMethod("isScore", function(value, element,param){
	var reg = /^\d{1,10}(\.\d{1,2})?$/; 
	value=value.trim(); 
	return this.optional(element) ||reg.test(value); 
}, "请输入正确的格式: 10整数 2位小数 的数字");


//integer, 正整数的判断
jQuery.validator.addMethod("integer", function(value, element){
	return this.optional(element) || value.integer();
}, "请输入正整数");

jQuery.validator.addMethod("customNumber", function(value, element,param){
	var p =  eval(param) 
	var i = p[0];
	var x = p[1]; 
	var reg = new RegExp("^\\d{1,"+i+"}(\\.\\d{1,"+x+"})?$")
	value=value.trim(); 
	return this.optional(element) ||reg.test(value); 
}, "请输入正确的格式: {0}整数 {1}位小数 的数字");




