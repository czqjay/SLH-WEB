<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; chareset=UTF-8"%>
<title>czqjay</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Cache-Control" content="no-transform">
<meta name="renderer" content="webkit">
<link type="text/css" href="czqjay_files/base.css" rel="stylesheet">
<link type="text/css" href="czqjay_files/528.css" rel="stylesheet"
	id="templateFrame" class="templateFrameClass">
<link type="text/css" href="czqjay_files/edit.css" rel="stylesheet"> 
<link type="text/css" href="czqjay_files/tip-yellowsimple.css"
	rel="stylesheet">
<link type="text/css" href="czqjay_files/faiFloatPanel.css"
	rel="stylesheet">
<link type="text/css" href="czqjay_files/mCustomScrollbar.css"
	rel="stylesheet">
<link type="text/css" href="czqjay_files/siteGuide.css" rel="stylesheet">
<style id="poshytip-css-tip-yellowsimple" type="text/css">
div.tip-yellowsimple {
	visibility: hidden;
	position: absolute;
	top: 0;
	left: 0;
}

div.tip-yellowsimple table,div.tip-yellowsimple td {
	margin: 0;
	font-family: inherit;
	font-size: inherit;
	font-weight: inherit;
	font-style: inherit;
	font-variant: inherit;
}

div.tip-yellowsimple td.tip-bg-image span {
	display: block;
	font: 1px/ 1px sans-serif;
	height: 10px;
	width: 10px;
	overflow: hidden;
}

div.tip-yellowsimple td.tip-right {
	background-position: 100% 0;
}

div.tip-yellowsimple td.tip-bottom {
	background-position: 100% 100%;
}

div.tip-yellowsimple td.tip-left {
	background-position: 0 100%;
}

div.tip-yellowsimple div.tip-inner {
	background-position: -10px -10px;
}

div.tip-yellowsimple div.tip-arrow {
	visibility: hidden;
	position: absolute;
	overflow: hidden;
	font: 1px/ 1px sans-serif;
}
</style>
<style type="text/css" charset="utf-8">
/* See license.txt for terms of usage */ /** reset styling **/
.firebugResetStyles {
	z-index: 2147483646 !important;
	top: 0 !important;
	left: 0 !important;
	display: block !important;
	border: 0 none !important;
	margin: 0 !important;
	padding: 0 !important;
	outline: 0 !important;
	min-width: 0 !important;
	max-width: none !important;
	min-height: 0 !important;
	max-height: none !important;
	position: fixed !important;
	transform: rotate(0deg) !important;
	transform-origin: 50% 50% !important;
	border-radius: 0 !important;
	box-shadow: none !important;
	background: transparent none !important;
	pointer-events: none !important;
	white-space: normal !important;
}

.firebugBlockBackgroundColor {
	background-color: transparent !important;
}

.firebugResetStyles:before,.firebugResetStyles:after {
	content: "" !important;
}

/**actual styling to be modified by firebug theme**/
.firebugCanvas {
	display: none !important;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
.firebugLayoutBox {
	width: auto !important;
	position: static !important;
}

.firebugLayoutBoxOffset {
	opacity: 0.8 !important;
	position: fixed !important;
}

.firebugLayoutLine {
	opacity: 0.4 !important;
	background-color: #000000 !important;
}

.firebugLayoutLineLeft,.firebugLayoutLineRight {
	width: 1px !important;
	height: 100% !important;
}

.firebugLayoutLineTop,.firebugLayoutLineBottom {
	width: 100% !important;
	height: 1px !important;
}

.firebugLayoutLineTop {
	margin-top: -1px !important;
	border-top: 1px solid #999999 !important;
}

.firebugLayoutLineRight {
	border-right: 1px solid #999999 !important;
}

.firebugLayoutLineBottom {
	border-bottom: 1px solid #999999 !important;
}

.firebugLayoutLineLeft {
	margin-left: -1px !important;
	border-left: 1px solid #999999 !important;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
.firebugLayoutBoxParent {
	border-top: 0 none !important;
	border-right: 1px dashed #E00 !important;
	border-bottom: 1px dashed #E00 !important;
	border-left: 0 none !important;
	position: fixed !important;
	width: auto !important;
}

.firebugRuler {
	position: absolute !important;
}

.firebugRulerH {
	top: -15px !important;
	left: 0 !important;
	width: 100% !important;
	height: 14px !important;
	background:
		url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%13%88%00%00%00%0E%08%02%00%00%00L%25a%0A%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%04%F8IDATx%DA%EC%DD%D1n%E2%3A%00E%D1%80%F8%FF%EF%E2%AF2%95%D0D4%0E%C1%14%B0%8Fa-%E9%3E%CC%9C%87n%B9%81%A6W0%1C%A6i%9A%E7y%0As8%1CT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AATE9%FE%FCw%3E%9F%AF%2B%2F%BA%97%FDT%1D~K(%5C%9D%D5%EA%1B%5C%86%B5%A9%BDU%B5y%80%ED%AB*%03%FAV9%AB%E1%CEj%E7%82%EF%FB%18%BC%AEJ8%AB%FA'%D2%BEU9%D7U%ECc0%E1%A2r%5DynwVi%CFW%7F%BB%17%7Dy%EACU%CD%0E%F0%FA%3BX%FEbV%FEM%9B%2B%AD%BE%AA%E5%95v%AB%AA%E3E5%DCu%15rV9%07%B5%7F%B5w%FCm%BA%BE%AA%FBY%3D%14%F0%EE%C7%60%0EU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5JU%88%D3%F5%1F%AE%DF%3B%1B%F2%3E%DAUCNa%F92%D02%AC%7Dm%F9%3A%D4%F2%8B6%AE*%BF%5C%C2Ym~9g5%D0Y%95%17%7C%C8c%B0%7C%18%26%9CU%CD%13i%F7%AA%90%B3Z%7D%95%B4%C7%60%E6E%B5%BC%05%B4%FBY%95U%9E%DB%FD%1C%FC%E0%9F%83%7F%BE%17%7DkjMU%E3%03%AC%7CWj%DF%83%9An%BCG%AE%F1%95%96yQ%0Dq%5Dy%00%3Et%B5'%FC6%5DS%95pV%95%01%81%FF'%07%00%00%00%00%00%00%00%00%00%F8x%C7%F0%BE%9COp%5D%C9%7C%AD%E7%E6%EBV%FB%1E%E0(%07%E5%AC%C6%3A%ABi%9C%8F%C6%0E9%AB%C0'%D2%8E%9F%F99%D0E%B5%99%14%F5%0D%CD%7F%24%C6%DEH%B8%E9rV%DFs%DB%D0%F7%00k%FE%1D%84%84%83J%B8%E3%BA%FB%EF%20%84%1C%D7%AD%B0%8E%D7U%C8Y%05%1E%D4t%EF%AD%95Q%BF8w%BF%E9%0A%BF%EB%03%00%00%00%00%00%00%00%00%00%B8vJ%8E%BB%F5%B1u%8Cx%80%E1o%5E%CA9%AB%CB%CB%8E%03%DF%1D%B7T%25%9C%D5(%EFJM8%AB%CC'%D2%B2*%A4s%E7c6%FB%3E%FA%A2%1E%80~%0E%3E%DA%10x%5D%95Uig%15u%15%ED%7C%14%B6%87%A1%3B%FCo8%A8%D8o%D3%ADO%01%EDx%83%1A~%1B%9FpP%A3%DC%C6'%9C%95gK%00%00%00%00%00%00%00%00%00%20%D9%C9%11%D0%C0%40%AF%3F%EE%EE%92%94%D6%16X%B5%BCMH%15%2F%BF%D4%A7%C87%F1%8E%F2%81%AE%AAvzr%DA2%ABV%17%7C%E63%83%E7I%DC%C6%0Bs%1B%EF6%1E%00%00%00%00%00%00%00%00%00%80cr%9CW%FF%7F%C6%01%0E%F1%CE%A5%84%B3%CA%BC%E0%CB%AA%84%CE%F9%BF)%EC%13%08WU%AE%AB%B1%AE%2BO%EC%8E%CBYe%FE%8CN%ABr%5Dy%60~%CFA%0D%F4%AE%D4%BE%C75%CA%EDVB%EA(%B7%F1%09g%E5%D9%12%00%00%00%00%00%00%00%00%00H%F6%EB%13S%E7y%5E%5E%FB%98%F0%22%D1%B2'%A7%F0%92%B1%BC%24z3%AC%7Dm%60%D5%92%B4%7CEUO%5E%F0%AA*%3BU%B9%AE%3E%A0j%94%07%A0%C7%A0%AB%FD%B5%3F%A0%F7%03T%3Dy%D7%F7%D6%D4%C0%AAU%D2%E6%DFt%3F%A8%CC%AA%F2%86%B9%D7%F5%1F%18%E6%01%F8%CC%D5%9E%F0%F3z%88%AA%90%EF%20%00%00%00%00%00%00%00%00%00%C0%A6%D3%EA%CFi%AFb%2C%7BB%0A%2B%C3%1A%D7%06V%D5%07%A8r%5D%3D%D9%A6%CAu%F5%25%CF%A2%99%97zNX%60%95%AB%5DUZ%D5%FBR%03%AB%1C%D4k%9F%3F%BB%5C%FF%81a%AE%AB'%7F%F3%EA%FE%F3z%94%AA%D8%DF%5B%01%00%00%00%00%00%00%00%00%00%8E%FB%F3%F2%B1%1B%8DWU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*UiU%C7%BBe%E7%F3%B9%CB%AAJ%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5*%AAj%FD%C6%D4%5Eo%90%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5%86%AF%1B%9F%98%DA%EBm%BBV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%AD%D6%E4%F58%01%00%00%00%00%00%00%00%00%00%00%00%00%00%40%85%7F%02%0C%008%C2%D0H%16j%8FX%00%00%00%00IEND%AEB%60%82")
		repeat-x !important;
	border-top: 1px solid #BBBBBB !important;
	border-right: 1px dashed #BBBBBB !important;
	border-bottom: 1px solid #000000 !important;
}

.firebugRulerV {
	top: 0 !important;
	left: -15px !important;
	width: 14px !important;
	height: 100% !important;
	background:
		url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%00%0E%00%00%13%88%08%02%00%00%00%0E%F5%CB%10%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%06~IDATx%DA%EC%DD%D1v%A20%14%40Qt%F1%FF%FF%E4%97%D9%07%3BT%19%92%DC%40(%90%EEy%9A5%CB%B6%E8%F6%9Ac%A4%CC0%84%FF%DC%9E%CF%E7%E3%F1%88%DE4%F8%5D%C7%9F%2F%BA%DD%5E%7FI%7D%F18%DDn%BA%C5%FB%DF%97%BFk%F2%10%FF%FD%B4%F2M%A7%FB%FD%FD%B3%22%07p%8F%3F%AE%E3%F4S%8A%8F%40%EEq%9D%BE8D%F0%0EY%A1Uq%B7%EA%1F%81%88V%E8X%3F%B4%CEy%B7h%D1%A2E%EBohU%FC%D9%AF2fO%8BBeD%BE%F7X%0C%97%A4%D6b7%2Ck%A5%12%E3%9B%60v%B7r%C7%1AI%8C%BD%2B%23r%00c0%B2v%9B%AD%CA%26%0C%1Ek%05A%FD%93%D0%2B%A1u%8B%16-%95q%5Ce%DCSO%8E%E4M%23%8B%F7%C2%FE%40%BB%BD%8C%FC%8A%B5V%EBu%40%F9%3B%A72%FA%AE%8C%D4%01%CC%B5%DA%13%9CB%AB%E2I%18%24%B0n%A9%0CZ*Ce%9C%A22%8E%D8NJ%1E%EB%FF%8F%AE%CAP%19*%C3%BAEKe%AC%D1%AAX%8C*%DEH%8F%C5W%A1e%AD%D4%B7%5C%5B%19%C5%DB%0D%EF%9F%19%1D%7B%5E%86%BD%0C%95%A12%AC%5B*%83%96%CAP%19%F62T%86%CAP%19*%83%96%CA%B8Xe%BC%FE)T%19%A1%17xg%7F%DA%CBP%19*%C3%BA%A52T%86%CAP%19%F62T%86%CA%B0n%A9%0CZ%1DV%C6%3D%F3%FCH%DE%B4%B8~%7F%5CZc%F1%D6%1F%AF%84%F9%0F6%E6%EBVt9%0E~%BEr%AF%23%B0%97%A12T%86%CAP%19%B4T%86%CA%B8Re%D8%CBP%19*%C3%BA%A52huX%19%AE%CA%E5%BC%0C%7B%19*CeX%B7h%A9%0C%95%E1%BC%0C%7B%19*CeX%B7T%06%AD%CB%5E%95%2B%BF.%8F%C5%97%D5%E4%7B%EE%82%D6%FB%CF-%9C%FD%B9%CF%3By%7B%19%F62T%86%CA%B0n%D1R%19*%A3%D3%CA%B0%97%A12T%86uKe%D0%EA%B02*%3F1%99%5DB%2B%A4%B5%F8%3A%7C%BA%2B%8Co%7D%5C%EDe%A8%0C%95a%DDR%19%B4T%C66%82fA%B2%ED%DA%9FC%FC%17GZ%06%C9%E1%B3%E5%2C%1A%9FoiB%EB%96%CA%A0%D5qe4%7B%7D%FD%85%F7%5B%ED_%E0s%07%F0k%951%ECr%0D%B5C%D7-g%D1%A8%0C%EB%96%CA%A0%A52T%C6)*%C3%5E%86%CAP%19%D6-%95A%EB*%95q%F8%BB%E3%F9%AB%F6%E21%ACZ%B7%22%B7%9B%3F%02%85%CB%A2%5B%B7%BA%5E%B7%9C%97%E1%BC%0C%EB%16-%95%A12z%AC%0C%BFc%A22T%86uKe%D0%EA%B02V%DD%AD%8A%2B%8CWhe%5E%AF%CF%F5%3B%26%CE%CBh%5C%19%CE%CB%B0%F3%A4%095%A1%CAP%19*Ce%A8%0C%3BO*Ce%A8%0C%95%A12%3A%AD%8C%0A%82%7B%F0v%1F%2FD%A9%5B%9F%EE%EA%26%AF%03%CA%DF9%7B%19*Ce%A8%0C%95%A12T%86%CA%B8Ze%D8%CBP%19*Ce%A8%0C%95%D1ae%EC%F7%89I%E1%B4%D7M%D7P%8BjU%5C%BB%3E%F2%20%D8%CBP%19*Ce%A8%0C%95%A12T%C6%D5*%C3%5E%86%CAP%19*Ce%B4O%07%7B%F0W%7Bw%1C%7C%1A%8C%B3%3B%D1%EE%AA%5C%D6-%EBV%83%80%5E%D0%CA%10%5CU%2BD%E07YU%86%CAP%19*%E3%9A%95%91%D9%A0%C8%AD%5B%EDv%9E%82%FFKOee%E4%8FUe%A8%0C%95%A12T%C6%1F%A9%8C%C8%3D%5B%A5%15%FD%14%22r%E7B%9F%17l%F8%BF%ED%EAf%2B%7F%CF%ECe%D8%CBP%19*Ce%A8%0C%95%E1%93~%7B%19%F62T%86%CAP%19*Ce%A8%0C%E7%13%DA%CBP%19*Ce%A8%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4%AE%A4%F5%25%C0%00%DE%BF%5C'%0F%DA%B8q%00%00%00%00IEND%AEB%60%82")
		repeat-y !important;
	border-left: 1px solid #BBBBBB !important;
	border-right: 1px solid #000000 !important;
	border-bottom: 1px dashed #BBBBBB !important;
}

.overflowRulerX>.firebugRulerV {
	left: 0 !important;
}

.overflowRulerY>.firebugRulerH {
	top: 0 !important;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
.fbProxyElement {
	position: fixed !important;
	pointer-events: auto !important;
}
</style>
</head>

<body class="g_bodyManage g_locale2052 ">













	<div id="topBarArea" class="g_topBarArea g_editPanel" style="">
		<div id="arrow" class="g_arrow g_arrow_up"></div>
		<div id="topBar" class="g_topBar">

			<div class="left">

				<a href="javascript:;" id="webRapidSite" class="tbutton"
					onclick="Site.newRapidSite();Site.logDog(100038, 22);"
					title="体验极速建站，一键复制海量样板网站">
					<div class="styleSettingButton">
						<span class="siteIco styleSettingRapidSite"></span><span
							style="float: left; height: 20px; line-height: 20px;">极速建站</span>
					</div> </a>

				<a href="javascript:;" id="webDesign" class="tbutton"
					onclick="Site.styleSetting('open', 'webTemplateTab');Site.logDog(100038, 2);"
					title="点击进入网站设计">
					<div class="styleSettingButton">
						<span class="siteIco styleSettingDesign"></span><span
							style="float: left; height: 20px; line-height: 20px;">网站设计</span>
					</div> </a>

				<a href="javascript:;"
					onclick="Site.showTopManageFrame('manageFrameProductManage');Site.logDog(100038, 3);return false;"
					id="topWebsiteManage" style="outline: none;" class="tbutton"
					title="点击进行网站管理">
					<div class="styleSettingButton">
						<span class="siteIco styleSettingManage"></span><span
							style="float: left; height: 20px; line-height: 20px;">网站管理</span>
					</div> </a>


				<a href="http://www.faisco.cn/portal.jsp" class="tbutton"
					target="_blank" title="点击进入商务平台" onclick="Site.logDog(100038, 4);">
					<div class="styleSettingButton">
						<span class="siteIco styleSettingPortal"></span><span
							style="float: left; height: 20px; line-height: 20px;">商务平台</span>
					</div> </a>

				<a href="http://m.czqjay.faisco.cn/manage/mobiDesign.jsp"
					class="tbutton" onclick="Site.logDog(100038, 15);" target="_blank"
					title="点击进入手机版">
					<div class="styleSettingButton">
						<span class="siteIco styleSettingMobi"></span><span
							style="float: left; height: 20px; line-height: 20px;">手机版</span>
					</div> </a>

			</div>
			<div class="right">
				<div id="topBarStaff" class="siteTitle" _mousein="0">
					<div class="siteVersion siteGroupFre"></div>
					<div class="titleName">
						boss
					</div>
				</div>
				<div class="line"></div>
				<div class="topBarBulletin topBarBulletin-hasNew" _mousein="0"></div>

				<div class="line"></div>
				<div id="choiceService" _mousein="0" class="choiceServiceInfo">
					<div class="choiceServiceIco"></div>
					<div class="choiceServiceText">
						服务支持
					</div>
				</div>


				<div class="line"></div>
				<a href="http://www.faisco.cn/jump.jsp?t=3" class="tbutton upgrade"
					target="_blank" title="升级后您的网站内容将完整保留。"
					onclick="Site.logDog(100038, 5);"><span
					class="siteIco styleSettingMobi"></span><span
					style="float: left; height: 20px; line-height: 20px; cursor: pointer;">购买升级</span>
				</a>

				<div class="line"></div>
				<div id="mySite" _mousein="0" class="mySite">
					<div class="mySiteIco"></div>
					<div class="mySiteText">
						免费网址

					</div>
				</div>

			</div>

			<div style="clear: both;"></div>
			<div id="mailTip" class="mailTip" style="display: none;"
				mailhref="www.faisco.cn/mail/index.jsp"></div>

			<div class="serviceList">
				<a class="serviceItem onlineQQ"
					href="http://www.faisco.cn/qq.jsp?s=4" target="_blank"
					onclick="Site.logDog(100038, 8);">在线客服</a>
				<a class="serviceItem siteguide" href="javascript:;"
					onclick="Site.siteGuidePopupWindow();Site.logDog(100038, 23);">建站指引</a>
				<a class="serviceItem" href="http://blog.faisco.com/"
					target="_blank" onclick="Site.logDog(100038, 11);">帮助中心</a>
				<a class="serviceItem" href="http://e.weibo.com/faisco"
					target="_blank" onclick="Site.logDog(100038, 13);">新浪微博</a>
				<a class="serviceItem" href="http://t.qq.com/faisco" target="_blank"
					onclick="Site.logDog(100038, 12);">腾讯微博</a>
				<div style="clear: both;"></div>
			</div>

			<div style="left: 692px; top: 23px; display: none;"
				class="topBarStaffContent">
				<div class="top">
					<a hidefocus="true" class="versionLink"
						href="http://www.faisco.com/proFunc.html"
						title="您在使用“网站免费版”，点击了解更多。" target="_blank"
						onclick="Site.logDog(100038, 1);"><div
							class="versionIcon siteGroupFre"></div> </a>
					<div class="right">
						<div class="title">
							网站免费版

							<a hidefocus="true" href="http://www.faisco.cn/jump.jsp?t=10"
								class="update" target="_blank" title="升级后您的网站内容将完整保留。">&nbsp;</a>

						</div>
						<div class="text">
							免费版用户每个月至少登录一次，逾期未登录则关闭网站。
						</div>
						<div style="clear: both;"></div>
					</div>
					<div style="clear: both;"></div>
				</div>

				<div class="bottom">

					<a hidefocus="true" class="staffManage"
						href="http://www.faisco.cn/corp/index.jsp#app=corpStaff"
						target="_blank" style="margin-right: 5px;">[管理员工]</a>

					<a
						href="javascript:Site.logDog(100038,%206);Site.logout('http://www.czqjay.icoc.cc');"
						hidefocus="true" class="exit">[退出]</a>
				</div>
			</div>

			<div id="topBarMySiteContent" class="topBarMySiteContent2">
				<div class="mainUrlDiv">
					<a hidefocus="true" id="topBarMySiteMainUrl" class="mainUrl"
						href="http://www.czqjay.icoc.cc/"
						title="http://www.czqjay.icoc.cc"
						onclick="Site.logDog(100038, 7);" target="_blank">http://www.czqjay.icoc.cc</a>
				</div>
				<div class="textLine" style="border-bottom: 1px solid #dadada;">
					<a hidefocus="true" id="topBarMySiteCopyBtn" class="btn"
						href="javascript:;" data-clipboard-target="topBarMySiteMainUrl">[复制]</a><a
						hidefocus="true" class="btn" href="javascript:;"
						onclick="Fai.addBookmark(top.document.title, 'http://www.czqjay.icoc.cc/?_sc=5');Site.logDog(100038, 9);">[收藏]</a><a
						hidefocus="true" class="btn" href="file:///shortcut.jsp"
						onclick="Site.logDog(100038, 10);" title="下载“我的网址”到桌面">[添加到桌面]</a><span>分享：</span><a
						hidefocus="true" class="sina_weibo shareBtn" title="分享到新浪微博"
						href="javascript:;"
						onclick="window.open('http://service.weibo.com/share/share.php?title=czqjay&amp;url=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;source=bookmark')"></a><a
						hidefocus="true" class="qq_weibo shareBtn" title="分享到腾讯微博"
						href="javascript:;"
						onclick="window.open('http://v.t.qq.com/share/share.php?title=czqjay&amp;url=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;site=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1')"></a><a
						hidefocus="true" class="qq_zone shareBtn" title="分享到QQ空间"
						href="javascript:;"
						onclick="window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;title=czqjay&amp;pics=&amp;summary=')"></a><a
						hidefocus="true" class="baidu_tieba shareBtn" title="分享到百度贴吧"
						href="javascript:;"
						onclick="window.open('http://tieba.baidu.com/i/app/open_share_api?url=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1')"></a>
				</div>
				<div id="topBarMySiteCheckDomain" class="topBarMySiteCheckDomain">
					<div class="checkDomainDiv">
						<span
							style="float: left; font-family: &amp; amp; amp; quot; 微软雅黑 &amp;amp; amp; quot;; font-size: 14px;">www.&nbsp;</span>
						<input id="topBarMySiteDomain" value="czqjay" type="text">
						<select id="topBarMySiteDomainSuffix">
							<option value=".com" selected="selected">
								.com
							</option>
							<option value=".net">
								.net
							</option>
							<option value=".org">
								.org
							</option>
						</select>
						<a hidefocus="true" href="javascript:;"
							id="topBarMySiteDomainCheck">查&nbsp;询</a>
						<div id="topBarMySiteDomainBuy"
							onclick="Site.logDog(100038, 25);return false;">
							求赠送
						</div>
					</div>
					<div id="topBarMySiteCheckResult">
						<span id="topBarMySiteCheckResultIco"
							style="display: inline-block; width: 30px; height: 30px;">&nbsp;</span>
						<span class="text"></span>
					</div>
				</div>
			</div>

			<div class="topBarBulletinContent">
				<div class="menuDiv">
					<div id="menuMessage" class="menu menu-check">
						我的消息
					</div>
					<div class="line"></div>
					<div id="menuUpdate" class="menu">
						功能更新
						<div class="redPoint"></div>
					</div>
				</div>
				<div id="message" class="listDiv">
					<a class="adImg"
						href="http://www.faisco.com/pro/20140901.html?_s=5"
						target="_blank"><img src="czqjay_files/topBarAdFree.jpg"
							height="73" width="243">
					</a>
					<div class="list">
						<a hidefocus="true" href="http://weibo.com/p/100140E522957"
							target="_blank" style="color: #f30;"
							onclick="Site.logDog(100038, 109);"><span class="icon1">&nbsp;</span>疯抢手机，还送SEO服务包</a>
					</div>
					<div class="list">
						<a hidefocus="true" href="http://www.sitekc.com/pro1.jsp?_s=8"
							target="_blank" style="color: #f30;"
							onclick="Site.logDog(100038, 109);"><span class="icon1">&nbsp;</span>0元加盟，年入百万，建站快车火热加盟中</a>
					</div>
					<div class="list">
						<a hidefocus="true" href="http://blog.faisco.com/474"
							target="_blank" onclick="Site.logDog(100038, 113);"><span
							class="icon0">&nbsp;</span>没时间建网站？我们为您提供代建服务</a>
					</div>
					<div class="list">
						<a hidefocus="true"
							href="javascript:Site.showManageFrame('manageFrameMallEdit');"
							target="_self" onclick="Site.logDog(100038, 106);"><span
							class="icon0">&nbsp;</span>想做网上交易？赶紧开通商城功能试试</a>
					</div>
					<div class="list">
						<a hidefocus="true"
							href="http://www.faisco.com/pro/seoService.html" target="_blank"
							onclick="Site.logDog(100038, 107);"><span class="icon0">&nbsp;</span>如何让网站获得好的百度排名？</a>
					</div>

				</div>
				<div id="update" class="listDiv" style="display: none;">
					<div class="list">
						<a hidefocus="true" href="http://www.faisco.com/news/602"
							target="_blank" onclick="Site.logDog(100038, 102);"><span
							class="iconPoint">&nbsp;</span>9月24日更新：手机版新上线魔方导航</a>
					</div>
					<div class="list">
						<a hidefocus="true" href="http://www.faisco.com/news/601"
							target="_blank" onclick="Site.logDog(100038, 102);"><span
							class="iconPoint">&nbsp;</span>9月17日更新：可调整网站侧边栏的宽度</a>
					</div>
					<div class="list">
						<a hidefocus="true" href="http://www.faisco.com/news/599"
							target="_blank" onclick="Site.logDog(100038, 102);"><span
							class="iconPoint">&nbsp;</span>9月02日更新：产品分类新增电商分类样式</a>
					</div>
					<div class="list">
						<a hidefocus="true" href="http://www.faisco.com/news/598"
							target="_blank" onclick="Site.logDog(100038, 102);"><span
							class="iconPoint">&nbsp;</span>8月27日更新：新上线7套中秋横幅</a>
					</div>
					<div class="list">
						<a hidefocus="true" href="http://www.faisco.com/news/596"
							target="_blank" onclick="Site.logDog(100038, 102);"><span
							class="iconPoint">&nbsp;</span>8月13日更新：可拖拽调整导航位置宽高</a>
					</div>

				</div>
			</div>


			<div style="display: none;" id="scrollbar" class="scrollbar">
				正在加载网站管理功能...
			</div>


			<span style="left: 830px; top: 25px;" class="topBarBulletinRemind">您有新消息</span>
		</div>
	</div>






	<div id="styleDesign" class="g_styleDesign g_editPanel">
		<div class="tabsWrap">
			<ul id="tabs" class="tabs">
				<li style="width: 100px; text-align: right; color: #fff;"></li>

				<li>
					<a class="tabsMenu" href="javascript:;" onfocus="this.blur()"
						id="webTemplateTab"
						onclick="Site.webTemplateTabClick();return false;">网站主题</a>
				</li>


				<li style="">
					<a class="tabsMenu" href="javascript:;" onfocus="this.blur()"
						id="webBannerTab" onclick="Site.webBannerTabClick();return false;">网站横幅</a>
				</li>
				<li>
					<a class="tabsMenu" href="javascript:;" onfocus="this.blur()"
						id="pageLayoutTab"
						onclick="Site.pageLayoutTabClick();return false;">页面版式</a>
				</li>

				<li>
					<a class="tabsMenu" href="javascript:;" onfocus="this.blur()"
						id="webSettingTab"
						onclick="Site.webSettingTabClick();return false;">网站设置</a>
				</li>
				<li>
					<a class="tabsMenu" href="javascript:;" onfocus="this.blur()"
						id="baiduOptTab" onclick="Site.baiduOptClick();return false;">百度优化</a>
				</li>
				<li style="text-align: right;" id="styleDesignBtnContainer"
					class="styleDesignBtnContainer-five">
					<a href="javascript:;" class="cancelBtn"
						onclick="Site.closeStyleDesign();return false">取&nbsp;消</a>
					<a href="javascript:;" id="saveButton"
						class="saveBtn buttonDisabled"
						onclick="Site.saveStyle();return false;">保&nbsp;&nbsp;存</a>
				</li>
				<li>
					<div id="styleDesignArrow" title="点击收起设计面板"
						class="g_styleDesignArrowUp"
						onclick="Site.changeStyleDesignPanes();"></div>
				</li>
			</ul>
		</div>
		<!-- tab "panes" -->
		<div id="panes" class="panes">

			<div id="webTemplate" class="webTemplate">
				<iframe id="webTemplateFrame" frameborder="0" height="205px"
					scrolling="auto" width="100%"></iframe>
			</div>

			<div id="webBannerStyle" class="funcModule">
				<iframe id="webBannerFrame" frameborder="0" height="205px"
					scrolling="auto" width="100%"></iframe>
			</div>
			<div id="pageLayout" class="funcModule">
				<iframe id="pageLayoutFrame" frameborder="0" height="205px"
					scrolling="auto" width="100%"></iframe>
			</div>

			<div id="webSetting" class="funcModule">
				<iframe id="webSettingFrame" frameborder="0" height="205px"
					scrolling="auto" width="100%"></iframe>
			</div>
			<div id="baiduOpt" class="funcModule">
				<iframe id="baiduOptFrame" frameborder="0" height="205px"
					scrolling="auto" width="100%"></iframe>
			</div>
		</div>
		<!--<div id="styleDesignTips" class="styleDesignTips">
		<div class="styleTips">您可以直接拖动模块，或者点击上方标签对网站进行设计。点击“保存”后生效。</div>
	</div>-->
	</div>






	<div id="g_main" class="g_main g_col2 g_mainManage" style="top: 27px;">
		<div style="width: 1287px;" id="web" class="g_web g_webManage">
			<table class="webTopTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="webTop" class="webTop">

								<div title="按住鼠标，可随意拖动。" id="corpTitle"
									class="corpTitle corpTitle2 ui-draggable"
									fontpatterntitle="false" style="cursor: move;" _href="">
									<div id="primaryTitle" style="">
										czqjay
									</div>
									<div id="subTitle" style=""></div>
								</div>



								<div id="logo" class="logo logo2 ui-draggable ui-resizable"
									style="cursor: move;">


									<img id="logoImg" title="czqjay" alt="czqjay"
										style="float: left;"
										src="czqjay_files/ABUIABAEGAAg6s6UoQUovfydxwIwOzgz.png">
									<div style="z-index: 1000;"
										class="ui-resizable-handle ui-resizable-e"></div>
									<div style="z-index: 1000;"
										class="ui-resizable-handle ui-resizable-s"></div>
									<div title="按住鼠标，可随意调整大小。"
										style="z-index: 1000; display: none;"
										class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-resizable-rightTip"></div>
								</div>



							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table class="absTopTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="absTopForms" class="forms sideForms absForms">
								<div style="position: absolute;"></div>
								<!-- for ie6 -->

							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="webNavTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="webNav" class="webNav webNavDefault">

							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="webHeaderTable" id="webHeaderTable" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td class="webHeaderTd" align="center">
							<div id="webHeader" class="webHeader">
								<table class="headerTable" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="headerCusLeft"></td>
											<td class="headerCusMiddle" align="center" valign="top">
												<div class="headerNav">
													<div id="nav" class="nav nav2 ui-draggable ui-resizable">
														<div class="navMainContent">
															<table class="navTop" cellpadding="0" cellspacing="0">
																<tbody>
																	<tr>
																		<td class="navTopLeft"></td>
																		<td class="navTopCenter"></td>
																		<td class="navTopRight"></td>
																	</tr>
																</tbody>
															</table>
															<table class="navContent" cellpadding="0" cellspacing="0">
																<tbody>
																	<tr>
																		<td class="navLeft"></td>
																		<td class="navCenterContent" id="navCenterContent"
																			align="left" valign="top">
																			<div style="width: 614px;" id="navCenter"
																				class="navCenter">
																				<div style="display: none;" class="itemPrev"></div>
																				<div style="width: 610px;" class="itemContainer">
																					<table
																						class="item itemCol2 itemIndex1 itemSelected itemSelectedIndex1"
																						colid="2" id="nav2"
																						onclick='Site.redirectUrl("/", "_self", event, 1, 0);'
																						_jump="document.location.href=&quot;/&quot;"
																						cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td class="itemLeft"></td>
																								<td class="itemCenter">
																									<a hidefocus="true" style="outline: none;"
																										href="file:///" onclick="return false;"><span
																										class="itemName0">首页</span> </a>
																								</td>
																								<td class="itemRight"></td>
																							</tr>
																						</tbody>
																					</table>
																					<div class="itemSep"></div>
																					<table class="item itemCol12 itemIndex2" colid="12"
																						id="nav12"
																						onclick='Site.redirectUrl("/pr.jsp", "_self", event, 1, 0);'
																						_jump="document.location.href=&quot;/pr.jsp&quot;"
																						cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td class="itemLeft"></td>
																								<td class="itemCenter">
																									<a hidefocus="true" style="outline: none;"
																										href="file:///pr.jsp" onclick="return false;"><span
																										class="itemName0">产品展示</span> </a>
																								</td>
																								<td class="itemRight"></td>
																							</tr>
																						</tbody>
																					</table>
																					<div class="itemSep"></div>
																					<table class="item itemCol21 itemIndex3" colid="21"
																						id="nav21"
																						onclick='Site.redirectUrl("/nr.jsp", "_self", event, 1, 0);'
																						_jump="document.location.href=&quot;/nr.jsp&quot;"
																						cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td class="itemLeft"></td>
																								<td class="itemCenter">
																									<a hidefocus="true" style="outline: none;"
																										href="file:///nr.jsp" onclick="return false;"><span
																										class="itemName0">新闻动态</span> </a>
																								</td>
																								<td class="itemRight"></td>
																							</tr>
																						</tbody>
																					</table>
																					<div class="itemSep"></div>
																					<table class="item itemCol9 itemIndex4" colid="9"
																						id="nav9"
																						onclick='Site.redirectUrl("/msgBoard.jsp", "_self", event, 1, 0);'
																						_jump="document.location.href=&quot;/msgBoard.jsp&quot;"
																						cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td class="itemLeft"></td>
																								<td class="itemCenter">
																									<a hidefocus="true" style="outline: none;"
																										href="file:///msgBoard.jsp"
																										onclick="return false;"><span
																										class="itemName0">留言板</span> </a>
																								</td>
																								<td class="itemRight"></td>
																							</tr>
																						</tbody>
																					</table>
																					<div class="itemSep"></div>
																					<table class="item itemCol101 itemIndex5"
																						colid="101" id="nav101"
																						onclick='Site.redirectUrl("/col.jsp?id=101", "_self", event, 1, 0);'
																						_jump="document.location.href=&quot;/col.jsp?id=101&quot;"
																						cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td class="itemLeft"></td>
																								<td class="itemCenter">
																									<a hidefocus="true" style="outline: none;"
																										href="file:///col.jsp?id=101"
																										onclick="return false;"><span
																										class="itemName0">关于我们</span> </a>
																								</td>
																								<td class="itemRight"></td>
																							</tr>
																						</tbody>
																					</table>
																					<div class="itemSep"></div>
																					<table class="item itemCol102 itemIndex6"
																						colid="102" id="nav102"
																						onclick='Site.redirectUrl("/col.jsp?id=102", "_self", event, 1, 0);'
																						_jump="document.location.href=&quot;/col.jsp?id=102&quot;"
																						cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td class="itemLeft"></td>
																								<td class="itemCenter">
																									<a hidefocus="true" style="outline: none;"
																										href="file:///col.jsp?id=102"
																										onclick="return false;"><span
																										class="itemName0">联系我们</span> </a>
																								</td>
																								<td class="itemRight"></td>
																							</tr>
																						</tbody>
																					</table>
																				</div>
																				<div style="display: none;" class="itemNext"></div>
																			</div>
																		</td>
																		<td class="navRight"></td>
																	</tr>
																</tbody>
															</table>
															<table class="navBottom" cellpadding="0" cellspacing="0">
																<tbody>
																	<tr>
																		<td class="navBottomLeft"></td>
																		<td class="navBottomCenter"></td>
																		<td class="navBottomRight"></td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="z-index: 1000; display: none;"
															class="ui-resizable-handle ui-resizable-n"></div>
														<div style="z-index: 1000; display: none;"
															class="ui-resizable-handle ui-resizable-e"></div>
														<div style="z-index: 1000; display: none;"
															class="ui-resizable-handle ui-resizable-s"></div>
														<div style="z-index: 1000; display: none;"
															class="ui-resizable-handle ui-resizable-w"></div>
														<div title="按住鼠标，可随意调整大小。"
															style="z-index: 1000; display: none;"
															class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-resizable-rightTip"></div>
														<div title="按住鼠标，可随意调整大小。"
															style="z-index: 1000; display: none;"
															class="ui-resizable-handle ui-resizable-sw ui-icon ui-icon-gripsmall-diagonal-ns ui-resizable-leftTip"></div>
													</div>

												</div>
											</td>
											<td class="headerCusRight"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table class="webBannerTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="webBanner" class="webBanner">
								<table class="bannerTable" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="bannerLeft"></td>
											<td class="bannerCenter" align="center" valign="top">
												<div class="bannerTop"></div>
												<div id="banner" class="banner" style="" normalheight="-1"></div>


											</td>
											<td class="bannerRight"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table class="absMiddleTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="absForms" class="forms sideForms absForms">

							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table class="webContainerTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="webContainer" class="webContainer">
								<div id="container" class="container">
									<table class="containerTop" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="left"></td>
												<td class="center"></td>
												<td class="right"></td>
											</tr>
										</tbody>
									</table>

									<table class="containerMiddle" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td id="containerMiddleLeft" class="containerMiddleLeft">




												</td>

												<td class="containerMiddleCenter">
													<div id="containerMiddleCenterTop"
														class="containerMiddleCenterTop">

													</div>

													<div id="containerForms" class="containerForms">
														<div id="topForms"
															class="column forms mainForms topForms ui-sortable"
															style="display: none;">

														</div>

														<table class="containerFormsMiddle" cellpadding="0"
															cellspacing="0">
															<tbody>
																<tr>
																	<td id="containerFormsLeft" class="containerFormsLeft"
																		valign="top">
																		<div class="containerFormsLeftTop">
																		</div>
																		<div id="leftForms"
																			class="column forms sideForms leftForms ui-sortable">
																			<div id="module312" _indexclass="formIndex1"
																				class="form  formIndex1 formStyle45 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="true"
																				_independent="false">
																				<table class="formTop formTop312" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner312"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left312"></td>
																							<td class="center center312" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle312"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft312"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter312"
																												valign="top">
																												<div class="titleText titleText312">
																													<span> 产品搜索</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight312"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther312">
																									<div class="formBannerBtn formBannerBtn312">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module312");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right312"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle312"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft312"></td>
																							<td class="formMiddleCenter formMiddleCenter312"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent312  ">
																									<div class="searchBox">
																										<input aria-haspopup="true"
																											aria-autocomplete="list" role="textbox"
																											class="productSearch g_itext ui-autocomplete-input"
																											placeholder="" size="10">
																										<a class="g_btn searchBoxBtn"
																											href="javascript:;"
																											onclick="Site.searchProduct(312);return false;"><span>搜索</span>
																										</a>
																									</div>
																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight312"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom312"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left312"></td>
																							<td class="center center312"></td>
																							<td class="right right312"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat312"></div>
																				<div parentid="module312" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module312" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>

																			<div id="module304" _indexclass="formIndex2"
																				class="form form304 formIndex2 formStyle26 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="true"
																				_independent="false">
																				<table class="formTop formTop304" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner304"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left304"></td>
																							<td class="center center304" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle304"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft304"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter304"
																												valign="top">
																												<div class="titleText titleText304">
																													<span> 产品分类</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight304"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther304">
																									<div class="formBannerBtn formBannerBtn304">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module304");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right304"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle304"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft304"></td>
																							<td class="formMiddleCenter formMiddleCenter304"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent304  ">
																									<div
																										class="productFilter productFilterGroup productFilterVert productGroupLevelShow">
																										<table class="productFilterTop"
																											cellpadding="0" cellspacing="0">
																											<tbody>
																												<tr>
																													<td class="productFilterTopLeft"></td>
																													<td class="productFilterTopCenter"></td>
																													<td class="productFilterTopRight"></td>
																												</tr>
																											</tbody>
																										</table>
																										<table class="productFilterContent"
																											cellpadding="0" cellspacing="0">
																											<tbody>
																												<tr>
																													<td class="productFilterContentLeft"></td>
																													<td class="productFilterContentCenter">
																														<table
																															class="productFilterPanel productGroupLevelNotClick"
																															cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td class="productFilterPanelLeft"></td>
																																	<td class="productFilterPanelCenter">
																																		<table class="productFilterValue"
																																			cellpadding="0" cellspacing="0">
																																			<tbody>
																																				<tr>
																																					<td groupid="1"
																																						class="parentClickedTd "></td>
																																					<td
																																						class="productFilterValueCenter ">
																																						<a hidefocus="true"
																																							href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pr.jsp?_pp=0_304_1_-1"
																																							title="分类1">分类1</a>
																																					</td>
																																					<td class="productFilterValueRight"></td>
																																				</tr>
																																			</tbody>
																																		</table>
																																		<div id="childrenDiv1M304"
																																			class="productFilterValuePanel">
																																		</div>
																																	</td>
																																	<td class="productFilterPanelRight"></td>
																																</tr>
																															</tbody>
																														</table>
																														<div class="separatorLine g_separator"></div>
																														<table
																															class="productFilterPanel productGroupLevelNotClick"
																															cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td class="productFilterPanelLeft"></td>
																																	<td class="productFilterPanelCenter">
																																		<table class="productFilterValue"
																																			cellpadding="0" cellspacing="0">
																																			<tbody>
																																				<tr>
																																					<td groupid="2"
																																						class="parentClickedTd "></td>
																																					<td
																																						class="productFilterValueCenter ">
																																						<a hidefocus="true"
																																							href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pr.jsp?_pp=0_304_2_-1"
																																							title="分类2">分类2</a>
																																					</td>
																																					<td class="productFilterValueRight"></td>
																																				</tr>
																																			</tbody>
																																		</table>
																																		<div id="childrenDiv2M304"
																																			class="productFilterValuePanel">
																																		</div>
																																	</td>
																																	<td class="productFilterPanelRight"></td>
																																</tr>
																															</tbody>
																														</table>
																													</td>
																													<td class="productFilterContentRight"></td>
																												</tr>
																											</tbody>
																										</table>
																										<table class="productFilterBottom"
																											cellpadding="0" cellspacing="0">
																											<tbody>
																												<tr>
																													<td class="productFilterBottomLeft"></td>
																													<td class="productFilterBottomCenter"></td>
																													<td class="productFilterBottomRight"></td>
																												</tr>
																											</tbody>
																										</table>
																									</div>
																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight304"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom304"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left304"></td>
																							<td class="center center304"></td>
																							<td class="right right304"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat304"></div>
																				<div parentid="module304" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module304" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>

																			<div _mousein="0" id="module308"
																				_indexclass="formIndex3"
																				class="form form308 formIndex3 formStyle40 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="true"
																				_independent="false">
																				<table class="formTop formTop308" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner308"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left308"></td>
																							<td class="center center308" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle308"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft308"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter308"
																												valign="top">
																												<div class="titleText titleText308">
																													<span> 在线客服</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight308"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther308">
																									<div class="formBannerBtn formBannerBtn308">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module308");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right308"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle308"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft308"></td>
																							<td class="formMiddleCenter formMiddleCenter308"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent308  ">
																									<div id="serOnline-container308"
																										class="serOnline-container">
																										<div class="serOnline-service">
																											<div class="serOnline-list-v lineH-21 ">
																												<a hidefocus="true"
																													href="http://wpa.qq.com/msgrd?v=3&amp;uin=258506508&amp;site=qq&amp;menu=yes"
																													target="_blank"><span
																													class="serOnline-img qqImg">&nbsp;</span>客服一</a>
																											</div>
																											<div
																												class="serOnline-list-v lineH-21 lastData">
																												<a hidefocus="true"
																													href="http://wpa.qq.com/msgrd?v=3&amp;uin=258506508&amp;site=qq&amp;menu=yes"
																													target="_blank"><span
																													class="serOnline-img qqImg">&nbsp;</span>客服二</a>
																											</div>
																										</div>
																										<div
																											class="serOnline-separation-line g_separator"></div>
																										<div class="serOnline-worktime">
																											<div class="marBL-10">
																												<span class="worktime-header-img">&nbsp;</span><span
																													style="font-size: 15px;"><b>工作时间</b>
																												</span>
																											</div>
																											<div class="serOnline-list-v ">
																												<span>周一至周五 ：8:30-17:30</span>
																											</div>
																											<div class="serOnline-list-v lastData">
																												<span>周六至周日 ：9:00-17:00</span>
																											</div>
																										</div>
																									</div>
																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight308"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom308"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left308"></td>
																							<td class="center center308"></td>
																							<td class="right right308"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat308"></div>
																				<div parentid="module308" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module308" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>

																			<div id="module302" _indexclass="formIndex4"
																				class="form form302 formIndex4 formStyle1 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="true"
																				_independent="false">
																				<table class="formTop formTop302" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner302"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left302"></td>
																							<td class="center center302" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle302"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft302"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter302"
																												valign="top">
																												<div class="titleText titleText302">
																													<span> 联系方式</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight302"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther302">
																									<div class="formBannerBtn formBannerBtn302">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module302");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right302"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle302"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft302"></td>
																							<td class="formMiddleCenter formMiddleCenter302"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent302  ">
																									<div class="richContent richContent0">
																										<p>
																											联系人：
																										</p>
																										<p>
																											电 话：
																										</p>
																										<p>
																											邮 箱：
																										</p>
																										<p>
																											地 址：
																										</p>
																										<p>
																											<br>
																										</p>
																									</div>
																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight302"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom302"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left302"></td>
																							<td class="center center302"></td>
																							<td class="right right302"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat302"></div>
																				<div parentid="module302" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module302" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>

																			<div _mousein="0" id="module305"
																				_indexclass="formIndex5"
																				class="form form305 formIndex5 formStyle33 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="false"
																				_independent="false">
																				<table class="formTop formTop305" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner305"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left305"></td>
																							<td class="center center305" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle305"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft305"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter305"
																												valign="top">
																												<div class="titleText titleText305">
																													<span> 友情链接</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight305"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther305">
																									<div class="formBannerBtn formBannerBtn305">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module305");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right305"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle305"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft305"></td>
																							<td class="formMiddleCenter formMiddleCenter305"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent305  ">
																									<div class="link-v-container">
																										<a hidefocus="true" class="link-h"
																											href="http://www.faisco.com/" target="_blank">网站建设</a>
																									</div>
																									<div class="link-v-container">
																										<a hidefocus="true" class="link-h"
																											href="http://www.sitekc.com/?_di=100014&amp;_ds=2&amp;_s=10"
																											target="_blank">建站加盟</a>
																									</div>
																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight305"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom305"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left305"></td>
																							<td class="center center305"></td>
																							<td class="right right305"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat305"></div>
																				<div parentid="module305" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module305" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>


																		</div>
																		<div class="containerFormsLeftBottom">
																		</div>
																	</td>

																	<td id="containerFormsCenter"
																		class="containerFormsCenter" valign="top">

																		<div id="centerTopForms"
																			class="column forms mainForms centerTopForms ui-sortable">
																			<div _mousein="0" id="module301"
																				_indexclass="formIndex1"
																				class="form form301 formIndex1 formStyle1 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="false"
																				_independent="false">
																				<table class="formTop formTop301" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner301"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left301"></td>
																							<td class="center center301" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle301"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft301"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter301"
																												valign="top">
																												<div class="titleText titleText301">
																													<span> 公司简介</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight301"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther301">
																									<div class="formBannerBtn formBannerBtn301">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module301");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right301"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle301"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft301"></td>
																							<td class="formMiddleCenter formMiddleCenter301"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent301  ">

																									<div class="textImg2"
																										style="float: left; margin-top: 5px; margin-right: 10px; margin-bottom: 5px; margin-left: 5px; color: rgb(0, 0, 0); font-family: 宋体, 新宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
																										<img alt="" title=""
																											src="http://909.s21i.faidns.com/66909/2/ABUIABACGAAghvmY9gQojt-ooAYwnQM4eg.jpg"
																											style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: top; width: 395px; height: 112px;" />
																									</div>
																									<div class="richContent richContent2"
																										style="line-height: 1.8; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; white-space: normal; word-wrap: break-word; word-break: normal; overflow-x: visible; overflow-y: visible; width: auto; text-align: left; color: rgb(0, 0, 0); font-family: 宋体, 新宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
																										<div>
																											&nbsp;
																											&nbsp;××××有限公司是一家全面性的百货批发兼零售企业，公司成立于1994年，注册资金100万元，获得×××特种劳动防护用品经营企业。在百货批发、零售行业中有着良好的口碑，这十几年的经营管理销售中，公司一直注重信用、守合同、保证产品质量，并且以多品种经营特色和薄利多销的原则，赢得了广大客户的信任与支持。我公司主要经营中国市场各大品牌的洗洁精、洗衣粉、洗衣皂、香皂、洗发水、护发素、沐浴露、护肤品、花露水、毛巾、牙膏、牙刷、卫生巾、纸尿裤、卫生纸、卷筒纸、面纸、擦手纸、厨房卫浴清洁用品、消毒用品、空气清香剂、蚊香、杀虫剂等居家用品，以及各单位需要发放的夏令或冬令劳防用品。
																										</div>
																									</div>

																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight301"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom301"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left301"></td>
																							<td class="center center301"></td>
																							<td class="right right301"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat301"></div>
																				<div parentid="module301" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module301" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>

																			<div _mousein="0" id="module307"
																				_indexclass="formIndex2"
																				class="form form307 formIndex2 formStyle7 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="false"
																				_independent="false">
																				<table class="formTop formTop307" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner307"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left307"></td>
																							<td class="center center307" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle307"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft307"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter307"
																												valign="top">
																												<div class="titleText titleText307">
																													<span> 新闻动态</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight307"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther307">
																									<div class="formBannerMore formBannerMore307"
																										style="">
																										<a hidefocus="true"
																											href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nr.jsp"><span>更多&gt;&gt;</span>
																										</a>
																									</div>
																									<div class="formBannerBtn formBannerBtn307">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module307");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right307"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle307"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft307"></td>
																							<td class="formMiddleCenter formMiddleCenter307"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent307  ">
																									<div>
																										<div class="newsList " id="newsList307">
																											<div topclassname="top1" topswitch="on"
																												newsid="5" newsname="请编辑文章标题"
																												class="line  wWLine">
																												<table id="lineBody5" class="lineBody"
																													cellpadding="0" cellspacing="0">
																													<tbody>
																														<tr id="module307tr5">
																															<td style="width: 100%;"
																																class="newsTitle" valign="top">
																																<div class=""></div>
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=5&amp;_np=2_307"
																																	target="_blank" title="">请编辑文章标题</a>
																															</td>
																															<td style="width: 65px;"
																																class="newsCalendar" valign="top">
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=5&amp;_np=2_307"
																																	target="_blank">2014-09-26</a>
																															</td>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																											<div class="separatorLine g_separator "></div>
																											<div topclassname="top1" topswitch="on"
																												newsid="2" newsname="请编辑文章标题"
																												class="line  wWLine">
																												<table id="lineBody2" class="lineBody"
																													cellpadding="0" cellspacing="0">
																													<tbody>
																														<tr id="module307tr2">
																															<td style="width: 100%;"
																																class="newsTitle" valign="top">
																																<div class=""></div>
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=2&amp;_np=2_307"
																																	target="_blank" title="">请编辑文章标题</a>
																															</td>
																															<td style="width: 65px;"
																																class="newsCalendar" valign="top">
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=2&amp;_np=2_307"
																																	target="_blank">2014-09-26</a>
																															</td>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																											<div class="separatorLine g_separator "></div>
																											<div topclassname="top1" topswitch="on"
																												newsid="1" newsname="请编辑文章标题"
																												class="line  wWLine">
																												<table id="lineBody1" class="lineBody"
																													cellpadding="0" cellspacing="0">
																													<tbody>
																														<tr id="module307tr1">
																															<td style="width: 100%;"
																																class="newsTitle" valign="top">
																																<div class=""></div>
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=1&amp;_np=2_307"
																																	target="_blank" title="">请编辑文章标题</a>
																															</td>
																															<td style="width: 65px;"
																																class="newsCalendar" valign="top">
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=1&amp;_np=2_307"
																																	target="_blank">2014-09-26</a>
																															</td>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																											<div class="separatorLine g_separator "></div>
																											<div topclassname="top1" topswitch="on"
																												newsid="3" newsname="请编辑文章标题"
																												class="line  wWLine">
																												<table id="lineBody3" class="lineBody"
																													cellpadding="0" cellspacing="0">
																													<tbody>
																														<tr id="module307tr3">
																															<td style="width: 100%;"
																																class="newsTitle" valign="top">
																																<div class=""></div>
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=3&amp;_np=2_307"
																																	target="_blank" title="">请编辑文章标题</a>
																															</td>
																															<td style="width: 65px;"
																																class="newsCalendar" valign="top">
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=3&amp;_np=2_307"
																																	target="_blank">2014-09-26</a>
																															</td>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																											<div class="separatorLine g_separator "></div>
																											<div topclassname="top1" topswitch="on"
																												newsid="4" newsname="请编辑文章标题"
																												class="line  wWLine">
																												<table id="lineBody4" class="lineBody"
																													cellpadding="0" cellspacing="0">
																													<tbody>
																														<tr id="module307tr4">
																															<td style="width: 100%;"
																																class="newsTitle" valign="top">
																																<div class=""></div>
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=4&amp;_np=2_307"
																																	target="_blank" title="">请编辑文章标题</a>
																															</td>
																															<td style="width: 65px;"
																																class="newsCalendar" valign="top">
																																<a hidefocus="true"
																																	href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/nd.jsp?id=4&amp;_np=2_307"
																																	target="_blank">2014-09-26</a>
																															</td>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																											<div class="separatorLine g_separator "
																												style="border-color: transparent"></div>
																											<div class="clearfloat"></div>
																										</div>
																									</div>
																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight307"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom307"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left307"></td>
																							<td class="center center307"></td>
																							<td class="right right307"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat307"></div>
																				<div parentid="module307" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module307" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>

																			<div _mousein="0" id="module306"
																				_indexclass="formIndex3"
																				class="form form306 formIndex3 formStyle3 ui-resizable"
																				title="" style="" _side="0" _intab="0"
																				_inmulmcol="0" _autoheight="1" _global="false"
																				_independent="false">
																				<table class="formTop formTop306" cellpadding="0"
																					cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left"></td>
																							<td class="center"></td>
																							<td class="right"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBanner formBanner306"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left306"></td>
																							<td class="center center306" valign="top">
																								<table
																									class="formBannerTitle formBannerTitle306"
																									cellpadding="0" cellspacing="0">
																									<tbody>
																										<tr>
																											<td class="titleLeft titleLeft306"
																												valign="top">
																											</td>
																											<td class="titleCenter titleCenter306"
																												valign="top">
																												<div class="titleText titleText306">
																													<span> 热销产品</span>
																												</div>
																											</td>
																											<td class="titleRight titleRight306"
																												valign="top">
																											</td>
																										</tr>
																									</tbody>
																								</table>
																								<div class="formBannerOther formBannerOther306">
																									<div class="formBannerMore formBannerMore306"
																										style="">
																										<a hidefocus="true"
																											href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pr.jsp"><span>更多&gt;&gt;</span>
																										</a>
																									</div>
																									<div class="formBannerBtn formBannerBtn306">
																										<a hidefocus="true" href="javascript:;"
																											onclick='Site.closeAd("module306");return false;'
																											class="g_close"><span
																											style="_display: none;">&nbsp;</span> </a>
																									</div>
																								</div>
																							</td>
																							<td class="right right306"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formMiddle formMiddle306"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="formMiddleLeft formMiddleLeft306"></td>
																							<td class="formMiddleCenter formMiddleCenter306"
																								valign="top">
																								<div
																									class="formMiddleContent formMiddleContent306  ">
																									<div class="productMarqueeForms"
																										newmarqueetoward="1">
																										<div style="height: 237px;" class="demo">
																											<div style="width: 1710px;" class="demo0"
																												id="demo0306">
																												<div topclassname="top1" topswitch="on"
																													productid="1" productname="产品1"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct1"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=1&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品1" title="产品1">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; width: 160px; height: 15px;">
																														<a hidefocus="true" title="产品1"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=1&amp;_pp=2_306"
																															target="_blank">产品1</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A001</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div topclassname="top1" topswitch="on"
																													productid="2" productname="产品2"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct2"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=2&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品2" title="产品2">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; height: 15px; width: 160px;">
																														<a hidefocus="true" title="产品2"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=2&amp;_pp=2_306"
																															target="_blank">产品2</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A002</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div topclassname="top1" topswitch="on"
																													productid="3" productname="产品3"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct3"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=3&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品3" title="产品3">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; height: 15px; width: 160px;">
																														<a hidefocus="true" title="产品3"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=3&amp;_pp=2_306"
																															target="_blank">产品3</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A003</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div topclassname="top1" topswitch="on"
																													productid="4" productname="产品4"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct4"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=4&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品4" title="产品4">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; height: 15px; width: 160px;">
																														<a hidefocus="true" title="产品4"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=4&amp;_pp=2_306"
																															target="_blank">产品4</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A004</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div topclassname="top1" topswitch="on"
																													productid="5" productname="产品5"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct5"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=5&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品5" title="产品5">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; height: 15px; width: 160px;">
																														<a hidefocus="true" title="产品5"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=5&amp;_pp=2_306"
																															target="_blank">产品5</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A005</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div clonediv="true" topclassname="top1"
																													topswitch="on" productid="1"
																													productname="产品1"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct1_clone"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=1&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品1" title="产品1">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; width: 160px; height: 15px;">
																														<a hidefocus="true" title="产品1"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=1&amp;_pp=2_306"
																															target="_blank">产品1</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A001</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div clonediv="true" topclassname="top1"
																													topswitch="on" productid="2"
																													productname="产品2"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct2_clone"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=2&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品2" title="产品2">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; height: 15px; width: 160px;">
																														<a hidefocus="true" title="产品2"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=2&amp;_pp=2_306"
																															target="_blank">产品2</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A002</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div clonediv="true" topclassname="top1"
																													topswitch="on" productid="3"
																													productname="产品3"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct3_clone"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=3&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品3" title="产品3">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; height: 15px; width: 160px;">
																														<a hidefocus="true" title="产品3"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=3&amp;_pp=2_306"
																															target="_blank">产品3</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A003</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																												<div clonediv="true" topclassname="top1"
																													topswitch="on" productid="4"
																													productname="产品4"
																													class="productMarqueeForm " faiwidth="160"
																													faiheight="160">
																													<div id="m306marqueeProduct4_clone"
																														class="imgDiv">
																														<table cellpadding="0" cellspacing="0">
																															<tbody>
																																<tr>
																																	<td align="center" valign="middle">
																																		<a hidefocus="true"
																																			href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=4&amp;_pp=2_306"
																																			target="_blank"> <img
																																				src="czqjay_files/0_thumb_2.jpg"
																																				style="width: 160px; height: 160px;"
																																				alt="产品4" title="产品4">
																																		</a>
																																	</td>
																																</tr>
																															</tbody>
																														</table>
																													</div>
																													<div
																														class="propDiv productName propWordWrapDiv"
																														style="text-align: center; height: 15px; width: 160px;">
																														<a hidefocus="true" title="产品4"
																															href="file:///D:/%E6%A1%8C%E9%9D%A2/sunitDesktop/pd.jsp?id=4&amp;_pp=2_306"
																															target="_blank">产品4</a>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">编号：</span>
																														<span class="propValue">A004</span>
																													</div>
																													<div class="propDiv"
																														style="text-align: center; width: 160px;">
																														<span class="propName">价格：</span>
																														<span class="propValue g_stress mallPrice">￥0.00</span>
																													</div>
																												</div>
																											</div>
																										</div>
																									</div>
																								</div>
																							</td>
																							<td class="formMiddleRight formMiddleRight306"></td>
																						</tr>
																					</tbody>
																				</table>
																				<table class="formBottom formBottom306"
																					cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td class="left left306"></td>
																							<td class="center center306"></td>
																							<td class="right right306"></td>
																						</tr>
																					</tbody>
																				</table>
																				<div class="clearfloat clearfloat306"></div>
																				<div parentid="module306" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-resizable-s ui-icon ui-resizable-bottomLine"></div>
																				<div parentid="module306" title="按住鼠标，可随意调整高度"
																					style="z-index: 1000; display: none;"
																					class="ui-resizable-handle ui-icon ui-resizable-s ui-resizable-bottomTip south-cursor"></div>
																			</div>


																		</div>
																		<div class="containerFormsCenterMiddle">
																			<div id="middleLeftForms"
																				class="column forms mainForms middleLeftForms ui-sortable"
																				style="display: none; padding-right: 14px;">

																			</div>
																			<div id="middleRightForms"
																				class="column forms mainForms middleRightForms ui-sortable"
																				style="display: none;">

																			</div>
																		</div>
																		<div id="centerBottomForms"
																			class="column forms mainForms centerBottomForms ui-sortable"
																			style="display: none;">

																		</div>
																	</td>

																	<td id="containerFormsRight"
																		class="containerFormsRight" style="display: none"
																		valign="top">
																		<div class="containerFormsRightTop">
																		</div>
																		<div id="rightForms"
																			class="column forms sideForms rightForms ui-sortable">

																		</div>
																		<div class="containerFormsRightBottom">
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>

														<div id="bottomForms"
															class="column forms mainForms bottomForms ui-sortable"
															style="display: none;">

														</div>

														<div id="containerPlaceholder"
															class="containerPlaceholder"></div>

													</div>

													<div id="containerMiddleCenterBottom"
														class="containerMiddleCenterBottom">
													</div>

												</td>

												<td id="containerMiddleRight" class="containerMiddleRight"></td>
											</tr>
										</tbody>
									</table>

									<table class="containerBottom" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="left"></td>
												<td class="center"></td>
												<td class="right"></td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table class="absBottomTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="absBottomForms" class="forms sideForms absForms">
								<div style="position: absolute;"></div>
								<!-- for ie6 -->

							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table id="webFooterTable" class="webFooterTable" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td align="center" valign="top">
							<div id="webFooter" class="webFooter">




								<div id="footer" class="footer">
									<table class="footerTop" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="topLeft"></td>
												<td class="topCenter"></td>
												<td class="topRight"></td>
											</tr>
										</tbody>
									</table>
									<table class="footerMiddle" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="middleLeft"></td>
												<td class="middleCenter" align="center">
													<div class="footerContent">

														<div id="footerNav" class="footerNav">
															<span class="footerNavItem" id="footer2"><a
																hidefocus="true" href="file:///">首页</a> </span>
															<span class="footerSep">|</span>
															<span class="footerNavItem" id="footer101"><a
																hidefocus="true" href="file:///col.jsp?id=101">关于我们</a>
															</span>
															<span class="footerSep">|</span>
															<span class="footerNavItem" id="footer102"><a
																hidefocus="true" href="file:///col.jsp?id=102">联系我们</a>
															</span>

														</div>

														<div class="footerInfo">
															<font face="Arial">?</font>2014&nbsp;czqjay&nbsp;版权所有
														</div>

														<div class="footerSupport">

															<span class="footerFaisco">技术支持：<a
																hidefocus="true" href="http://www.faisco.com/?_ta=4"
																onclick="Site.logDog(100065, 0);" target="_blank">凡科网</a>
															</span>
															<span class="footerSep">|</span>
															<span class="footerMobile"><a hidefocus="true"
																href="http://m.czqjay.icoc.cc/" target="_blank">手机版</a>
															</span>
															<span class="footerSep">|</span>
															<span id="footerLogin" class="footerLogin"><a
																name="popupLogin" hidefocus="true" href="javascript:;"
																onclick='Site.popupLogin("http://www.faisco.cn",4327589);Fai.closeTip("#footerLogin");Site.setCookieFlag(37, true);return false;'>管理登录</a>
															</span>

															<span class="bgplayerButton" id="bgplayerButton"
																style="display: none;"></span>
														</div>



													</div>
												</td>
												<td class="middleRight"></td>
											</tr>
										</tbody>
									</table>
									<table class="footerBottom" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="bottomLeft"></td>
												<td class="bottomCenter"></td>
												<td class="bottomRight"></td>
											</tr>
										</tbody>
									</table>

								</div>


							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<div class="clearfloat"></div>
		</div>
	</div>

	<!-- 左下角广告-->

	<div style="display: none;" class="siteAdvertisement_boxTip">
		<p>
			此广告栏仅
			<span style="">免费版</span>显示
		</p>
		<div class="siteAdvertisementTipTri"></div>
	</div>


	<div class="siteAdvertisement_box" style="display: none;">
		<div class="siteAdvertisement_Inner">
			<div class="siteAdvertisement_title">
				<a class="reportUrl"
					href="http://www.faisco.com/ts.html?t=3&amp;a=czqjay"
					target="_blank">举报</a>
				<a class="closeImg" href="javascript:void(0)"></a>
			</div>


			<a class="siteAdvertisement_adImg" target="_blank"
				href="http://www.faisco.com/pro/20140901.html?_s=4"><img
					src="czqjay_files/20140904.jpg" alt="轻松建网站" height="125"
					width="125">
			</a>
		</div>
		<a class="freeJZ" href="http://blog.faisco.com/474" target="_blank"><span>申请网站代建</span>
		</a>

	</div>




	<div id="hiddenModuleForms" class="hiddenModuleForms"></div>


	<div style="top: 27px;" class="floatLeftTop">
		<div id="floatLeftTopForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div style="top: 27px;" class="floatRightTop">
		<div id="floatRightTopForms" class="forms sideForms floatForms">
			<div _mousein="0" id="module311" _indexclass="formIndex1"
				class="form  formIndex1 formStyle67 ui-draggable ui-resizable"
				title=""
				style="position: absolute; top: 180px; left: 0px; width: 180px; overflow: visible;"
				_side="1" _intab="0" _inmulmcol="0" _autoheight="1" _global="true"
				_independent="false">
				<table class="formTop formTop311" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td class="left"></td>
							<td class="center"></td>
							<td class="right"></td>
						</tr>
					</tbody>
				</table>
				<table class="formBanner formBanner311" cellpadding="0"
					cellspacing="0">
					<tbody>
						<tr>
							<td class="left left311"></td>
							<td class="center center311" valign="top">
								<table class="formBannerTitle formBannerTitle311"
									cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="titleLeft titleLeft311" valign="top">
											</td>
											<td class="titleCenter titleCenter311" valign="top">
												<div class="titleText titleText311">
													<span> 分享网站</span>
												</div>
											</td>
											<td class="titleRight titleRight311" valign="top">
											</td>
										</tr>
									</tbody>
								</table>
								<div class="formBannerOther formBannerOther311">
									<div class="formBannerBtn formBannerBtn311">
										<a hidefocus="true" href="javascript:;"
											onclick='Site.closeAd("module311");return false;'
											class="g_close"><span style="_display: none;">&nbsp;</span>
										</a>
									</div>
								</div>
							</td>
							<td class="right right311"></td>
						</tr>
					</tbody>
				</table>
				<table class="formMiddle formMiddle311" cellpadding="0"
					cellspacing="0">
					<tbody>
						<tr>
							<td class="formMiddleLeft formMiddleLeft311"></td>
							<td style="vertical-align: top;"
								class="formMiddleCenter formMiddleCenter311" valign="top">
								<div class="formMiddleContent formMiddleContent311  ">
									<div class="shareInfo">
										<div class="shareCtrl shareNotTitlePanel shareMt">
											<a hidefocus="true" title="分享到腾讯微博" href="javascript:;"
												onclick='window.open("http://v.t.qq.com/share/share.php?title=%E3%80%90czqjay%E3%80%91http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;url=http://www.czqjay.icoc.cc/?_sc=1&amp;pic=")'><div
													class="shareIcon qq_weibo"></div>
												<div class="shareCtrl">
													腾讯微博
												</div> </a><a hidefocus="true" title="分享到复制网址" href="javascript:;"
												onclick="Site.copyWebSite('http://www.czqjay.icoc.cc')"><div
													class="shareIcon copy"></div>
												<div class="shareCtrl">
													复制网址
												</div> </a><a hidefocus="true" title="分享到新浪微博" href="javascript:;"
												onclick='window.open("http://service.weibo.com/share/share.php?title=%E3%80%90czqjay%E3%80%91http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;url=http://www.czqjay.icoc.cc/?_sc=1&amp;pic=")'><div
													class="shareIcon sina_weibo"></div>
												<div class="shareCtrl">
													新浪微博
												</div> </a><a hidefocus="true" title="分享到QQ空间" href="javascript:;"
												onclick='window.open("http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?summary=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;url=http://www.czqjay.icoc.cc/?_sc=1&amp;pics=&amp;title=%E3%80%90czqjay%E3%80%91")'><div
													class="shareIcon qq_zone"></div>
												<div class="shareCtrl">
													QQ空间
												</div> </a><a hidefocus="true" title="分享到开心网" href="javascript:;"
												onclick='window.open("http://www.kaixin001.com/rest/records.php?content=%E3%80%90czqjay%E3%80%91http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;style=11")'><div
													class="shareIcon kaixin001"></div>
												<div class="shareCtrl">
													开心网
												</div> </a><a hidefocus="true" title="分享到人人网" href="javascript:;"
												onclick='window.open("http://widget.renren.com/dialog/share?resourceUrl=http://www.czqjay.icoc.cc/?_sc=1&amp;description=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;title=%E3%80%90czqjay%E3%80%91&amp;pic=")'><div
													class="shareIcon renren"></div>
												<div class="shareCtrl">
													人人网
												</div> </a><a hidefocus="true" title="分享到豆瓣网" href="javascript:;"
												onclick='window.open("http://shuo.douban.com/!service/share?name=%E3%80%90czqjay%E3%80%91http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;text=http://www.czqjay.icoc.cc/?_sc=1&amp;image=")'><div
													class="shareIcon douban"></div>
												<div class="shareCtrl">
													豆瓣网
												</div> </a><a hidefocus="true" title="分享到淘江湖" href="javascript:;"
												onclick='window.open("http://share.jianghu.taobao.com/share/addShare.htm?url=http://www.czqjay.icoc.cc/?_sc=1&amp;title=%E3%80%90czqjay%E3%80%91")'><div
													class="shareIcon taojianghu"></div>
												<div class="shareCtrl">
													淘江湖
												</div> </a><a hidefocus="true" title="分享到搜狐微博" href="javascript:;"
												onclick='window.open("http://t.sohu.com/third/post.jsp?url=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;title=%A1%BEczqjay%A1%BF")'><div
													class="shareIcon sohu_weibo"></div>
												<div class="shareCtrl">
													搜狐微博
												</div> </a><a hidefocus="true" title="分享到网易微博" href="javascript:;"
												onclick='window.open("http://t.163.com/article/user/checkLogin.do?info=%E3%80%90czqjay%E3%80%91http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;images=&amp;togImg=true")'><div
													class="shareIcon netease_weibo"></div>
												<div class="shareCtrl">
													网易微博
												</div> </a><a hidefocus="true" title="分享到百度空间" href="javascript:;"
												onclick='window.open("http://apps.hi.baidu.com/share/?content=http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1&amp;url=http://www.czqjay.icoc.cc/?_sc=1&amp;title=%E3%80%90czqjay%E3%80%91")'><div
													class="shareIcon baidu_hi"></div>
												<div class="shareCtrl">
													百度空间
												</div> </a><a hidefocus="true" title="分享到百度贴吧" href="javascript:;"
												onclick='window.open("http://tieba.baidu.com/i/app/open_share_api?comment=&amp;pic=&amp;url=http://www.czqjay.icoc.cc/?_sc=1&amp;title=%E3%80%90czqjay%E3%80%91http%3A%2F%2Fwww.czqjay.icoc.cc%2F%3F_sc%3D1")'><div
													class="shareIcon baidu_tieba"></div>
												<div class="shareCtrl">
													百度贴吧
												</div> </a>
										</div>
										<div class="clearfloat"></div>
									</div>
								</div>
							</td>
							<td class="formMiddleRight formMiddleRight311"></td>
						</tr>
					</tbody>
				</table>
				<table class="formBottom formBottom311" cellpadding="0"
					cellspacing="0">
					<tbody>
						<tr>
							<td class="left left311"></td>
							<td class="center center311"></td>
							<td class="right right311"></td>
						</tr>
					</tbody>
				</table>
				<div class="clearfloat clearfloat311"></div>
				<div style="z-index: 1000;"
					class="ui-resizable-handle ui-resizable-n"></div>
				<div style="z-index: 1000;"
					class="ui-resizable-handle ui-resizable-e"></div>
				<div style="z-index: 1000;"
					class="ui-resizable-handle ui-resizable-s"></div>
				<div style="z-index: 1000;"
					class="ui-resizable-handle ui-resizable-w"></div>
				<div parentid="module311" title="按住鼠标，可随意调整宽高。"
					style="z-index: 1000; display: none;"
					class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-resizable-rightTip"></div>
				<div parentid="module311" title="按住鼠标，可随意调整宽高。"
					style="z-index: 1000; display: none;"
					class="ui-resizable-handle ui-resizable-sw ui-icon ui-icon-gripsmall-diagonal-ns ui-resizable-leftTip"></div>
				<div style="top: 48px; left: -26px;" id="module311SideBtn"
					class="g_sideBtn">
					<div class="g_sideBtn_t g_sB_rt"></div>
					<div class="g_sideBtn_c g_sB_rc">
						<span class="g_sideBtn_tl"> 分享网站</span>
					</div>
					<div class="g_sideBtn_b g_sB_rb"></div>
					<div class="g_sideBtn_extend g_sB_re"></div>
				</div>
			</div>


		</div>
	</div>
	<div class="floatLeftBottom">
		<div id="floatLeftBottomForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div class="floatRightBottom">
		<div id="floatRightBottomForms" class="forms sideForms floatForms">

		</div>
	</div>


	<div style="top: 219.2px; left: 58px;" class="guideQuickIco"
		id="guideQuick" title="点击查看建站指引"
		onclick="Site.siteGuidePopupWindow();Site.logDog(100074, 2);$.cookie('isSiteGuideClick', 1, { expires: 365, path : '/'});"></div>



	<!--右下角公告-->










	<!--续费提示-->


	<div id="siteRenewNotice_small_box" class="siteRenewNotice_small_box"></div>

	<div id="siteRenewNotice_box" class="siteRenewNotice_box">
		<div class="siteRenewNotice_title">
			<a href="" onclick="javascript:return false;"
				class="siteRenewNotice_close" id="siteRenewNotice_close"></a>
		</div>
		<div class="siteRenewNotice_middle">
			<div class="siteRenewNotice_top">
				<h3>
					<span class="siteRenewNotice_name">提示</span>
				</h3>
			</div>
			<div class="siteRenewNotice_get"></div>


			<div class="siteRenewNotice_bottom">

				<div class="siteRenewNotice_bottom_div">
					<div>
						boss：
					</div>
					<div>
						&nbsp;&nbsp;&nbsp;&nbsp;您好，您的将在1000天内到期，为了使网站能够正常使用，请您及时续费。
					</div>
				</div>

				<div class="siteRenewNoticeIncludeA">
					<a class="styleRenewNoticeA"
						href="http://www.faisco.cn/jump.jsp?t=1" target="_blank">
						<div class="styleRenewNoticeButton"></div> </a>
					<a id="siteRenewNotice_close_a" class="styleRenewNoticeA"> 我知道了
					</a>
				</div>
			</div>

		</div>
	</div>





	<div id="bgMusic" class="bgMusic">

	</div>



	<script type="text/javascript" src="czqjay_files/jquery-core.js"></script>
	<script type="text/javascript" src="czqjay_files/jquery-mousewheel.js"></script>
	<script type="text/javascript" src="czqjay_files/fai.js"></script>
	<script type="text/javascript" src="czqjay_files/jquery-ui-core.js"></script>
	<script type="text/javascript" src="czqjay_files/site.js"></script>
	<script type="text/javascript" src="czqjay_files/2052.js"></script>
	<script type="text/javascript" src="czqjay_files/ZeroClipboard.js"></script>




	<script type="text/javascript" src="czqjay_files/faiui.js"></script>
	<script type="text/javascript" src="czqjay_files/manage.js"></script>



	<script type="text/javascript">
Fai.top = window;
var bgmCloseToOpen = false;
window.onerror = function() {
	if (typeof Site == 'undefined') {
		alert('您的网页未加载完成，请尝试按“CTRL+功能键F5”重新加载。');
	}
};
var _colOtherStyleData = {"y":0,"h":0,"independentList":[],"layout4Width":0,"layout5Width":0};						// 当前页面的数据    
var _templateOtherStyleData = {"h":614,"independentList":[],"y":0,"layout4Width":0,"layout5Width":0};						// 全局的数据   
$(function() {
	if(false){
		Fai.ing("",true);
	}
	//topBarMember 
	
	
	// 管理态下, QQ/微博登陆 禁止登陆
	if( _manageMode ) {
		$('#memberBar .l_Btn').click(function(){
			Fai.ing('您目前处于网站管理状态，请先点击网站右上方的“退出”后再登录会员。', true);
		});
		//绑定放大镜遮罩效果事件
		Site.bindEventToOverLayer();
		
			//初始化浮动设置面板
			Site.initFaiFloatPanelIcon();
		
		
		
	}
	
	
	
	
	var faiscoAd = $.cookie('faiscoAd',{path:'/'});
	
	if( true && faiscoAd !== "false" ){
		$(".siteAdvertisement_box").show();
	}
	
	

	
	
	
	
	// 绑定退出事件
	$(window).bind("beforeunload", function(e) { 

		 
			if(bgmCloseToOpen){
				Site.bgmFlushContinue();
			}	
	
	
	if(_changeStyleNum > 0) {return '您的网站设计正处于编辑状态，离开该页面将会失去您对网站所做的修改。';}

	
		
	});
	

	Site.initTemplateLayout(1, true);

	// spider统计
	

	
	// ajax统计
	Site.total({colId:2, pdId:-1, ndId:-1, sc:0, rf:"http://www.faisco.cn/default.jsp"});
	//保留旧用户的初始化版式区域4 和区域5 中，区域4的padding-right空间
	Site.colLayout45Width();

	Site.initNavList([{"operationText":"新增栏目","display":"text","evalScript":"Site.popupWindow({title:'新增栏目', frameSrcUrl:'manage/colEdit.jsp?ram='+Math.random(), width:'425', height:'230'});"},{"operationText":"管理栏目","display":"text","evalScript":"Site.popupWindow({title:'管理栏目', frameSrcUrl:'manage/nav.jsp?ram='+Math.random(), width:'675', height:'450'});"},{"operationText":"设置样式","display":"text","evalScript":"Site.popupWindow({title:'设置导航栏样式', frameSrcUrl:'manage/navStyleEdit.jsp?ram='+Math.random(), width:'490', height:'330', saveBeforePopup:false});"},{"display":"text","operationText":"隐藏","operationTitle":"点击隐藏栏目，隐藏后可以从\u201C网站设计\u201D-\u201C网站设置\u201D重新选择。","className":"close","evalScript":"Site.hiddenNav();"}]);
Site.initFooterManage([{"operationText":"新增栏目","display":"text","evalScript":"Site.popupWindow({title:'新增底部导航栏目', frameSrcUrl:'manage/colEdit.jsp?model=addFooter&ram='+Math.random(), width:'425', height:'230'});"},{"operationText":"管理栏目","display":"text","evalScript":"Site.popupWindow({title:'管理底部导航栏目', frameSrcUrl:'manage/footer.jsp?ram='+Math.random(), width:'635', height:'410'});"},{"operationText":"设置样式","display":"text","evalScript":"Site.faiFloatPanel(2,2,4);"},{"operationText":"编辑内容","display":"text","evalScript":"Site.popupWindow({title:'编辑底部内容', frameSrcUrl:'manage/footerInfoEdit.jsp?ram='+Math.random(), width:'600', height:'380'});"}]);
Site.initCorpTitleManage([{"display":"text","operationText":"编辑标题","operationTitle":"点击编辑标题","className":"edit","evalScript":"Site.popupWindow({title:'编辑网站标题', frameSrcUrl:'manage/corpTitleEdit.jsp?ram='+Math.random(), width:'403', height:'205', saveBeforePopup:false});"},{"display":"text","operationText":"隐藏","operationTitle":"点击隐藏标题，隐藏后可以从\u201C网站设计\u201D-\u201C网站设置\u201D重新选择。","className":"close","evalScript":"Site.hiddenTitle();"}]);
Site.initCorpTitleJump();
Site.initLogoManage([{"display":"text","operationText":"编辑LOGO","operationTitle":"点击编辑LOGO","className":"edit","evalScript":"Site.popupWindow({title:'编辑LOGO', frameSrcUrl:'manage/logoEdit.jsp?ram='+Math.random(), width:'395', height:'230', opacity:'0.2', saveBeforePopup:false});"},{"display":"text","operationText":"隐藏","operationTitle":"点击隐藏LOGO，隐藏后可以从\u201C网站设计\u201D-\u201C网站设置\u201D重新选择。","className":"close","evalScript":"Site.hiddenLogo();"}]);
Site.initBanner({"_open":false}, {"_open":false}, 0);
Site.initBannerManage([{"id":"btn-editBanner","display":"text","operationText":"编辑横幅","operationTitle":"点击编辑横幅","evalScript":"Site.styleSetting('open', 'webBannerTab')"},{"id":"btn-editBanner","display":"text","operationText":"设置样式","operationTitle":"点击设置样式","evalScript":"Site.logDog(100041, 7); Site.popupWindow({title:'设置横幅样式', frameSrcUrl:'manage/styleBannerSetting.jsp?ram='+Math.random(), width:488, height:220, saveBeforePopup:false});"},{"id":"btn-editBanner","display":"text","operationText":"设置特效","operationTitle":"点击设置横幅特效","evalScript":"Site.styleSetting('open', 'webBannerTab', false, 'showBannerEffects')"},{"display":"text","operationText":"隐藏","operationTitle":"点击隐藏横幅，隐藏后可以从\u201C网站设计\u201D-\u201C网站设置\u201D重新选择。","className":"close","evalScript":"Site.hiddenBanner();"}]);
Site.initModuleProductSearch(312);
Site.initModuleLayer(312, [{"text":"编辑模块","title":"编辑产品搜索模块","evalScript":"Site.popupWindow({title:'编辑产品搜索模块', frameSrcUrl:'manage/productSearchModuleEdit.jsp?id=312&colId=2&extId=0&ram='+Math.random(), width:'500', height:'270', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=312&style=45&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"搜索框样式","title":"编辑搜索框样式","evalScript":"Site.popupWindow({title:'编辑搜索框样式', frameSrcUrl:'manage/searchBoxStyleEdit.jsp?id=312&colId=2&extId=0&ram='+Math.random(), width:'500', height:'325', saveBeforePopup:false});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module312');","evalScript":"Site.dock2('module312');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module312');","evalScript":"Site.floatOut2('module312');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module312');","evalScript":"Site.lock2('module312');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module312');","evalScript":"Site.sideModule2('module312');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module312');","evalScript":"Site.flutter('module312');"},{"hrLine":true},{"display":"icon","text":"取消全站模块","title":"取消该模块在所有栏目中展示。","iconClass":"global","evalScript":"Site.setGlobalModule(312, false);","statusScript":"Site.getLayoutItemStatus('module312');"},{"display":"icon","text":"本页独立布局","title":"该模块在本页面独立布局。","iconClass":"independent","evalScript":"Site.independentModule(312, true);"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(312, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module312');","evalScript":"Site.openAddModule(312)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module312');","evalScript":"Site.moveModulePosTop('module312');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module312');","evalScript":"Site.moveModulePosBottom('module312');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module312');","evalScript":"Site.moveModulePosLeft('module312');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module312');","evalScript":"Site.moveModulePosRight('module312');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module312');","evalScript":"Site.absMiddleModule('module312');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module312');","evalScript":"Site.absBottomModule('module312');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module312');","evalScript":"Site.absZIndexModule('module312');"}],true);

Site.initModuleProductGroup(304, false);
Site.initModuleLayer(304, [{"text":"编辑模块","title":"编辑产品分类模块","evalScript":"Site.popupWindow({title:'编辑产品分类模块', frameSrcUrl:'manage/productGroupModuleEdit.jsp?id=304&colId=2&extId=0&ram='+Math.random(), width:'560', height:'390', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=304&style=26&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"管理分类","title":"管理产品分类","evalScript":"Site.popupWindow({title:'管理产品分类', frameSrcUrl:'manage/productGroupEdit.jsp?ram='+Math.random(), width:'585', height:'450', saveBeforePopup:true});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module304');","evalScript":"Site.dock2('module304');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module304');","evalScript":"Site.floatOut2('module304');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module304');","evalScript":"Site.lock2('module304');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module304');","evalScript":"Site.sideModule2('module304');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module304');","evalScript":"Site.flutter('module304');"},{"hrLine":true},{"display":"icon","text":"取消全站模块","title":"取消该模块在所有栏目中展示。","iconClass":"global","evalScript":"Site.setGlobalModule(304, false);","statusScript":"Site.getLayoutItemStatus('module304');"},{"display":"icon","text":"本页独立布局","title":"该模块在本页面独立布局。","iconClass":"independent","evalScript":"Site.independentModule(304, true);"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(304, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module304');","evalScript":"Site.openAddModule(304)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module304');","evalScript":"Site.moveModulePosTop('module304');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module304');","evalScript":"Site.moveModulePosBottom('module304');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module304');","evalScript":"Site.moveModulePosLeft('module304');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module304');","evalScript":"Site.moveModulePosRight('module304');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module304');","evalScript":"Site.absMiddleModule('module304');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module304');","evalScript":"Site.absBottomModule('module304');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module304');","evalScript":"Site.absZIndexModule('module304');"}],true);

Site.initModuleLayer(308, [{"text":"编辑模块","title":"编辑在线客服模块","evalScript":"Site.popupWindow({title:'编辑在线客服模块', frameSrcUrl:'manage/serviceOnlineModuleEdit.jsp?id=308&colId=2&extId=0&ram='+Math.random(), width:'655', height:'340', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=308&style=40&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module308');","evalScript":"Site.dock2('module308');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module308');","evalScript":"Site.floatOut2('module308');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module308');","evalScript":"Site.lock2('module308');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module308');","evalScript":"Site.sideModule2('module308');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module308');","evalScript":"Site.flutter('module308');"},{"hrLine":true},{"display":"icon","text":"取消全站模块","title":"取消该模块在所有栏目中展示。","iconClass":"global","evalScript":"Site.setGlobalModule(308, false);","statusScript":"Site.getLayoutItemStatus('module308');"},{"display":"icon","text":"本页独立布局","title":"该模块在本页面独立布局。","iconClass":"independent","evalScript":"Site.independentModule(308, true);"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(308, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module308');","evalScript":"Site.openAddModule(308)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module308');","evalScript":"Site.moveModulePosTop('module308');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module308');","evalScript":"Site.moveModulePosBottom('module308');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module308');","evalScript":"Site.moveModulePosLeft('module308');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module308');","evalScript":"Site.moveModulePosRight('module308');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module308');","evalScript":"Site.absMiddleModule('module308');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module308');","evalScript":"Site.absBottomModule('module308');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module308');","evalScript":"Site.absZIndexModule('module308');"}],true);

Site.initModuleLayer(302, [{"text":"编辑模块","title":"编辑图文展示模块","evalScript":"Site.popupWindow({title:'编辑图文展示模块', frameSrcUrl:'manage/richEdit.jsp?id=302&colId=2&extId=0&ram='+Math.random(), width:'830', height:'500', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=302&style=1&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module302');","evalScript":"Site.dock2('module302');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module302');","evalScript":"Site.floatOut2('module302');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module302');","evalScript":"Site.lock2('module302');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module302');","evalScript":"Site.sideModule2('module302');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module302');","evalScript":"Site.flutter('module302');"},{"hrLine":true},{"display":"icon","text":"取消全站模块","title":"取消该模块在所有栏目中展示。","iconClass":"global","evalScript":"Site.setGlobalModule(302, false);","statusScript":"Site.getLayoutItemStatus('module302');"},{"display":"icon","text":"本页独立布局","title":"该模块在本页面独立布局。","iconClass":"independent","evalScript":"Site.independentModule(302, true);"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(302, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module302');","evalScript":"Site.openAddModule(302)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module302');","evalScript":"Site.moveModulePosTop('module302');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module302');","evalScript":"Site.moveModulePosBottom('module302');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module302');","evalScript":"Site.moveModulePosLeft('module302');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module302');","evalScript":"Site.moveModulePosRight('module302');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module302');","evalScript":"Site.absMiddleModule('module302');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module302');","evalScript":"Site.absBottomModule('module302');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module302');","evalScript":"Site.absZIndexModule('module302');"}],true);

Site.initModuleLayer(305, [{"text":"编辑模块","title":"编辑图文链接模块","evalScript":"Site.popupWindow({title:'编辑图文链接模块', frameSrcUrl:'manage/linkModuleEdit.jsp?id=305&colId=2&extId=0&ram='+Math.random(), width:'650', height:'360', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=305&style=33&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module305');","evalScript":"Site.dock2('module305');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module305');","evalScript":"Site.floatOut2('module305');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module305');","evalScript":"Site.lock2('module305');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module305');","evalScript":"Site.sideModule2('module305');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module305');","evalScript":"Site.flutter('module305');"},{"hrLine":true},{"display":"icon","text":"设为全站模块","title":"把模块添加到整个网站的所有栏目中","iconClass":"global","evalScript":"Site.setGlobalModule(305, true);","statusScript":"Site.getLayoutItemStatus('module305');"},{"display":"icon","text":"加到指定栏目","title":"把模块添加到指定栏目中","iconClass":"apply","evalScript":"Site.applyModuleTo(305);","statusScript":"Site.getLayoutItemStatus('module305');"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(305, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module305');","evalScript":"Site.openAddModule(305)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module305');","evalScript":"Site.moveModulePosTop('module305');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module305');","evalScript":"Site.moveModulePosBottom('module305');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module305');","evalScript":"Site.moveModulePosLeft('module305');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module305');","evalScript":"Site.moveModulePosRight('module305');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module305');","evalScript":"Site.absMiddleModule('module305');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module305');","evalScript":"Site.absBottomModule('module305');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module305');","evalScript":"Site.absZIndexModule('module305');"}],true);

Site.initModuleLayer(301, [{"text":"编辑模块","title":"编辑图文展示模块","evalScript":"Site.popupWindow({title:'编辑图文展示模块', frameSrcUrl:'manage/richEdit.jsp?id=301&colId=2&extId=0&ram='+Math.random(), width:'830', height:'500', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=301&style=1&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module301');","evalScript":"Site.dock2('module301');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module301');","evalScript":"Site.floatOut2('module301');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module301');","evalScript":"Site.lock2('module301');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module301');","evalScript":"Site.sideModule2('module301');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module301');","evalScript":"Site.flutter('module301');"},{"hrLine":true},{"display":"icon","text":"设为全站模块","title":"把模块添加到整个网站的所有栏目中","iconClass":"global","evalScript":"Site.setGlobalModule(301, true);","statusScript":"Site.getLayoutItemStatus('module301');"},{"display":"icon","text":"加到指定栏目","title":"把模块添加到指定栏目中","iconClass":"apply","evalScript":"Site.applyModuleTo(301);","statusScript":"Site.getLayoutItemStatus('module301');"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(301, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module301');","evalScript":"Site.openAddModule(301)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module301');","evalScript":"Site.moveModulePosTop('module301');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module301');","evalScript":"Site.moveModulePosBottom('module301');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module301');","evalScript":"Site.moveModulePosLeft('module301');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module301');","evalScript":"Site.moveModulePosRight('module301');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module301');","evalScript":"Site.absMiddleModule('module301');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module301');","evalScript":"Site.absBottomModule('module301');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module301');","evalScript":"Site.absZIndexModule('module301');"}],true);

Site.loadNewsList(307);
Site.initModuleNewsListItemManage({'newsParent':'newsList307','news':'line','newsChild':'lineBody','moduleId':307,'frameSrcUrl':'manage/newsEdit.jsp?ram='+Math.random()});
Site.initModuleLayer(307, [{"text":"编辑模块","title":"编辑文章列表模块","evalScript":"Site.popupWindow({title:'编辑文章列表模块', frameSrcUrl:'manage/newsModuleEdit.jsp?id=307&colId=2&extId=0&ram='+Math.random(), width:'580', height:'495', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=307&style=7&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"添加文章","evalScript":"Site.popupWindow({title:'添加文章', frameSrcUrl:'manage/newsEdit.jsp?mGroupTypeId=0&ram='+Math.random(), callArgs:'newsList',  closeFunc:Site.afterAddNews, width:'770', height:'450'});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module307');","evalScript":"Site.dock2('module307');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module307');","evalScript":"Site.floatOut2('module307');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module307');","evalScript":"Site.lock2('module307');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module307');","evalScript":"Site.sideModule2('module307');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module307');","evalScript":"Site.flutter('module307');"},{"hrLine":true},{"display":"icon","text":"设为全站模块","title":"把模块添加到整个网站的所有栏目中","iconClass":"global","evalScript":"Site.setGlobalModule(307, true);","statusScript":"Site.getLayoutItemStatus('module307');"},{"display":"icon","text":"加到指定栏目","title":"把模块添加到指定栏目中","iconClass":"apply","evalScript":"Site.applyModuleTo(307);","statusScript":"Site.getLayoutItemStatus('module307');"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(307, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module307');","evalScript":"Site.openAddModule(307)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module307');","evalScript":"Site.moveModulePosTop('module307');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module307');","evalScript":"Site.moveModulePosBottom('module307');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module307');","evalScript":"Site.moveModulePosLeft('module307');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module307');","evalScript":"Site.moveModulePosRight('module307');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module307');","evalScript":"Site.absMiddleModule('module307');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module307');","evalScript":"Site.absBottomModule('module307');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module307');","evalScript":"Site.absZIndexModule('module307');"}],true);

Site.loadProductMarquee(306, true, false, 1);
Fai.top.changeMarquee306 = function(){Fai.stopInterval('marquee306');Site.loadProductMarquee(306, true, false, 1);};
Site.initModuleProductListItemManage({'productSelect':false,'productParent':'demo0306','product':'productMarqueeForm','productChild':'imgDiv','moduleId':306,'frameSrcUrl':'manage/productEdit.jsp?ram='+Math.random()});
Site.initModuleLayer(306, [{"text":"编辑模块","title":"编辑产品展示模块","evalScript":"Site.popupWindow({title:'编辑产品展示模块', frameSrcUrl:'manage/productModuleEdit.jsp?id=306&colId=2&extId=0&ram='+Math.random(), width:'570', height:'500', saveBeforePopup:false});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=306&style=3&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"添加产品","evalScript":"Site.popupWindow({title:'添加产品', frameSrcUrl:'manage/productEdit.jsp?ram=597684504&_fm0=AwABCgNsaWQSAT0YARj-----DwQ&_fc=1', width:'800', height:'455'});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module306');","evalScript":"Site.dock2('module306');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module306');","evalScript":"Site.floatOut2('module306');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module306');","evalScript":"Site.lock2('module306');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module306');","evalScript":"Site.sideModule2('module306');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module306');","evalScript":"Site.flutter('module306');"},{"hrLine":true},{"display":"icon","text":"设为全站模块","title":"把模块添加到整个网站的所有栏目中","iconClass":"global","evalScript":"Site.setGlobalModule(306, true);","statusScript":"Site.getLayoutItemStatus('module306');"},{"display":"icon","text":"加到指定栏目","title":"把模块添加到指定栏目中","iconClass":"apply","evalScript":"Site.applyModuleTo(306);","statusScript":"Site.getLayoutItemStatus('module306');"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(306, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module306');","evalScript":"Site.openAddModule(306)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module306');","evalScript":"Site.moveModulePosTop('module306');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module306');","evalScript":"Site.moveModulePosBottom('module306');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module306');","evalScript":"Site.moveModulePosLeft('module306');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module306');","evalScript":"Site.moveModulePosRight('module306');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module306');","evalScript":"Site.absMiddleModule('module306');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module306');","evalScript":"Site.absBottomModule('module306');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module306');","evalScript":"Site.absZIndexModule('module306');"}],true);

Site.initModuleLayer(311, [{"text":"编辑模块","title":"编辑分享网站模块","evalScript":"Site.popupWindow({title:'编辑分享网站模块', frameSrcUrl:'manage/shareToModuleEdit.jsp?id=311&colId=2&extId=0&ram='+Math.random(), width:'500', height:'450', saveBeforePopup:false, frameScrolling: 'no'});"},{"display":"icon","iconClass":"bannerAndBorder","text":"设置样式","title":"设置模块标题栏、边框等样式","evalScript":"Site.setModuleStyle({title:'设置模块样式', frameSrcUrl:'manage/moduleStyleEdit.jsp?id=311&style=67&ram='+Math.random(), width:'480', height:'325',saveBeforePopup:false});"},{"text":"高级","title":"","className":"setItem","menu":[{"display":"icon","iconClass1":"dockModule","text1":"停靠模块","title1":"把模块停靠回固定区域","statusScript":"Site.getDockStatus2('module311');","evalScript":"Site.dock2('module311');"},{"display":"icon","iconClass1":"absModule","text1":"浮动模块","title1":"浮动模块，可随意摆放位置","statusScript":"Site.getAbsStatus2('module311');","evalScript":"Site.floatOut2('module311');"},{"display":"icon","iconClass1":"lock","text1":"锁定模块","title1":"锁定模块在当前位置，不跟随滚动条变化位置","statusScript":"Site.getLockStatus2('module311');","evalScript":"Site.lock2('module311');"},{"display":"icon","iconClass1":"sidem","text1":"侧停模块","title1":"侧边停靠收起模块，支持鼠标移入自动展开","statusScript":"Site.getSideStatus2('module311');","evalScript":"Site.sideModule2('module311');"},{"display":"icon","iconClass1":"flutterm","text1":"飘动模块","title1":"飘动模块,按照轨迹飘动","statusScript":"Site.getFlutterStatus('module311');","evalScript":"Site.flutter('module311');"},{"hrLine":true},{"display":"icon","text":"取消全站模块","title":"取消该模块在所有栏目中展示。","iconClass":"global","evalScript":"Site.setGlobalModule(311, false);","statusScript":"Site.getLayoutItemStatus('module311');"},{"display":"icon","text":"本页独立布局","title":"该模块在本页面独立布局。","iconClass":"independent","evalScript":"Site.independentModule(311, true);"}]}],[{"display":"icon","text":"隐藏模块","title":"隐藏模块","iconClass":"close","evalScript":"Site.hideModule(311, false);"},{"display":"icon","iconClass1":"add","text1":"添加模块","title1":"添加模块","statusScript":"Site.getOpenAddModuleStatus('module311');","evalScript":"Site.openAddModule(311)"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"上移模块","title1":"上移模块","statusScript":"Site.getModulePosTop('module311');","evalScript":"Site.moveModulePosTop('module311');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"下移模块","title1":"下移模块","statusScript":"Site.getModulePosBottom('module311');","evalScript":"Site.moveModulePosBottom('module311');"},{"display":"icon","iconClass1":"mleft","fixClass":"littleBtn","text1":"左移模块","title1":"左移模块","statusScript":"Site.getModulePosLeft('module311');","evalScript":"Site.moveModulePosLeft('module311');"},{"display":"icon","iconClass1":"mright","fixClass":"littleBtn","text1":"右移模块","title1":"右移模块","statusScript":"Site.getModulePosRight('module311');","evalScript":"Site.moveModulePosRight('module311');"},{"display":"icon","iconClass1":"mtop","fixClass":"littleBtn","text1":"跳到中间","title1":"把模块跳到中间区域","statusScript":"Site.getAbsMiddleStatus('module311');","evalScript":"Site.absMiddleModule('module311');"},{"display":"icon","iconClass1":"mbottom","fixClass":"littleBtn","text1":"跳到底部","title1":"把模块跳到底部区域","statusScript":"Site.getAbsBottomStatus('module311');","evalScript":"Site.absBottomModule('module311');"},{"display":"icon","iconClass1":"mzindex","text1":"浮到最前","title1":"把模块浮到最前区域","statusScript":"Site.getAbsZIndexStatus('module311');","evalScript":"Site.absZIndexModule('module311');"}],true);


	


	Site.initPage();	// 这个要放在最后，因为模块组初始化时会把一些模块隐藏，导致没有高度，所以要放最后执行

	
	
	
	setTimeout("afterModuleLoaded()", 0);

	if (!_oem && _manageMode) {
		Site.siteGuideInit();
		if( false ){
			$.cookie('_loadedRegStatIframe',true,{ expires: 2 });
		}
	}
	
});

function afterModuleLoaded() {
	Site.initPage2();
Site.initPageDesign(false,0,-1,1);
Site.initPageAuth(false,-1000,1);


} // afterModuleLoaded end

var _portalHost = 'www.faisco.cn';

var _lcid = 2052;
var _userHostName = 'czqjay.faisco.cn';
var _siteDomain = 'http://czqjay.faisco.cn';
var _signupDays = 1;
var _cid = 4327589;
var _resRoot = 'http://0.ss.faidns.com';
var _colId = 2;
var _extId = 0;
var _fromColId = -1;
var _designAuth = true;
var _manageMode = true;
var _oem = false;
var _siteAuth = -1;
var _adm = true;
var _siteVer = 10;
var _manageStatus = false;
var _mainUrl = 'http://www.czqjay.icoc.cc';

var _manageFrameOption={"siteVersion":"siteGroupFre","siteTitle":"您在使用\u201C网站免费版\u201D，点击了解更多。","userLabel":"boss","versionLink":"http://www.faisco.com/proFunc.html","typeVersion":""};
var nav2SubMenu=[];
var nav12SubMenu=[];
var nav21SubMenu=[];
var nav9SubMenu=[];
var nav101SubMenu=[];
var nav102SubMenu=[];

var _customBackgroundData = {"styleDefault":true,"s":true,"h":false,"r":3,"o":"","sw":-1,"e":0,"wbh":-1,"wbw":-1,"clw":-1,"crw":-1,"id":"","p":"","bBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cmBg":{"y":0,"r":3,"f":"","p":"","c":"#000"}};          //自定义的数据
var _templateBackgroundData = {"styleDefault":true,"s":true,"h":false,"r":3,"o":"","sw":-1,"e":0,"wbh":-1,"wbw":-1,"clw":-1,"crw":-1,"id":"","p":"","bBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cmBg":{"y":0,"r":3,"f":"","p":"","c":"#000"}};// 模版的数据
var _useTemplateBanner = true;				// 是否使用全局模版
var _templateBannerData = {"s":0,"i":4000,"a":1500,"h":false,"o":false,"t":1,"p":0,"pt":0,"pl":0,"bt":1,"l":[],"f":{},"ce":{},"n":[],"c":3};		// 模版的数据
var _pageBannerData = {"s":0,"i":4000,"a":1500,"h":false,"o":false,"t":1,"p":0,"pt":0,"pl":0,"bt":1,"l":[],"f":{},"ce":{},"n":[],"c":3};					// 当前页面的自定义数据（页面独立样式设置）
var _bannerData = _templateBannerData;
var moduleAttr={"module312":{"pattern":{"mulModuleColPattern":{"mcs":-1},"searchBoxPattern":{"iw":-1}}},"module304":{"pattern":{"mulModuleColPattern":{"mcs":-1},"searchBoxPattern":{"iw":-1}}},"module308":{"pattern":{"mulModuleColPattern":{"mcs":-1},"searchBoxPattern":{"iw":-1}}},"module302":{"pattern":{"mulModuleColPattern":{"mcs":0},"searchBoxPattern":{"iw":-1}}},"module305":{"pattern":{"mulModuleColPattern":{"mcs":2},"searchBoxPattern":{"iw":-1}}},"module301":{"pattern":{"mulModuleColPattern":{"mcs":2},"searchBoxPattern":{"iw":-1}}},"module307":{"pattern":{"mulModuleColPattern":{"mcs":10},"searchBoxPattern":{"iw":-1}}},"module306":{"pattern":{"mulModuleColPattern":{"mcs":12},"searchBoxPattern":{"iw":-1}}},"module311":{"pattern":{"mulModuleColPattern":{"mcs":0},"searchBoxPattern":{"iw":-1}}}};



var _frameChanged = 0;//用于记录管理frame中的页面数据是否有保存，以便在管理frame关闭时刷新页面
var _changeStyleNum = 0;//用于记录网站风格是否更改，如果更改则在刷新或者关闭前进行提醒。
var _templateChanged = 0; //用于记录模版是否有改动
var _moduleMoved = 0; //用于记录模块是否有移动
var _layoutChanged = 0; //用于布局是否有改动
var _titleChanged = 0; //用于记录企业标题是否更改，如果是使用模板的初始化，则是-1；如果人工修改过则>0
var _localeChanged = 0; //用于记录企业版本标题是否更改
var _logoChanged = 0; //用于记录logo是否有更改
var _bgImgChanged = 0;//记录页面背景是否有更改
var _bannerPath = "";//记录上传banner前的原banner路径，用于恢复原始banner
var _bannerChanged = 0;//用于记录banner是否更改
var _searchKeywordChanged = 0; //用于记录searchKeyword是否更改
var _searchDescChanged = 0;//用于记录searchDesc是否更改
//var _tmpDataList = null;//new Array(); //临时json，用于记录popup的iframe页面刷新前用户输入的数据
var _templateFrame = 528;

var _wideNav = 0;
var _templateType = 0;
var _templateBannerId = 1934;
var _templateBannerWeight = 12;
var _moduleList = new Array();//用于记录哪些模块的titleHidden值改变了
var _floatOutPosition = "centerTopForms";
var _browserTitleChanged = 0; //用于记录浏览器标题是否改变
var _appendLayout = 2;	// 用于记录添加新模块时加入的区域
var _appendModule = -1;	// 用于记录添加新模块时插入的模块
/*
var _templateChangeLayoutList = {
	left:true, 
	right:false
};	// 在切换不同布局的模版时，左右是否需要显示，如果是用户主动隐藏的，切换时就不显示了，否则就要显示。
*/
var _displayLayoutList = [1,2];
var _newModuleIdList = [];

var _imgPageChanged = 0;
var _imgPage = {"s":true,"b":false,"img":false,"e":false,"n":1,"w":960,"g":600,"iw":960,"ih":600,"r":-1,"c":"","p":"","ii":"","ipath":"","itpath":"","i":"","path":"","fb":false,"fr":-1,"fc":"","fp":"","ib":false,"ir":-1,"ic":"","ip":""};
var _imgPageOpen = false;
var _bgMusicChanged = 0;
var _bgMusicOpen = false;
var _bgMusic = {"o":true,"l":true,"v":60,"i":"","p":""};
var _hiddenModuleList = [{"id":313,"s":0,"it":0,"imc":0,"x":0,"o":21}];

var _navStyleChanged = 0;
var _navItemOnCkOpen = false;					  // 有下级菜单不可点击
var _navStyleData = {"v":0,"no":true,"s":0,"ns":{"w":-1,"h":-1},"cs":{"w":-1,"h":-1},"gt":{"y":0},"ht":{"y":0},"np":{},"nb":{"y":0},"cb":{"y":0},"ncp":{"y":0,"t":-1,"r":-1,"b":-1,"l":-1,"hl":-1,"ht":-1},"cp":{"y":0,"t":-1,"l":-1},"nis":{"w":-1,"h":-1},"nib":{"y":0},"nihb":{"y":0},"niss":{"w":-1,"h":-1},"nisb":{"y":0},"nsigt":{"y":0},"nsiht":{"y":0},"nsis":{"w":-1,"h":-1},"nsib":{"y":0},"nsihb":{"y":0},"nsiho":0,"nmove":0};				      // 栏目导航样式
var _navHidden =false;                                  //true:隐藏；flase：显示；           

var _headerTopStyleChanged = 0;
var _headerTopStyle = {"hts":-1,"hg":{"y":0,"r":3,"f":"","p":"","c":"#000"}};			  // 顶部样式（模板）
var _customHeaderTopStyle = {"hts":-1,"hg":{"y":0,"r":3,"f":"","p":"","c":"#000"}};  // 自定义顶部样式

var _memberTopBarChanged = 0;
var _memberTopBar = false;							// 顶部登录条

var _footerStyleChanged = 0;
var _footerStyleData = {"fa":0,"fh":-1,"f":{"t":0,"l":0,"r":0,"u":0,"d":0},"rt":{"y":0,"f":"","s":-1,"c":""},"gt":{"y":0,"f":"","s":-1,"w":0,"d":0,"c":""},"ht":{"c":""},"fb":{"y":0}};				// 底部导航样式（模板）
var _customFooterStyleData = {"fa":0,"fh":-1,"f":{"t":0,"l":0,"r":0,"u":0,"d":0},"rt":{"y":0,"f":"","s":-1,"c":""},"gt":{"y":0,"f":"","s":-1,"w":0,"d":0,"c":""},"ht":{"c":""},"fb":{"y":0}};      // 自定义底部导航样式

var _useTemplateTitle = true;					// 是否使用模版
var _titleData = {"h":false,"x":"czqjay","t":-1,"l":-1,"f":"","s":-1,"w":-1,"c":"","i":0,"u":0,"st":{"y":0,"x":"","f":"","c":"","s":0,"i":0,"w":0,"u":0},"jm":{"y":0},"fp":false};						// 当前页面的数据
var _templateTitleData = {"h":false,"x":"czqjay","t":-1,"l":-1,"f":"","s":-1,"w":-1,"c":"","i":0,"u":0,"st":{"y":0,"x":"","f":"","c":"","s":0,"i":0,"w":0,"u":0},"jm":{"y":0},"fp":false};			// 模版的数据

var _useTemplateLocale = true;				// 是否使用模板
var _localeData = {"h":false,"x":"中文","y":"English","z":"繁体","v":"日本語","k":"???","lo":"???????","th":"???????","es":"lengua espa?ola","ru":"русский","fra":"fran?ais","t":-1,"l":-1,"f":"","s":-1,"w":-1,"fp":false};						// 当前页面的数据
var _templateLocaleData = {"h":false,"x":"中文","y":"English","z":"繁体","v":"日本語","k":"???","lo":"???????","th":"???????","es":"lengua espa?ola","ru":"русский","fra":"fran?ais","t":-1,"l":-1,"f":"","s":-1,"w":-1,"fp":false};		// 模板的数据

var _useTemplateLogo = true;					// 是否使用模版
var _logoData = {"h":false,"i":"ABUIABAEGAAg6s6UoQUovfydxwIwOzgz","t":-1,"l":-1,"g":-1,"w":-1,"lt":0,"addr":"","sc":-1,"ot":1,"des":"","desd":false,"p":"http://589.s21i-4.faidns.com/4327589/4/ABUIABAEGAAg6s6UoQUovfydxwIwOzgz.png"};							// 当前页面的数据
var _templateLogoData = {"h":false,"i":"ABUIABAEGAAg6s6UoQUovfydxwIwOzgz","t":-1,"l":-1,"g":-1,"w":-1,"lt":0,"addr":"","sc":-1,"ot":1,"des":"","desd":false,"p":"http://589.s21i-4.faidns.com/4327589/4/ABUIABAEGAAg6s6UoQUovfydxwIwOzgz.png"};			// 模版的数据

var _useTemplateBackground = true;		// 是否使用模版
var _backgroundData = {"styleDefault":true,"s":true,"h":false,"r":3,"o":"","sw":-1,"e":0,"wbh":-1,"wbw":-1,"clw":-1,"crw":-1,"id":"","p":"","bBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cmBg":{"y":0,"r":3,"f":"","p":"","c":"#000"}};				// 当前页面的数据

var _useTemplateBrowserTitle = true;							// 是否使用全局模版
var _browserTitleData = "czqjay";					// 当前页面的数据
var _browserTitleExt = "";						// 当前页面的标题扩展
var _templateBrowserTitleData = "czqjay";		// 模版的数据
var _pageBrowserTitleData = "czqjay";					// 当前页面的自定义数据（页面独立样式设置）
var _isNewsAndProBrowserTitle = false;
var _companyName = "czqjay";   							// 企业名称

var _useTemplateSearchKeyword = true;
var _searchKeywordData = "";
var _templateSearchKeywordData = "";
var _pageSearchKeywordData = "";

var _useTemplateSearchDesc = true;
var _searchDescData = "";
var _templateSearchDescData = "";
var _pageSearchDescData = "";

var _delModuleIdList = [];				// 用于管理模式下记录删除的模块列表,保存后生效

var _advanceSettingData = {};				// 用于存放高级设置的高级功能和高级功能数据
var _businessSettingData = {};				// 用于存放高级设置的高级功能和商务功能数据
var _baiduBaseSetting = {};                   //用于存放百度优化里的优化数据；

var _siteBulletinOemVersion = "";
var _topBarMyNewsVersion = "0029150f4baaa8e10ecc416026538648";
var _topBarUpdateVersion = "da2c5036704a218535f51c4439430a7b";
var _panelOptionData = {"sysIndex":2,"siteColList":"{\"sysIndex\":2,\"sysProduct\":3,\"sysNews\":4,\"sysAbout\":5,\"sysContact\":6,\"sysNewsDetail\":7,\"sysProductDetail\":8,\"sysMsgBoard\":9,\"sysPhotoDetail\":10,\"sysTemplate\":11,\"sysProductResult\":12,\"sysMallCart\":13,\"sysMallOrderSettle\":14,\"sysMallOrderList\":15,\"sysMallOrderDetail\":16,\"sysMemberSignup\":17,\"sysMemberLogin\":18,\"sysMemberProfile\":19,\"sysVoteResult\":20,\"sysNewsResult\":21,\"sysPhotoResult\":22,\"sysSiteSearch\":23,\"sysMemberCenter\":24}","moduleTypeList":"{\"sysRecommendProduct\":2,\"sysLatestNews\":3,\"sysProductSearch\":4,\"sysProductFilter\":5,\"sysOnlineService\":6,\"sysFriendlyLink\":7,\"sysAbout\":8,\"sysContact\":9,\"sysNews\":11,\"sysNewsDetail\":12,\"sysProduct\":13,\"sysProductDetail\":14,\"sysMsgBoard\":15,\"sysPhotoDetail\":16,\"sysPhotoSlide\":19,\"sysMember\":20,\"sysLocation\":21,\"sysProductResult\":22,\"sysMallCart\":23,\"sysMallOrderSettle\":24,\"sysMallOrderList\":25,\"sysMallOrderDetail\":26,\"sysMemberSignup\":27,\"sysMemberLogin\":28,\"sysMemberProfile\":29,\"sysVoteResult\":30,\"sysNewsResult\":31,\"sysPhotoResult\":32,\"sysIndexFavorite\":33,\"sysIndexSearch\":34,\"sysIndexSearchResult\":35,\"sysDate\":36,\"sysShareTo\":37,\"sysWebsiteQrcode\":38,\"sysMemberCenter\":39}","moduleStyleList":"{\"sysLocation\":56,\"sysIndexFavorite\":65,\"sysDate\":66,\"sysShareTo\":67,\"sysSiteSearch\":62,\"sysProductSearch\":45,\"sysMember\":51,\"newsGroup\":24,\"productGroup\":26,\"productFilter\":9,\"productCatalog\":21,\"navList\":11,\"serviceOnline\":40,\"sysWebsiteQrcode\":64}","schemeCust":false,"webDebug":false,"allowedStyle":true,"templateType_free":0,"imgMode":2,"fontFamilyList":[{"first":"SimSun","second":"宋体"},{"first":"PMingLiU","second":"新细明体"},{"first":"FangSong_GB2312","second":"仿宋_GB2312"},{"first":"微软雅黑","second":"微软雅黑"},{"first":"隶书","second":"隶书"},{"first":"幼圆","second":"幼圆"},{"first":"STKaiti","second":"华文楷体"},{"first":"方正舒体","second":"方正舒体"},{"first":"华文彩云","second":"华文彩云"},{"first":"华文行楷","second":"华文行楷"},{"first":"华文宋体","second":"华文宋体"},{"first":"楷体,楷体_GB2312, SimKai","second":"楷体"},{"first":"黑体, SimHei","second":"黑体"},{"first":"Arial","second":"Arial"},{"first":"Tahoma","second":"Tahoma"},{"first":"impact","second":"impact"},{"first":"Arial Serif","second":"Arial Serif"},{"first":"Georgia","second":"Georgia"},{"first":"Garamond","second":"Garamond"},{"first":"Times New Roman","second":"Times New Roman"},{"first":"andale mono","second":"andale mono"},{"first":"arial black,avant garde","second":"arial black"},{"first":"comic sans ms","second":"comic sans ms"}],"selectOptionList":["<option value='2'>首页<\/option>","<option value='12'>产品展示<\/option>","<option value='21'>新闻动态<\/option>","<option value='9'>留言板<\/option>","<option value='17'>会员注册<\/option>","<option value='101'>关于我们<\/option>","<option value='102'>联系我们<\/option>","<option value='-1'>[会员栏目]<\/option>","<option value='17'>┣&nbsp;会员注册<\/option>","<option value='18'>┣&nbsp;会员登录<\/option>","<option value='19'>┣&nbsp;会员资料<\/option>","<option value='24'>┗&nbsp;会员中心<\/option>","<option value='-2'>[商城栏目]<\/option>","<option value='13'>┣&nbsp;购物车<\/option>","<option value='14'>┣&nbsp;订单结算<\/option>","<option value='15'>┣&nbsp;订单列表<\/option>","<option value='16'>┗&nbsp;订单详情<\/option>","<option value='-3'>[特殊栏目]<\/option>","<option value='7'>┣&nbsp;文章详情<\/option>","<option value='8'>┣&nbsp;产品详情<\/option>","<option value='10'>┣&nbsp;图片详情<\/option>","<option value='20'>┣&nbsp;投票结果<\/option>","<option value='22'>┣&nbsp;图册目录结果<\/option>","<option value='23'>┗&nbsp;全站搜索结果<\/option>","<option value='0'>[未使用的模块]<\/option>"],"moduleIconClassList":[{"style":1,"className":"rich"},{"style":2,"className":"product"},{"style":3,"className":"product"},{"style":4,"className":"photo"},{"style":5,"className":"photo"},{"style":6,"className":"article"},{"style":7,"className":"article"},{"style":8,"className":"product"},{"style":9,"className":"filter"},{"style":10,"className":"file"},{"style":11,"className":"nav"},{"style":12,"className":"product"},{"style":13,"className":"product"},{"style":14,"className":"sys"},{"style":16,"className":"photo"},{"style":17,"className":"flash"},{"style":18,"className":"map"},{"style":19,"className":"media"},{"style":20,"className":"iframe"},{"style":21,"className":"catalog"},{"style":22,"className":"qqonline"},{"style":23,"className":"vote"},{"style":24,"className":"newsgroup"},{"style":26,"className":"productGroup"},{"style":27,"className":"photoGroup"},{"style":28,"className":"weather"},{"style":29,"className":"tab"},{"style":30,"className":"product"},{"style":31,"className":"photo"},{"style":32,"className":"siteForm"},{"style":33,"className":"link"},{"style":34,"className":"table"},{"style":35,"className":"mulModuleCol"},{"style":36,"className":"media"},{"style":37,"className":"code"},{"style":72,"className":"weiboShow"},{"style":38,"className":"productLabel"},{"style":39,"className":"notice"},{"style":40,"className":"serviceOnline"},{"style":41,"className":"product"},{"style":42,"className":"photo"},{"style":45,"className":"productSearch"},{"style":62,"className":"siteSearch"},{"style":64,"className":"siteQrCode"},{"style":66,"className":"date"},{"style":56,"className":"location"},{"style":51,"className":"memberLogin"},{"style":65,"className":"indexFavorite"},{"style":67,"className":"shareTo"},{"style":75,"className":"msgSubmit"}]};
var _isSaveNotRefresh = false;
var _isSaveRefresh = false;



var _aid = 4327589;
var _templateLayout = 1;
var _webBannerHeight = -1;
</script>








	<div id="faiFloatPanelIconContainer"
		class="faiFloatPanelIconContainer ui-draggable" location="left"
		status="1">
		<div class="faiFloatPanelIconBox first">
			<a href="javascript:;" title="新增模块" id="faiFloatPanel_addNewModule"
				class="faiFloatPanel_addNewModule"
				onclick="Site.faiFloatPanel(0);return false;" hidefocus="true"></a>
		</div>
		<div class="faiFloatPanelIconBox">
			<a href="javascript:;" title="设置网站样式" id="faiFloatPanel_setSiteStyle"
				class="faiFloatPanel_setSiteStyle"
				onclick="Site.faiFloatPanel(2);return false;" hidefocus="true"></a>
		</div>
	</div>
	<ul style="z-index: 1; top: 0px; left: 0px; display: none;"
		aria-activedescendant="ui-active-menuitem" role="listbox"
		class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"></ul>
	<div id="dockTip" class="resizableToShowWidth dockTip"></div>
	<div
		style="position: absolute; left: -9999px; top: -9999px; width: 15px; height: 15px; z-index: 9999;"
		data-clipboard-ready="false" class="global-zeroclipboard-container"
		id="global-zeroclipboard-html-bridge">
		<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
			id="global-zeroclipboard-flash-bridge" height="100%" width="100%">
			<param name="movie"
				value="http://0.ss.faidns.com/js/comm/ZeroClipboard/ZeroClipboard.swf?nocache=1411885149169">
			<param name="allowScriptAccess" value="sameDomain">
			<param name="scale" value="exactfit">
			<param name="loop" value="false">
			<param name="menu" value="false">
			<param name="quality" value="best">
			<param name="bgcolor" value="#ffffff">
			<param name="wmode" value="transparent">
			<param name="flashvars" value="trustedDomain=">
			<embed src="czqjay_files/ZeroClipboard.swf" loop="false" menu="false"
				quality="best" bgcolor="#ffffff"
				name="global-zeroclipboard-flash-bridge" allowscriptaccess="always"
				allowfullscreen="false" type="application/x-shockwave-flash"
				wmode="transparent"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				flashvars="trustedDomain=" scale="exactfit" height="100%"
				width="100%">
		</object>
	</div>
	<div style="display: none;" id="newRapidSiteTopBar">
		<div
			style="width: 1000px; height: 100%; margin: 0 auto; position: relative;">
			<ul class="tabs">
				<li style="width: 100px;"></li>
				<li>
					<a hidefocus="true" class="tabsMenu current" href="javascript:;"
						id="rapidSiteShowTradeCase" onclick="Site.rapidSiteShowTab(1);">行业样板</a>
				</li>
			</ul>
			<div style="position: absolute; right: 20px; top: 3px;">
				<a hidefocus="true" class="close" href="javascript:;"
					onclick="Site.newRapidSiteClose(); return false;">取 消</a><a
					hidefocus="true" class="save buttonDisabled" href="javascript:;"
					onclick="Site.newRapidSiteCopy();return false;" disabled="true">复制样板</a>
			</div>
			<div id="tips">
				<span class="warningImg">&nbsp;</span><span class="warningText">复制样板网站后，可随意更换样式，还有更多功能！</span>
			</div>
		</div>
	</div>
	<div style="display: none;" id="newRapidSiteMain">
		<iframe id="newRapidSiteMainFrame"
			src="czqjay_files/newRapidSiteManage.xhtml" frameborder="0"
			height="207px" scrolling="auto" width="100%"></iframe>
		<div class="forWaiting ajaxLoading2"
			style="position: absolute; background-color: #f7f7f7; width: 100%; height: 100%; top: 0; left: 0;"></div>
	</div>
	<div style="display: none;" id="newRapidSitePreview">
		<iframe id="newRapidSitePreviewFrame" src="czqjay_files/a.htm"
			style="display: none; background: #fff;" frameborder="0"
			height="100%" scrolling="auto" width="100%"></iframe>
		<div style="display: none;" id="newRapidSiteBigImg">
			<a hidefocus="true" href="javascript:;" id="newRapidSiteBigImgClose"
				onclick="Site.newRapidSiteBigImgRemove();return false;"></a>
		</div>
		<div id="newRapidSiteBlackBg"></div>
	</div>
	<div _mousein="0" style="margin: 0px; left: 163.5px; top: 167px;"
		id="bannereditLayer" class="editLayer">
		<div class="tools">
			<a id="btn-editBanner" class="button" title="点击编辑横幅"
				href="javascript:;"
				onclick="Site.styleSetting('open', 'webBannerTab');Site.removeAllEditLayer();return false;">编辑横幅</a>
			<div class="itemHr"></div>
			<a id="btn-editBanner" class="button" title="点击设置样式"
				href="javascript:;"
				onclick="Site.logDog(100041, 7); Site.popupWindow({title:'设置横幅样式', frameSrcUrl:'manage/styleBannerSetting.jsp?ram='+Math.random(), width:488, height:220, saveBeforePopup:false});;Site.removeAllEditLayer();return false;">设置样式</a>
			<div class="itemHr"></div>
			<a id="btn-editBanner" class="button" title="点击设置横幅特效"
				href="javascript:;"
				onclick="Site.styleSetting('open', 'webBannerTab', false, 'showBannerEffects');Site.removeAllEditLayer();return false;">设置特效</a>
			<div class="itemHr"></div>
			<a class="button" title="点击隐藏横幅，隐藏后可以从“网站设计”-“网站设置”重新选择。"
				href="javascript:;"
				onclick="Site.hiddenBanner();;Site.removeAllEditLayer();return false;">隐藏</a>
		</div>
	</div>
</body>
</html>