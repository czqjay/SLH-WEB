<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html><head>
	<title>龙杰智慧SRM平台</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=11">
	<meta http-equiv="Cache-Control" content="no-transform">
	
	<% 
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	session.setAttribute("ctxPath", path);
%>
	 
	
	
	<script src="http://hcloud.hand-china.com/component/system/jDawn.js?v=1.04" type="text/javascript"></script>
	<link href="http://hcloud.hand-china.com/css/main/common-style.css?v=2.14" rel="stylesheet" type="text/css">
	<link href="http://hcloud.hand-china.com/css/overrideFrameComponent/grid-button-style.css?v=1.15" rel="stylesheet">
	<link href="http://hcloud.hand-china.com/component/Font-Awesome-3.2.1/css/font-awesome.min.css?v=2.13" rel="stylesheet">
</head>
<body style="visibility: visible;">
   
      
	
	
	
	
	
	
    
	
	<div class="hand-main-content" style="width:100%">
    	
<link href="http://hcloud.hand-china.com/component/system/jDawn.js?v=1.04/resource/aurora.ui.std/default/base/Aurora-all-min.css" rel="stylesheet" type="text/css"> 
<script src="http://hcloud.hand-china.com/component/system/jDawn.js?v=1.04/resource/aurora.ui.std/default/base/ext-core-min.js"></script>
<script src="http://hcloud.hand-china.com/component/system/jDawn.js?v=1.04/resource/aurora.ui.std/default/base/Aurora-all-min.js"></script>
<script src="http://hcloud.hand-china.com/component/system/jDawn.js?v=1.04/resource/aurora.ui.std/default/locale/aurora-lang-ZHS.js"></script>

<meta content="noarchive" name="robots">
<link type="text/css" rel="stylesheet" href="http://hcloud.hand-china.com/css/logincss/login.css?v=2.23"><script src="/javascripts/solveInputCompatibility.js?v=2.2"></script><script>

</script><script>
            
            
            function login() {
                //防止重复登录
              document.getElementById('bdfm').submit()  
							
            }
            
           
        
            
          
          
            
        
        </script><div class="top-bar-back" style="background-color: #323232;background-image:none;"><div class="top-bar-content"><div class="top-bar-left"><label>您好，欢迎来到龙杰智慧SRM平台！</label></div><div class="top-bar-right"><a target="_blank" href="/modules/fnd/FND9100/fnd_enterprise_register_statement.screen">注册</a><a target="_blank" href="https://hisms.hand-china.com">帮助中心</a></div></div></div><div class="login_header"><div class="header_container"><div class="header_left"><img class="cloud-logo" style="height: 50px;padding-top: 4px;" src="${ctxPath}/html/theme/images/logo.png"></div><div class="header_right"><a class="header_link login">首页</a><a class="header_link login" id="http://service。going-link.com" onclick="api_open(this)">服务中心</a><a class="header_link login" id="/aboutUs.screen" onclick="api_open(this)">关于我们</a></div></div></div><div class="container"><div class="play-ppt-con"><ul duration-time="100" class="hand-play-movie-con" type="Quartic" id="handPlayMovieId" name="handPlayMovie"><li style="overflow: hidden;"><img style="margin-left:auto;margin-right:auto;display: block;width:100%;height:350px;" src="http://hcloud.hand-china.com/images/login/banner3.png?v=1.4"></li></ul></div><div class="login-body"><div class="back_div"></div><div class="login_main_container" id="login_main_container_id"><div class="login_title"><p class="header_content" onselectstart="return false;">登录</p></div><div class="login-content"><form class="login-form" id="bdfm" name="bdfm" action="${ctxPath}/j_spring_security_check" method="post"><div><input placeholder="用户名 / 邮箱 / 手机" class="pcd_login_input_box_name" type="text" id="j_username" name="j_username">
  <input placeholder="密码" class="pcd_login_input_box_name" type="password" id="j_username" name="j_password"></div><div class="validation-code-con" id="validation_code_id" style="display:none;"><input placeholder="验证码" onkeydown="loginEnter(event);" onfocus="inputKeyFocus();" type="text" id="check_code" name="check_code"><img id="img_code" title="点击刷新验证码" onclick="refreshCode(this);" src="/imagecode?v=1"></div></form><div class="login-action-content" style="overflow: hidden;margin-top: 10px;"><p class="login_infor" id="login_error_infor"></p><div><input type="checkbox" id="if_remember_key" style="vertical-align:middle;height: 20px;" value="1"><label style="vertical-align:middle;margin-left:5px;">记住密码</label></div></div><button class="login_btn" onclick="login();">登录</button><div class="login_footer"><a style="float:left;display: block;" target="_blank" href="/forgotPassword.screen">忘记密码</a><a style="float: right;display: block;" target="_blank" href="/modules/fnd/FND9100/fnd_enterprise_register_statement.screen">注册账户</a></div></div></div></div></div><div class="div-bullhorn-bulletin"></div><div class="industry-part"><div class="industry-part-title">我们服务的行业</div><ul class="industry-list"><li class="industry-item fl"><div class="color-bar"><span class="left" style="background-color:#fb6b60;"></span><span class="right" style="background-color:#f2f2f2;"></span></div><ul class="item-content"><div class="industry-item-title">医疗</div><li>1 院企直连，打造合作天梯；</li><li>2 金融与医疗物流相结合，提升运营效率；</li><li>3 融资租赁大型医疗器械，解决资金瓶颈；</li></ul><div class="enter-or-more-link"><a></a><button onclick="register_onclick()">立即加入</button></div></li><li class="industry-item fr"><div class="color-bar"><span class="left" style="background-color:#4bcce1;"></span><span class="right" style="background-color:#f2f2f2;"></span></div><ul class="item-content"><div class="industry-item-title">工程机械</div><li>1 建立供应链“上下游”业务管理体系，省时省心；</li><li>2 实施精益生产管理，降低制形成本，效率至上；</li><li>3 提供“M+1+N”的融资方案，安全靠谱；</li></ul><div class="enter-or-more-link"><a></a><button onclick="register_onclick()">立即加入</button></div></li><li class="industry-item fl"><div class="color-bar"><span class="left" style="background-color:#efd24a;"></span><span class="right" style="background-color:#f2f2f2;"></span></div><ul class="item-content"><div class="industry-item-title">母婴</div><li>1 简单、专业、规范的O2O网络模式构建管理；</li><li>2 打通物流仓储渠道，打造独特价值品牌；</li><li>3 全新融资模式，走出企业困境；</li></ul><div class="enter-or-more-link"><a></a><button onclick="register_onclick()">立即加入</button></div></li><li class="industry-item fr"><div class="color-bar"><span class="left" style="background-color:#20ce49;"></span><span class="right" style="background-color:#f2f2f2;"></span></div><ul class="item-content"><div class="industry-item-title">日化</div><li>1 专注于品牌、客户关系管理的创造和提升；</li><li>2 全方位一站式供应链管理，降低运营成本；</li><li>3 缓解融资压力，打破规模经济壁垒；</li></ul><div class="enter-or-more-link"><a></a><button onclick="register_onclick()">立即加入</button></div></li></ul></div><div class="our-partners-part" style="display:none;"><div class="title-partners-title">我们的合作伙伴</div><div class="partners-part-left">
            	”龙杰智慧SRM打通了企业供应链，实施基于云技术的一体化网上采购平台，为企业提供了整体化的解决方案“
            </div><ul class="partners-part-right"><li style="background:url('http://hcloud.hand-china.com/images/login/partners-logos.png?v=3') no-repeat 0px 0px;">
            	</li><li style="background:url('http://hcloud.hand-china.com/images/login/partners-logos.png?v=3') no-repeat -245px 0px;">
            	</li><li style="background:url('http://hcloud.hand-china.com/images/login/partners-logos.png?v=3') no-repeat -480px 0px;">
            	</li><li style="background:url('http://hcloud.hand-china.com/images/login/partners-logos.png?v=3') no-repeat  0px -100px;">
            	</li><li style="background:url('http://hcloud.hand-china.com/images/login/partners-logos.png?v=3') no-repeat -245px -100px;">
            	</li><li style="background:url('http://hcloud.hand-china.com/images/login/partners-logos.png?v=3') no-repeat -480px -100px;">
            	</li></ul><div style="clear:both;"></div></div><div class="next-part"><div class="introduce-news-part"><div class="introduce-part"><div class="introduce-part-title"><h1>关于龙杰智慧SRM平台</h1></div><div class="introduce-part-content"><img src="http://hcloud.hand-china.com/images/login/aboutus.png"><p style="margin-top:20px;">龙杰智慧SRM平台是面向企业采购流程信息化建设的完整解决方案.....</p></div></div><div class="news-part fl"><div class="news-part-title"><h1>新闻动态</h1></div><div class="news-content"><ul class="news-list-ul"><li class="news-list-item"><span class="ordinal-number">1</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>SAP HANA黑科技：SAP HANA Smart Data Integratio&#8203;&#8203;n (SDI)</span><span class="type-sign"></span></a></li><li class="news-list-item"><span class="ordinal-number">2</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>SAP或许停止销售&#8203;SAP ECC版本软件，未来将转到HANA平台</span><span class="type-sign"></span></a></li><li class="news-list-item"><span class="ordinal-number">3</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>慧眼科技，携手龙杰信息实施SAP项目启动大会成功举办！</span><span class="type-sign"></span></a></li><li class="news-list-item"><span class="ordinal-number">4</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>慧眼科技携手龙杰信息SAP优化项目实施及蓝图汇报大会</span><span class="type-sign"></span></a></li></ul></div></div><div class="news-part fr"><div class="news-part-title"><h1>新手指引</h1></div><div class="news-content"><ul class="news-list-ul"><li class="news-list-item"><span class="ordinal-number">1</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>龙杰智慧SRM平台台因你而变.</span><span class="type-sign"></span></a></li><li class="news-list-item"><span class="ordinal-number">2</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>怎样使用云平台.</span><span class="type-sign"></span></a></li><li class="news-list-item"><span class="ordinal-number">3</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>商机就在你身边.</span><span class="type-sign"></span></a></li><li class="news-list-item"><span class="ordinal-number">4</span><a><span><span>[</span><span>2015-4-13</span><span>]</span></span><span>还在为资金发愁吗？.</span><span class="type-sign"></span></a></li></ul></div></div></div></div><div class="login_bottom"><div class="linkway-connectionway-part"><div class="linkway-part"><ul class="linkway-part-ul" style="padding-right: 100px;"><li class="linkway-classname"><label>关于我们</label></li><li><a target="_blank" href="/aboutUs.screen">关于龙杰智慧SRM平台台</a></li><li><a target="_blank" href="http://www.hand-china.com/">公司介绍</a></li><li><a target="_blank" href="http://www.hand-china.com/">团队介绍</a></li><li><a target="_blank" href="http://www.hand-china.com/">宗旨理念</a></li></ul><ul class="linkway-part-ul" style="padding-left: 100px;padding-right: 80px;"><li class="linkway-classname"><label>新手指引</label></li><li><a target="_blank" href="/modules/fnd/FND9100/fnd_enterprise_register_statement.screen">注册</a></li><li><a target="_blank" href="/modules/fnd/FND9050/login_finance_requisition.screen">融资</a></li><li><a target="_blank" href="http://service。going-link.com">账户管理</a></li></ul><ul class="linkway-part-ul" style="padding-left: 100px;padding-right: 80px;"><li class="linkway-classname"><label>友情链接</label></li><li></li><li><a id="http://service。going-link.com" onclick="api_open(this)">服务中心</a></li><li></li><li></li><li><a id="https://www.going-link.com" onclick="api_open(this)">龙杰智慧SRM平台台官网</a></li></ul><ul class="linkway-part-ul" style="padding-left: 60px;border: none;"><div style="margin-top:-5px"></div><div class="linkway-interway" style="margin-top:10px;margin-left: 20px;"></div></ul></div></div><div class="hand-copyright"><a style="margin-right:10px;">使用条款</a><a style="margin-right:10px;">客户隐私政策</a><a style="margin-right:10px;">关于</a></div></div><script>
        	addEventListenerFunc(window, 'onload', initData, 'before');
            function initData() {
                open_login_win();
            }
            
            //打开注册登录窗口 /login_register.screen
            function open_login_win(){
                queryCheckTimes(); 
                var ds = $('login_dataset');
                ds.create();
                var user_name = getUserName('USERNAME');
                var lang = getUserName('LANG');
                var record = $('login_dataset').getAt(0);
	            record.set('user_name', user_name);
	            var records = $('language_dataset').getAll();
	            for (var i = 0;i < records.length;i++) {
	                if (records[i].get('code') == lang) {
	                    record.set('language', records[i].get('name'));
	                }
	            }
            
				//设置密码
                var inputTgr = document.getElementById('pcd_login_input_box_name'), keyTgr;
                if (user_name){
                     inputTgr.value = user_name;
                     inputTgr.textStatus = 1;
                }
            	if (getUserName('if_remember_key') == 1){
                	window.document.getElementById('if_remember_key').checked = true;
                	if (user_name){
                	    var key = getUserName('userKey');
                	    if (key){
                	        keyTgr = document.getElementById('pcd_login_input_box_key');
            				keyTgr.value = key;
            				keyTgr.textStatus = 1;
                	    }
                	}
                }else{
                	window.document.getElementById('if_remember_key').checked = null;
                }
            }
        </script><link type="text/css" rel="stylesheet" href="/component/handPlayMovie/handPlayMovie.css?v=2.3"><script src="/component/handPlayMovie/handPlayMovie.js?v=2.4"></script>	
<!-- End of 龙杰智慧SRM平台台(Going-Link) -->
    	<div style="clear:both;height: 0px;"></div>
    </div>
    
    <script language="javascript" type="text/javascript">
    	if (handGlobal.myIframe){
			handGlobal.myIframe.style.visibility = 'visible';
		}
	    if (window.verticalAlign != 'top' && handGlobal.topParent.pageName == 'main.screen' && document.readyState.toLowerCase() != "complete"){
		    jDawn.bindEvent(window, 'load', initTopMargin);
		    jDawn.bindEvent(document.body, 'resize', initTopMargin);
	    }else{
	    	document.body.style.visibility = 'visible';
	    }
	    function initTopMargin(e){
	    	var bcs = document.body.children;
	    	var l = bcs.length, dom;
	    	for (var i = 0; i < l; i++){
	    		dom = bcs[i];
	    		if (dom.className == 'hand-main-content'){
	    			var h = parseInt(document.documentElement.clientHeight);
					if (h){
						if (h - 10 > dom.offsetHeight){
							h = Math.floor((h - dom.offsetHeight) * 9 / 19);
							dom.style.marginTop = (h > 50 ? 20 : h) + 'px';
						}
					} 
					break;
	    		}
	    	}
	    	document.body.style.visibility = 'visible';
	    	if (handGlobal.myIframe){
	    		handGlobal.myIframe.style.visibility = 'visible';
	    	}
	    }
    </script>

</body></html>