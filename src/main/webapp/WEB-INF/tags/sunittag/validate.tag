<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- form的js检验插件, 基于  jQuery Validation Plugin 1.8.1 --%>

<%@ attribute name="onclick" type="java.lang.String" required="true"%>  <%--  提交方法的名字,这个方法会自动生成 --%>
<%@ attribute name="formId" type="java.lang.String" required="false"%> <%--  要校验的formid --%>
<%@ attribute name="callback" type="java.lang.String" required="false"%> <%--  校验成功后的 回调方法 --%>
<%@ attribute name="group" type="java.lang.String" required="false"%>   <%--   回调方法执行前的拦截方法,返回false即阻止回调方法的执行,现在的实践中很少用到 --%>
<%@ attribute name="ignore" type="java.lang.String" required="false"%> <%--  不加入校验的元素 args:必须是一个jquery 选择器 例: [disabled] --%>

<script type="text/javascript">
	$.validator.prototype.elements =
	function() {
			var validator = this,
				rulesCache = {};
			// select all valid inputs inside the form (no submit or reset buttons)
			var els= $(this.currentForm) 
			.find("input, select, textarea")
			.not(":submit, :reset, :file, :image, [disabled]")
			.not( this.settings.ignore+"" )
			.filter(function() { 
				DWZ.debug(this.name)
				DWZ.debug (validator.settings.ignore) 
				!this.name && validator.settings.debug && window.console && console.error( "%o has no name assigned", this);
				// select only the first element for each name, and only those with rules specified
				
				if($(this).attr('validateforsamename'))
					return true;
				
				if ( this.name in rulesCache || !validator.objectLength($(this).rules())){
					return false;
				}
				rulesCache[this.name] = true;
				return true;
			});
			DWZ.debug(els)
			return els ; 
		} 
	
	

	var ${formId}rule = {};
	var ${formId}Message = {};
	
	$(function(){
		function fillRule(){   
			$("#${formId}").find("[name]").each(function(){
				var jn=$(this).attr("name");
				if(!${formId}rule[jn]){
					${formId}rule[jn] = {};
				}
				if(!${formId}Message[jn]){
					${formId}Message[jn] = {};
				}
				
				/*
				* 下面开始配置各个验证属性
				*/
				
				if($(this).attr("required"))
					${formId}rule[jn].required = true;
				
				var p = $(this).parents('.ui-inputInWidth'); 
				if(p.attr("class")=="ui-inputInWidth" || 1==1){ 
					if(!$(this).attr("illegal")) 
						${formId}rule[jn].illegal = true;
					/**
					* required
					*/  
					if(p.parent().find(".requiredStar").length>0 )
						${formId}rule[jn].required = true;
					
					/**  
					* equalTo 
					*/	 
					if($(this).attr("equalTo"))
						${formId}rule[jn].equalTo = $(this).attr("equalTo"); 
						
					/**  
					* remote 
					*/	 
					if($(this).attr("remote")){ 
						${formId}rule[jn].remote = $(this).attr("remote"); 
						${formId}Message[jn].remote=  $(this).attr("remoteMessage"); 
					}
	
						
					/**
					* maxlength
					*/
					if($(this).attr("maxlength") && $(this).attr("maxlength")!="-1")
						${formId}rule[jn].maxlength = Number($(this).attr("maxlength"));
					/**
					* minlength
					*/
					if($(this).attr("minlength"))
						${formId}rule[jn].minlength = Number($(this).attr("minlength"));
					/**
					* rangelength
					*/
					if($(this).attr("rangelength"))
						${formId}rule[jn].rangelength = (eval("["+$(this).attr("rangelength")+"]"));
					/**
					* max
					*/
					if($(this).attr("max"))
						${formId}rule[jn].max = Number($(this).attr("max"));
					/**
					* min
					*/
					if($(this).attr("min"))
						${formId}rule[jn].min = Number($(this).attr("min"));
					/**
					* range
					*/
					if($(this).attr("range"))
						${formId}rule[jn].range = (eval("["+$(this).attr("range")+"]"));
					/**
					* email
					*/
					if($(this).attr("email") == "true")
						${formId}rule[jn].email = true;
					/**
					* number
					*/
					if($(this).attr("datatype") == "number")
						${formId}rule[jn].number = true;
					/**
					* digits
					*/
					if($(this).attr("datatype") == "digits")
						${formId}rule[jn].digits = true;
					/**
					* integer
					*/
					if($(this).attr("datatype") == "integer")
						${formId}rule[jn].integer = true;
						
					/**
					* 数字与字母
					*/
					if($(this).attr("digitLetter") == "true")
						${formId}rule[jn].digitLetter = true;
						
					/**
					* id card
					*/
					if($(this).attr("idCard") == "true")
						${formId}rule[jn].idCard = true;
					/**
					* mobile 
					*/
					if($(this).attr("mobile") == "true")
						${formId}rule[jn].mobile = true;
					/**
					* phone
					*/
					if($(this).attr("phone") == "true")
						${formId}rule[jn].phone = true;
	        		/**
					* postCode
					*/
					if($(this).attr("isPostCode") == "true")
						${formId}rule[jn].isPostCode = true;					
					/**
					* coordinate calendar
					*/
					if($(this).attr("next") == "true")
						${formId}rule[jn].next = true;
					/**
					* stringMinLength
					*/
					if($(this).attr("stringMinLength") && $(this).attr("stringMinLength")!="-1")
						${formId}rule[jn].stringMinLength = Number($(this).attr("stringMinLength"));
					/**
					* stringMaxLength
					*/
					if($(this).attr("stringMaxLength") && $(this).attr("stringMaxLength")!="-1")
						${formId}rule[jn].stringMaxLength = Number($(this).attr("stringMaxLength"));
					/**
					* string
					*/
					if($(this).attr("string") == "true")
						${formId}rule[jn].string = true;
					/**
					* byteRangeLength
					*/
					if($(this).attr("byteRangeLength"))
						${formId}rule[jn].byteRangeLength = (eval("["+$(this).attr("byteRangeLength")+"]"));
					/**
					* stringCH
					*/
					if($(this).attr("stringCH") == "true")
						${formId}rule[jn].stringCH = true;
					/**
					* stringEN
					*/
					if($(this).attr("stringEN") == "true")
						${formId}rule[jn].stringEN = true;
						
					if($(this).attr("mixPhone") == "true")
						${formId}rule[jn].mixPhone = true;
	
					if($(this).attr("noFullWidthStr") == "true")
						${formId}rule[jn].noFullWidthStr = true;
					
					/**
					* simplePassword
					*/
					if($(this).attr("simplePassword") == "true")
						${formId}rule[jn].simplePassword = true;
						
					var sametextObj = $(this).attr("sametext");
					if(sametextObj && (sametextObj.length>0)){					                  
	                	var attrvs = sametextObj.split(";",2);
	                	${formId}rule[jn].sametext = attrvs[0];
	       			}
	       			
	      			if($(this).attr("fixlength")) 
						${formId}rule[jn].length = Number($(this).attr("fixlength"));
						
					if($(this).attr("isScore"))
						${formId}rule[jn].isScore = true; 
						
					if($(this).attr("isDouble")) 
						${formId}rule[jn].isDouble = true; 
						
					
					/**
					 * more比较, 比较当前元素与目标id元素, 大于为true, :param要求是jquery的钩子,如#id或 div #haha,用;分开后面的提示
					 * 用法:
					 * <input type="text" format='yyyy-MM-dd HH:mm:ss' required="true" class="datePicker"
					 *			name='endTime' id='endTime' calendar=1 readonly="true"
					 *			more="[$('#startTime'),'计划结束时间','计划开始时间']" />
					 *  当出现本值比$(#id_beginno)小时,无提示
					    当出现本值比$(#id_beginno)大时,提示 计划开始时间大于计划结束时间
					 * 
					 */
					/**
					var moreObj = $(this).attr("more");
					
					
					if(moreObj && (moreObj.length>0)){					                  
	                	var attrvs = moreObj.split(";",2);
	                	${formId}rule[jn].more = attrvs[0];
	                	$.validator.messages["more"]=attrvs.length>1?attrvs[1]:"此值要比另一个值大";
					}*/
					
					if($(this).attr("more")){
							${formId}rule[jn].more= (eval($(this).attr("more")));   
					}
					
					if($(this).attr("customNumber")){ 
						${formId}rule[jn].customNumber= (eval($(this).attr("customNumber")));   
					}
					
					
					
					
					/**
					 * samelen  长度要一样
					 */
					var samelenObj = $(this).attr("samelen");
					if(samelenObj && (samelenObj.length>0)){					                  
	                	var attrvs = samelenObj.split(";",2);
	                	${formId}rule[jn].samelen = attrvs[0];
	                	$.validator.messages["samelen"]=attrvs.length>1?attrvs[1]:"两值的长度要一样";
					}
				}
		});
		}; 
		
		fillRule();
		
		
		/**定义验证器**/
		${formId}validator = $("#${formId}").validate({
			debug : true, 
			ignoreTitle : true,  
			messages :${formId}Message, 
			//autoCreateRanges:true, 
			rules : ${formId}rule, 
			onkeyup:false, 
			ignore:["${ignore}"] ,
			showErrors:function(element, errormap,errorlist){   
			for ( var i = 0; this.errorList[i]; i++ ) { 
				var error = this.errorList[i];
				DWZ.debug ('showErrors2')
				DWZ.debug(error)
				this.settings.highlight && this.settings.highlight.call( this, error.element, this.settings.errorClass, this.settings.validClass );
				$(error.element).attr('title',error.message); 
				if( $('#'+$(error.element).attr('comboid')).length>0){
						var comboel= $('#'+$(error.element).attr('comboid'))[0]; 
						this.settings.highlight && this.settings.highlight.call( this, comboel, this.settings.errorClass, this.settings.validClass );
					  	$(comboel).attr('title',error.message); 
					}
				if( $(error.element).attr('type')=='checkbox' || $(error.element).attr('type')=='radio' ){  
						var $el= $(error.element);  
						var $ul =$el.parents('ul');    
						this.settings.highlight && this.settings.highlight.call( this, $ul, this.settings.errorClass, this.settings.validClass );
					  	$ul.attr('title',error.message);  
					}	
					 
			} 
			
			if( this.errorList.length ) {
				this.toShow = this.toShow.add( this.containers );
			}
			if (this.settings.success) {
				for ( var i = 0; this.successList[i]; i++ ) {
					this.showLabel( this.successList[i] );
				}
			}
			if (this.settings.unhighlight) { 
				for ( var i = 0, elements = this.validElements(); elements[i]; i++ ) { 
					$el= $(elements[i]) ; 
					if( $el.attr('type')=='checkbox' || $el.attr('type')=='radio' ){ 
						$el= $(elements[i]) ; 
						var $ul =$el.parents('ul');    
						this.settings.unhighlight.call( this, $ul, this.settings.errorClass, this.settings.validClass );
					  	$ul.removeAttr('title'); 
					}	 
					
					
					this.settings.unhighlight.call( this, elements[i], this.settings.errorClass, this.settings.validClass );
					DWZ.debug(elements[i]) 
					$(elements[i]).removeAttr('title');
					
					
					
				}
			}
			this.toHide = this.toHide.not( this.toShow );
			this.hideErrors();
			this.addWrapper( this.toShow ).show();
			} 
		});   
		/*
		* overwrite submit
		*/
		/**$("#${formId}")[0].onsubmit=function(){ 
			alert('overwrite submit')
			if(${formId}validator.form()){
				<c:forEach items="${fn:split(group,',')}" var="d" begin="0">
					<c:if test="${!empty d}">
						if(${d}()==false){
							return false;
						}
					</c:if>
				</c:forEach> 
				<c:if test="${!empty callback}">
						return false;
				</c:if> 
			}else{
				return false;
			} 
		};
		*/
		//定义onclick时调用的方法
		${onclick}=function(){
			//rules  messages
			fillRule(); 
		 	${formId}validator.settings.rules=${formId}rule;
		 	${formId}validator.settings.messages=${formId}Message; 
		 	
			if(${formId}validator.form()){
				<c:forEach items="${fn:split(group,',')}" var="d" begin="0">
					<c:if test="${!empty d}">
						if(${d}()==false){
							return false;
						}
					</c:if>
				</c:forEach>
				<c:if test="${!empty callback}">
					${callback}(this);
					return true;
				</c:if>
				<c:if test="${empty callback}">
					$("#${formId}").trigger("submit");
					return true; 
				</c:if>
			}else{
				$.alert('请修正红框中的字段')
				return false;
			}
			return true;
		}
	});
</script>