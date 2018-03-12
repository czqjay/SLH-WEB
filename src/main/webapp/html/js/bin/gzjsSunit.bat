cd F:\kuaipan\sunitworkspace\gridTest\WebRoot\html\js\bin

REM -------------- start package javascript --------------


type ..\jquery.validate\jquery.validate.js  > sunit.js
type ..\jquery.validate\messages_cn.js  >> sunit.js
type ..\jquery-ui\jquery-ui-1.9.2\ui\minified\jquery-ui.min.js  >> sunit.js
type ..\jqGrid\js\i18n\grid.locale-cn.js  >> sunit.js
type ..\jqGrid\js\jquery.jqGrid.min.js  >> sunit.js
type ..\common\js\msgAlert.js  >> sunit.js
type ..\common\js\string.util.js  >> sunit.js
type ..\jquery.form\jquery.form.js  >> sunit.js
type ..\dynatree-1.2.0_rc1\jquery\jquery.dynatree.js  >> sunit.js
type ..\jquery.contextMenu\jquery.contextMenu-custom.js  >> sunit.js
type ..\dwz\js\dwz.regional.zh.js  >> sunit.js



cscript ESC.wsf -l 1 -ow sunit1.js sunit.js
cscript ESC.wsf -l 2 -ow sunit2.js sunit1.js


rem type sunit2.js  > sunit.min.js 
rem gzip -f sunit.min.js 
rem copy sunit.min.js.gz sunit.min.gzjs /y

gzip -f sunit.js  
copy sunit.js.gz sunit.min.gzjs /y 

rem del sunit*.js 
rem  del sunit.min.js.gz