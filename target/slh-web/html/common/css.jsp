<style type="text/css"> 
*{margin:0;padding:0;font-size:9pt;font-family:arial;}
body{/*_display:inline;*/width:100%;height:100%;_overflow-x:hidden}
body,td,table{}
.ui-slogan{height:25px;/*background:url(${ctx}/ui/img/biz/slogan.jpg) repeat-x;*/}
.ui-slogan img{position:absolute;margin:0 0 0 -20px;}
table.ui-state-hover{border-width:1px;border-style:solid;border-collapse:collapse;}
table.ui-state-hover td{line-height:25px;}
table.ui-state-hover thead td{/*border-bottom-width:1px;border-bottom-style:solid;*/text-align:center}
table.ui-state-hover tbody td{border:1px solid #ccc;text-align:center}
tr.odd{background:#f1f2ff}
form{margin:0;padding:0;display:block}
label{display:inline;font-weight:bold;text-align:right;}
label[class="error"]{display:inline;font-weight:bold;text-align:right;color: red;}
input{width:;height:;line-height:;}
h1{font-size:16pt}
h2{font-size:14pt}
h3{font-size:12pt}
h4{font-size:10pt} 
h5{font-size:9pt}

a{text-decoration:underline}
button,a{cursor:pointer;}
button .ui-icon,
a .ui-icon{float:left;}
button .ui-inputHead_t,
a .ui-inputHead_t{float:left;*margin:3px 0 0 3px;clear:right;}

.x1{width:33%}
.x2{width:66%}
.x3{width:100%}
.x0d5{width:49.9%}
.x5{width:50px}
.x6{width:60px}
.x7{width:70px}
.x8{width:80px}
.x10{width:100px}
.x11{width:110px}
.x12{width:120px}
.x13{width:130px}
.x14{width:140px}
.x15{width:150px}
.x16{width:160px}
.x18{width:180px}
.x20{width:200px}
.x25{width:250px}
.x27{width:274px}
.x30{width:300px}
.l{float:left;}
.ll{float:left; margin:7px 0 0 0;}
.hr{border:0;margin:2px 0;display:block;border-top-width:1px;border-top-style:none;border-top-color:#999;}
.dotted{border-top-style:dotted}
.outset{border-top-style:outset}
.inset{border-top-style:inset}
.solid{border-top-style:solid}
.c{clear:both;font-size:0;line-height:0;height:0;}
.g{color:#999;}

.ui-logic{margin:0;padding:1px 1px 0;/*border:1px solid #333*/}
/*.ui-logic{margin:0;padding:10px 10px 0;/*border:1px solid #333/}*/
.ui-space{position:relative;}
.ui-container{margin:0 0 0 0;/*border:1px solid #0c3*/}
.ui-container td .ix{position:relative;top:0;bottom:0;height:auto;}
.ui-container td .x{position:relative;top:3px;line-height:0;}
.ui-column{/*border:1px solid #c30*/}/*column*/ 
.ui-field{margin:0 0 10px;/*border:1px solid #03c;*/}/*panel*/

/*enable disable panel background*/
.ui-field .ui-widget-overlay{z-index:10;left:auto;top:auto;*margin:0 0 0 -20px;}
.ui-column .ui-field .ui-widget-overlay{*margin:0; z-index:999;}
.fullscreen{overflow:auto}
.ui-inputHead{padding:5px;}
.ui-inputBody{width:100%;*width:;}
.ui-inputHead span{}
.ui-inputHead .ui-icon{position:relative;float:left} 
.ui-inputHead .ui-inputHead_t{clear:right}
.ui-inputCon{margin:0 20px; overflow: hidden;}
.ui-inputBtn{padding:10px 0;}
.ui-inputBtn button{margin:0 5px;height:28px;}
.ui-inputBtn button[disabled]{filter: Alpha(opacity=70);-moz-opacity:.7;opacity:0.7;cursor:default;color:#999;}
.ui-inputBtn button .ui-icon{margin:-1px 0 0;*margin:1px 0 0}
.ui-inputBtn button .ui-inputHead_t{margin:-2px 0 0;*margin:2px 0 0;font-size:10pt}
 
.ui-inputIn{position:relative;float:left; padding:0 5px 0 0} 
.ui-inputIn .l{position:relative;margin:6px 0 0;*margin:3px 0 0;text-align:100%; width:95px; overflow:hidden; text-overflow:ellipsis ; white-space:nowrap;}
.ui-inputIn .ui-state-error-text{position:absolute;top:2px;right:14px;width:16px;height:16px;overflow:hidden;}
.ui-inputIn .ui-state-error-text .ui-icon-star{margin:-1px 0 0 0;}
.ui-inputIn label.error{position:absolute;color:red;}
.ui-inputInWidth{margin:5px 30px 0 100px;} 
.ui-inputInWidth .fake{width:100%;height:100%;overflow:hidden;}
.ui-inputInWidth .fake .ui-state-default{position:absolute;right:30px;margin:-19px 0 0;*margin:-20px 0 0;cursor:pointer;}

.ui-inputInWidth input[type="text"]{display:block;font-size:10pt;}
.ui-inputInWidth input[type="password"]{display:block;font-size:10pt;}
.ui-inputInWidth input[type="textarea"]{display:block;font-size:10pt;}
.ui-inputInWidth textarea{display:block;font-size:10pt;ext-decoration:none;}
.ui-inputInWidth .fake a{display:block;font-size:10pt;text-decoration:none;} 
.ui-inputInWidth select{display:block;font-size:10pt;text-decoration:none;}
.ui-inputInWidth .fake a{height:18px;*margin:1px 0;_margin:2px 0 1px;overflow:hidden;text-overflow:ellipse;white-space:nowrap;}

.ui-inputInWidth input{height:18px;_height:19px;}
.ui-inputInWidth input[type="file"]{height:19px;*height:19px;}
.ui-inputInWidth select{height:19px;*height:21px;}

.ui-inputInWidth input{border:0;background:transparent url(${ctxPath}/html/common/img/blank.gif);border:1px solid #d6d6d6;background: #fafafa;}
.ui-inputInWidth textarea{border:0;background:transparent url(${ctxPath}/html/common/img/blank.gif);border:1px solid #d6d6d6;background: #fafafa;}
.ui-inputInWidth .fake a{border:0;background:transparent url(${ctxPath}/html/common/img/blank.gif);border:1px solid #d6d6d6;background: #fafafa;}
.ui-inputInWidth select{border:0;background:transparent url(${ctxPath}/html/common/img/blank.gif);border:1px solid #d6d6d6;background: #fafafa;}
.ui-inputInWidth input[readonly]{color:black;background:#F1F1F1;} 
.ui-inputInWidth input[disabled]{background:#F1F1F1;}

.ui-inputInWidth input.error{background:#fee;border-bottom:1px dotted red;}
.ui-inputInWidth .fake a.error{background:#fee;border-bottom:1px dotted red;}
.ui-inputInWidth select.error {background:#fee;border-bottom:1px dotted red;}
.ui-inputInWidth ul.error{background:#fee;border-bottom:1px dotted red;} 

.ui-inputInWidth .x{position:absolute;top:9px;right:28px;*width:20px;*height:20px;}
.ui-inputInWidth .x input,
.ui-inputInWidth .x select{border-bottom:0;} 
   

body .ui-logic .ui-inputInWidth .radio{display:inline!important;background:none!important;border:0!important;width:auto;height:auto;}

.pageSlider{font-size:9pt;border:1px dotted #999;padding:0 0 0 10px;border-top:0}
.pageSlider .fc{clear:both;height:0;line-height:0;font-size:0;}
.pageSlider .fl{float:left;}
.pageSlider .g{height:30px;line-height:30px;color:#999;white-space:nowrap;padding:0 10px 0 0;text-align:left}

.pageSlider .bd{height:20px;/*border:1px solid #8ac;border-top:1px solid #accbff;border-left:1px solid #accbff;background:#c3d9ff;*/}
.pageSlider .bd .first{/**background:url(../../images/top/components.gif) -20px -45px;**/}
.pageSlider .bd .prev{/**background:url(../../images/top/components.gif) -40px -45px;**/}
.pageSlider .bd .next{/**background:url(../../images/top/components.gif) -60px -45px;**/}
.pageSlider .bd .last{/**background:url(../../images/top/components.gif) -80px -45px;**/}
.pageSlider .bd button{margin:4px 2px 0;line-height:20px;height:20px;text-align:center;text-decoration:none;/*color:#666;*/}
.pageSlider .bd button span{width:18px;height:18px;}
.pageSlider .bd button:hover{/*background-color:#e0ecff;*/}

.pageSlider .page{width:auto;height:30px;}
.pageSlider .page button{margin:4px 2px 0;padding:0 4px;height:20px;line-height:20px;*line-height:18px;text-align:center;/*text-decoration:none;border:1px solid #8ac;border-top:1px solid #accbff;border-left:1px solid #accbff;background:#c3d9ff;color:#666;*/}
.pageSlider .page button:hover{/*color:#333;background:#e0ecff;*/}
.pageSlider .page b{font-size:10pt;padding:0 4px;color:#000;}

.pageSlider .end{width:140px;white-space:nowrap;}
.pageSlider .end input{display:inline;padding:0 0 0 1px;width:30px;margin-top:4px;}
.pageSlider .end .fl{}
.pageSlider .end .bd button{line-height:20px;}
/*=====================================================*/
/*                  drop down filter list              */
/*=====================================================*/
.dropdwon{background:#faebaf; border:1px solid #c2ad59; z-index:9999;}
.dropdwon p{display:block; margin:1px; text-decoration:none; color:#333; padding:1px; height:15px; text-align:left; pointer:cursor;}

.ui-sel-address{border:0;background-image: url("${ctxPath}/html/common/img/search.gif");
}



.ui-inputInWidth textarea{
	width:93%  
}

.ui-autocomplete {
    cursor: default;
    left: 0;
    position: absolute; 
    top: 0; 
    max-height:200px; 
    max-width:300px; 
    overflow:auto;
  
}	 


.ui-menu .ui-menu-item {
    margin: 0;
    padding: 0;
    width: 100%;
    white-space:nowrap;
}

 /*custom */
 
 
  /*custom   custom-combobox*/
.custom-combobox{
}   
 
 

 .custom-combobox .showbtn{ 
	margin-left: -1px;
    padding: 0; 
    position: absolute;
   // position: relative;
    height:20px;
} 

.gridButtonbg{
     background: url(${ctxPath}/html/js/common/img/gridbuttonbg.jpg) repeat; 
     cursor: pointer;
     padding-bottom:2px; 
     padding-top:2px;
     border-radius:5px 5px 5px 5px;
}

.submitButtonBg{
     background: url(${ctxPath}/html/js/common/img/tijiao.jpg) repeat;
     cursor: pointer;
} 

.excelLine{
     background: url(${ctxPath}/html/js/common/img/xiexian.gif)  repeat;
}

.aLink{
    cursor: pointer;
} 



 /*checkbox */

.suicheckboxul {
	 display:inline-block; _zoom:1;*display:inline; 
	text-align: left;
	width: 100%;
}

.suicheckboxli {
	 display:inline-block; _zoom:1;*display:inline;  
	float: left;
	margin-left: 10px;
	margin-right: 30px;
} 

.suicheckbox {
	margin-top: 0px;
	vertical-align: middle;
}

.suicheckboxspan {
	margin-top: 0px;
	width: 61px;
}
 /*checkbox */




:after, :before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
.row * {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
.row {
	margin: 0;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
	position: relative;
	min-height: 1px;
	padding:10px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
	float: left;
}
.col-xs-12 {
	width: 100%;
}
.col-xs-11 {
	width: 91.66666667%;
}
.col-xs-10 {
	width: 83.33333333%;
}
.col-xs-9 {
	width: 75%;
}
.col-xs-8 {
	width: 66.66666667%;
}
.col-xs-7 {
	width: 58.33333333%;
}
.col-xs-6 {
	width: 50%;
}
.col-xs-5 {
	width: 41.66666667%;
}
.col-xs-4 {
	width: 33.33333333%;
}
.col-xs-3 {
	width: 25%;
}
.col-xs-2 {
	width: 16.66666667%;
}
.col-xs-1 {
	width: 8.33333333%;
}
.col-xs-pull-12 {
	right: 100%;
}
.col-xs-pull-11 {
	right: 91.66666667%;
}
.col-xs-pull-10 {
	right: 83.33333333%;
}
.col-xs-pull-9 {
	right: 75%;
}
.col-xs-pull-8 {
	right: 66.66666667%;
}
.col-xs-pull-7 {
	right: 58.33333333%;
}
.col-xs-pull-6 {
	right: 50%;
}
.col-xs-pull-5 {
	right: 41.66666667%;
}
.col-xs-pull-4 {
	right: 33.33333333%;
}
.col-xs-pull-3 {
	right: 25%;
}
.col-xs-pull-2 {
	right: 16.66666667%;
}
.col-xs-pull-1 {
	right: 8.33333333%;
}
.col-xs-pull-0 {
	right: auto;
}
.col-xs-push-12 {
	left: 100%;
}
.col-xs-push-11 {
	left: 91.66666667%;
}
.col-xs-push-10 {
	left: 83.33333333%;
}
.col-xs-push-9 {
	left: 75%;
}
.col-xs-push-8 {
	left: 66.66666667%;
}
.col-xs-push-7 {
	left: 58.33333333%;
}
.col-xs-push-6 {
	left: 50%;
}
.col-xs-push-5 {
	left: 41.66666667%;
}
.col-xs-push-4 {
	left: 33.33333333%;
}
.col-xs-push-3 {
	left: 25%;
}
.col-xs-push-2 {
	left: 16.66666667%;
}
.col-xs-push-1 {
	left: 8.33333333%;
}
.col-xs-push-0 {
	left: auto;
}
.col-xs-offset-12 {
	margin-left: 100%;
}
.col-xs-offset-11 {
	margin-left: 91.66666667%;
}
.col-xs-offset-10 {
	margin-left: 83.33333333%;
}
.col-xs-offset-9 {
	margin-left: 75%;
}
.col-xs-offset-8 {
	margin-left: 66.66666667%;
}
.col-xs-offset-7 {
	margin-left: 58.33333333%;
}
.col-xs-offset-6 {
	margin-left: 50%;
}
.col-xs-offset-5 {
	margin-left: 41.66666667%;
}
.col-xs-offset-4 {
	margin-left: 33.33333333%;
}
.col-xs-offset-3 {
	margin-left: 25%;
}
.col-xs-offset-2 {
	margin-left: 16.66666667%;
}
.col-xs-offset-1 {
	margin-left: 8.33333333%;
}
.col-xs-offset-0 {
	margin-left: 0;
}
@media (min-width: 768px) {
	.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
		float: left;
	}
	.col-sm-12 {
		width: 100%;
	}
	.col-sm-11 {
		width: 91.66666667%;
	}
	.col-sm-10 {
		width: 83.33333333%;
	}
	.col-sm-9 {
		width: 75%;
	}
	.col-sm-8 {
		width: 66.66666667%;
	}
	.col-sm-7 {
		width: 58.33333333%;
	}
	.col-sm-6 {
		width: 50%;
	}
	.col-sm-5 {
		width: 41.66666667%;
	}
	.col-sm-4 {
		width: 33.33333333%;
	}
	.col-sm-3 {
		width: 25%;
	}
	.col-sm-2 {
		width: 16.66666667%;
	}
	.col-sm-1 {
		width: 8.33333333%;
	}
	.col-sm-pull-12 {
		right: 100%;
	}
	.col-sm-pull-11 {
		right: 91.66666667%;
	}
	.col-sm-pull-10 {
		right: 83.33333333%;
	}
	.col-sm-pull-9 {
		right: 75%;
	}
	.col-sm-pull-8 {
		right: 66.66666667%;
	}
	.col-sm-pull-7 {
		right: 58.33333333%;
	}
	.col-sm-pull-6 {
		right: 50%;
	}
	.col-sm-pull-5 {
		right: 41.66666667%;
	}
	.col-sm-pull-4 {
		right: 33.33333333%;
	}
	.col-sm-pull-3 {
		right: 25%;
	}
	.col-sm-pull-2 {
		right: 16.66666667%;
	}
	.col-sm-pull-1 {
		right: 8.33333333%;
	}
	.col-sm-pull-0 {
		right: auto;
	}
	.col-sm-push-12 {
		left: 100%;
	}
	.col-sm-push-11 {
		left: 91.66666667%;
	}
	.col-sm-push-10 {
		left: 83.33333333%;
	}
	.col-sm-push-9 {
		left: 75%;
	}
	.col-sm-push-8 {
		left: 66.66666667%;
	}
	.col-sm-push-7 {
		left: 58.33333333%;
	}
	.col-sm-push-6 {
		left: 50%;
	}
	.col-sm-push-5 {
		left: 41.66666667%;
	}
	.col-sm-push-4 {
		left: 33.33333333%;
	}
	.col-sm-push-3 {
		left: 25%;
	}
	.col-sm-push-2 {
		left: 16.66666667%;
	}
	.col-sm-push-1 {
		left: 8.33333333%;
	}
	.col-sm-push-0 {
		left: auto;
	}
	.col-sm-offset-12 {
		margin-left: 100%;
	}
	.col-sm-offset-11 {
		margin-left: 91.66666667%;
	}
	.col-sm-offset-10 {
		margin-left: 83.33333333%;
	}
	.col-sm-offset-9 {
		margin-left: 75%;
	}
	.col-sm-offset-8 {
		margin-left: 66.66666667%;
	}
	.col-sm-offset-7 {
		margin-left: 58.33333333%;
	}
	.col-sm-offset-6 {
		margin-left: 50%;
	}
	.col-sm-offset-5 {
		margin-left: 41.66666667%;
	}
	.col-sm-offset-4 {
		margin-left: 33.33333333%;
	}
	.col-sm-offset-3 {
		margin-left: 25%;
	}
	.col-sm-offset-2 {
		margin-left: 16.66666667%;
	}
	.col-sm-offset-1 {
		margin-left: 8.33333333%;
	}
	.col-sm-offset-0 {
		margin-left: 0;
	}
}
@media (min-width: 992px) {
	.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
		float: left;
	}
	.col-md-12 {
		width: 100%;
	}
	.col-md-11 {
		width: 91.66666667%;
	}
	.col-md-10 {
		width: 83.33333333%;
	}
	.col-md-9 {
		width: 75%;
	}
	.col-md-8 {
		width: 66.66666667%;
	}
	.col-md-7 {
		width: 58.33333333%;
	}
	.col-md-6 {
		width: 50%;
	}
	.col-md-5 {
		width: 41.66666667%;
	}
	.col-md-4 {
		width: 33.33333333%;
	}
	.col-md-3 {
		width: 25%;
	}
	.col-md-2 {
		width: 16.66666667%;
	}
	.col-md-1 {
		width: 8.33333333%;
	}
	.col-md-pull-12 {
		right: 100%;
	}
	.col-md-pull-11 {
		right: 91.66666667%;
	}
	.col-md-pull-10 {
		right: 83.33333333%;
	}
	.col-md-pull-9 {
		right: 75%;
	}
	.col-md-pull-8 {
		right: 66.66666667%;
	}
	.col-md-pull-7 {
		right: 58.33333333%;
	}
	.col-md-pull-6 {
		right: 50%;
	}
	.col-md-pull-5 {
		right: 41.66666667%;
	}
	.col-md-pull-4 {
		right: 33.33333333%;
	}
	.col-md-pull-3 {
		right: 25%;
	}
	.col-md-pull-2 {
		right: 16.66666667%;
	}
	.col-md-pull-1 {
		right: 8.33333333%;
	}
	.col-md-pull-0 {
		right: auto;
	}
	.col-md-push-12 {
		left: 100%;
	}
	.col-md-push-11 {
		left: 91.66666667%;
	}
	.col-md-push-10 {
		left: 83.33333333%;
	}
	.col-md-push-9 {
		left: 75%;
	}
	.col-md-push-8 {
		left: 66.66666667%;
	}
	.col-md-push-7 {
		left: 58.33333333%;
	}
	.col-md-push-6 {
		left: 50%;
	}
	.col-md-push-5 {
		left: 41.66666667%;
	}
	.col-md-push-4 {
		left: 33.33333333%;
	}
	.col-md-push-3 {
		left: 25%;
	}
	.col-md-push-2 {
		left: 16.66666667%;
	}
	.col-md-push-1 {
		left: 8.33333333%;
	}
	.col-md-push-0 {
		left: auto;
	}
	.col-md-offset-12 {
		margin-left: 100%;
	}
	.col-md-offset-11 {
		margin-left: 91.66666667%;
	}
	.col-md-offset-10 {
		margin-left: 83.33333333%;
	}
	.col-md-offset-9 {
		margin-left: 75%;
	}
	.col-md-offset-8 {
		margin-left: 66.66666667%;
	}
	.col-md-offset-7 {
		margin-left: 58.33333333%;
	}
	.col-md-offset-6 {
		margin-left: 50%;
	}
	.col-md-offset-5 {
		margin-left: 41.66666667%;
	}
	.col-md-offset-4 {
		margin-left: 33.33333333%;
	}
	.col-md-offset-3 {
		margin-left: 25%;
	}
	.col-md-offset-2 {
		margin-left: 16.66666667%;
	}
	.col-md-offset-1 {
		margin-left: 8.33333333%;
	}
	.col-md-offset-0 {
		margin-left: 0;
	}
}
@media (min-width: 1200px) {
	.col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
		float: left;
	}
	.col-lg-12 {
		width: 100%;
	}
	.col-lg-11 {
		width: 91.66666667%;
	}
	.col-lg-10 {
		width: 83.33333333%;
	}
	.col-lg-9 {
		width: 75%;
	}
	.col-lg-8 {
		width: 66.66666667%;
	}
	.col-lg-7 {
		width: 58.33333333%;
	}
	.col-lg-6 {
		width: 50%;
	}
	.col-lg-5 {
		width: 41.66666667%;
	}
	.col-lg-4 {
		width: 33.33333333%;
	}
	.col-lg-3 {
		width: 25%;
	}
	.col-lg-2 {
		width: 16.66666667%;
	}
	.col-lg-1 {
		width: 8.33333333%;
	}
	.col-lg-pull-12 {
		right: 100%;
	}
	.col-lg-pull-11 {
		right: 91.66666667%;
	}
	.col-lg-pull-10 {
		right: 83.33333333%;
	}
	.col-lg-pull-9 {
		right: 75%;
	}
	.col-lg-pull-8 {
		right: 66.66666667%;
	}
	.col-lg-pull-7 {
		right: 58.33333333%;
	}
	.col-lg-pull-6 {
		right: 50%;
	}
	.col-lg-pull-5 {
		right: 41.66666667%;
	}
	.col-lg-pull-4 {
		right: 33.33333333%;
	}
	.col-lg-pull-3 {
		right: 25%;
	}
	.col-lg-pull-2 {
		right: 16.66666667%;
	}
	.col-lg-pull-1 {
		right: 8.33333333%;
	}
	.col-lg-pull-0 {
		right: auto;
	}
	.col-lg-push-12 {
		left: 100%;
	}
	.col-lg-push-11 {
		left: 91.66666667%;
	}
	.col-lg-push-10 {
		left: 83.33333333%;
	}
	.col-lg-push-9 {
		left: 75%;
	}
	.col-lg-push-8 {
		left: 66.66666667%;
	}
	.col-lg-push-7 {
		left: 58.33333333%;
	}
	.col-lg-push-6 {
		left: 50%;
	}
	.col-lg-push-5 {
		left: 41.66666667%;
	}
	.col-lg-push-4 {
		left: 33.33333333%;
	}
	.col-lg-push-3 {
		left: 25%;
	}
	.col-lg-push-2 {
		left: 16.66666667%;
	}
	.col-lg-push-1 {
		left: 8.33333333%;
	}
	.col-lg-push-0 {
		left: auto;
	}
	.col-lg-offset-12 {
		margin-left: 100%;
	}
	.col-lg-offset-11 {
		margin-left: 91.66666667%;
	}
	.col-lg-offset-10 {
		margin-left: 83.33333333%;
	}
	.col-lg-offset-9 {
		margin-left: 75%;
	}
	.col-lg-offset-8 {
		margin-left: 66.66666667%;
	}
	.col-lg-offset-7 {
		margin-left: 58.33333333%;
	}
	.col-lg-offset-6 {
		margin-left: 50%;
	}
	.col-lg-offset-5 {
		margin-left: 41.66666667%;
	}
	.col-lg-offset-4 {
		margin-left: 33.33333333%;
	}
	.col-lg-offset-3 {
		margin-left: 25%;
	}
	.col-lg-offset-2 {
		margin-left: 16.66666667%;
	}
	.col-lg-offset-1 {
		margin-left: 8.33333333%;
	}
	.col-lg-offset-0 {
		margin-left: 0;
	}
}
.textl {
		text-align:left; 
	}
</style>