<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/menu/js/menuList.js"></script>
<script type="text/javascript">
	
    var menuManagerTree;
    var rootNodeID;
     $(function(){
     $('#SHOWmenuNode').hide();
		menuManagerTree={
		plhs:{},
			deptClick:function(dtnode, event){
				$('#SHOWmenuNode').hide();
				//DWZ.debug('deptClick:function(dtnode, event)')
				//sysresourceID = dtnode.data.id;
		 	},
		 	lazyRead: function(dtnode){ //懒加载操作的拦截  一般不用覆盖
		 		DWZ.debug(dtnode)
		 		//onlazyread = "menuManagerTree.lazyRead"
		 		return true;
		 	}, 
		 	postProcess: function(data,dataType){  //后处理 ajax结果的拦截处理
	        	for(v in data){
	        		if(data[v].moduleCaption){  
	        		    if(data[v].sourceType=='2'){
	        				data[v].isFolder=true
	        			}else{
	        				data[v].isFolder=false
	        			}
	        			data[v].isLazy=true 
	        			data[v].expand=false   
	        			data[v].title=data[v].moduleCaption 
	        			//data[v].noLink=true    
	        		} 
	        		
	        	} 
        		return data;
        	},
        	
        	fillSels: function(){  //添加子菜单时填充方法
        	    //dy_menuManagerTree 其中menuManagerTree为Tree的id
		 		var plhs = dy_menuManagerTree.dynatree("getSelectedNodes");
		 		if(plhs.length==0){
		 			$.alert('请选择一个根菜单节点！');
		 		    	return ;
		 		}
		 		 rootNodeID = '';
		 		var moduleCaption = '';
		 		for(v in plhs){
		 		    moduleCaption = plhs[v].data.moduleCaption;
		 		    if(plhs[v].data.id){
		 		    	rootNodeID = plhs[v].data.id;
		 		        $('#SHOWmenuNode').show();
		 		    }
				} 
			},
			
			
        	fillMenuSel: function(){  //提交选择的子菜单
		 		var plhs = dy_menuManagerTreeNode.dynatree("getSelectedNodes");
		 		if(plhs.length==0){
		 			$.alert('请选择子菜单节点！');
		 		    	return ;
		 		}
		 		var ids = '';
		 		var nodeID = '';
		 		var moduleCaption = '';
		 		for(v in plhs){
		 		    moduleCaption = plhs[v].data.moduleCaption;
		 		    if(plhs[v].data.sourceType!='2')
		 		    if(plhs[v].data.id){
		 		    	nodeID = plhs[v].data.id;
		 		    	ids = nodeID + ',' + ids;
		 		    }
				} 
				ids = ids.substring(0,ids.lastIndexOf(','));
				if(ids.length>0 && rootNodeID.length>0){
				      
				    menuListCRUD.addSubMenu(rootNodeID,ids);
				}
				
			}
			
		};
	});
	
	function clearFromUserToJobsList() {
		jQuery("#userNameForJobs").val("");
	}
	
</script>


<div id='SHOWprootNode' style='float:left;text-align:left;width:250px; height:505px;'>

	<sui:tree  id="menuManagerTree"  checkbox="true"  selectmode="1"    postProcess ="menuManagerTree.postProcess" 
 
     buttons="{onclick:'menuManagerTree.fillSels()',id:'subMenuAdd',name:'添加子菜单',style:'float:right;'}"   
     onclick="menuManagerTree.deptClick"  url="${ctxPath}/dept/getTreeMenuRootNode.action?treeType=rootNode" 
	></sui:tree> 
</div>
<div id='SHOWmenuNode'  style='float:left;text-align:left;width:250px; height:505px'>

<sui:tree  id="menuManagerTreeNode"  checkbox="true"   postProcess ="menuManagerTree.postProcess" 
     buttons="{onclick:'menuManagerTree.fillMenuSel()',id:'menuSubmit',name:'提交',style:'float:right;'}"   
       url="${ctxPath}/dept/getTreeMenuRootNode.action?treeType=menuNode" 
	></sui:tree> 
	
</div>
