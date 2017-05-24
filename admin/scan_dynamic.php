<?php 
include_once 'conn.php';
user_shell($_SESSION['uid'],$_SESSION['user_shell']);
user_mktime($_SESSION['times']);

if($_GET['dynamic_id']){
	//获取传递来的radio id
	$dynamic_id = $_GET['dynamic_id'];
	$sql = "DELETE FROM tb_dynamic WHERE id ={$dynamic_id}";//删除数据
	$query = mysqli_query($conn,$sql);
	if($query==true){
		echo "<script>alert('信息已移除！');window.location.href='scan_dynamic.php';</script>";
	}else{
		echo "<script>alert('操作失败，稍后请重试！');window.location.href='scan_dynamic.php';</script>";
	}
}
?>
<!DOCTYPE HTML>
<html lang="zh-CN">
<?php include_once 'header_config.php';?>
<body>
    <div id="wrapper">
    <!-- Navigation -->
        <?php include "menu.php";?>
		<!--//Navigation-->
        <div id="page-wrapper">
		<!--Content-->
	        <div class="graphs">
		       <div class="row" style="padding-bottom:20px;">
				   <div class="span12">
					   <h3 class="text-center fontTitle">
						  浏览动态
					   </h3>
				   </div>
			   </div>
			   <!-- Content —— 浏览 -->
			   <div class="row" style="padding-left:15px; padding-right:15px;">
				  <form name="scanMod" method="get">
				      <div class="panel panel-info" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
				          <div class="panel-body no-padding">
					          <table class="table table-hover table-condensed" style="padding: 8px;height:1;padding: 5px;vertical-align: top;border-top: 1px solid #ddd">
						          <thead>
							           <tr style="padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd">
								           <th> #</th>
								           <th>标题</th>
								           <th>图片</th>
								           <th>内容</th>
								           <th>时间</th>
							           </tr>
						           </thead>
						           <tbody><!--tbody中为要循环输出的内容  -->
							
									<?php
								   
									//1.传入页码  2.根据页码取出数据  3.显示数据+分页条
									$page = $_GET['p'];
									if(!isset($page)){
										$page = 1;
									}
									$pageSize = 5;
									$showPage = 5;
									$startPage=($page-1)*$pageSize;
									
									//取出数据
									$sql = "SELECT * FROM tb_dynamic ORDER BY id DESC LIMIT $startPage,$pageSize";
									$result = mysqli_query($conn,$sql);
									$row_num = mysqli_num_rows($result);
									/* if($row_num==0){
										$select_date = "";
										echo "<script>alert('无内容！');</script>";
										exit;
									} */
									
									//显示数据
		                            $col1 = "active";	    //设置记录行背景颜色为白色
									$col2 = "success";		//设置记录行背景颜色为绿色
									$col = $col2;
									for($i=0;$i<$row_num;$i++){
										$row = mysqli_fetch_array($result);
										if($col == $col1){
											$col = $col2;
										}else{
											$col = $col1;
										}
										$id = $row['id'];//当前行id
										$dtitle = $row['dtitle'];
										$dpath = $row['dpath']; //$dpath显示图片
										$dcontent=$row['dcontent'];
										$dtime = $row['dtime'];
										?>
										<tr class="<?php echo $col;?>" style="vertical-align:top;border-top: 1px solid #ddd;vertical-align:bottom;border-bottom: 2px solid #ddd">
											<td style="display:table-cell; vertical-align:middle;"><input type="radio" name="dynamic_id" value="<?php echo $id;?>"/></td>
											<td style="display:table-cell; vertical-align:middle;padding:8px;line-height:1.5;border-top:1px solid #ddd"><?php echo $dtitle;?></td>
											<td style="padding:8px;line-height:1.5;vertical-align:top;border-top:1px solid #ddd">
												<img width="150px" src="<?php echo $dpath;?>">
											</td>
							                <td style="display:table-cell; vertical-align:middle;padding:8px;line-height:1.5;border-top:1px solid #ddd"><?php echo $dcontent;?></td>
							            	<td style="display:table-cell; vertical-align:middle;padding:8px;line-height:1.5;border-top:1px solid #ddd"><?php echo $dtime;?></td>
							            </tr>
									    <?php
											}
										?>
										<tr bgcolor="#cbcac3">
										    <td style="vertical-align:top;border-top: 1px solid #ddd;vertical-align:bottom;border-bottom: 2px solid #ddd;"><img src="../img/arrow_ltr.gif" width="38" height="20"/></td>
										    <td style="text-align:left;vertical-align:top;border-top: 1px solid #ddd;vertical-align:bottom;border-bottom: 2px solid #ddd;">
							                    <!--<button class="btn btn-sm btn-info" type="submit" value="修改" onclick="mod()">修改</button>-->
												<button class="btn btn-sm btn-info" type="submit" value="删除" onclick="del()">删除</button>	
											</td>
										    <td style="vertical-align:top;border-top: 1px solid #ddd;vertical-align:bottom;border-bottom: 2px solid #ddd;"></td>
										    <td style="vertical-align:top;border-top: 1px solid #ddd;vertical-align:bottom;border-bottom: 2px solid #ddd;"></td>
										    <td style="vertical-align:top;border-top: 1px solid #ddd;vertical-align:bottom;border-bottom: 2px solid #ddd;"></td>
										</tr>
						          </tbody>
					          </table>
				          </div>
				      </div>
				  </form>	
			   </div>
			   <!--// Content —— 浏览 -->
			   <!-- Content —— 分页 -->
			   <div class="row" style="padding-left:15px; padding-right:15px;">
			       <div class="panel panel-info" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
			           <div class="panel-body no-padding">
			               <nav class="pull-right">
				               <ul class="pagination fontTitle" style="margin:0;font-size:14px;line-height:2">				
						    	<?php
								//显示分页条
								//获取数据总条数
								$total_sql = "SELECT COUNT(*) FROM tb_dynamic";
								$total_result = mysqli_fetch_array(mysqli_query($conn,$total_sql));//错误原因：变量写错$totla_result跟$total_result不对应
								//var_dump($total_result);
								$total = $total_result[0];//数组第0个键值里就包含了所有的信息
								//计算页数
								$total_pages = ceil($total/$pageSize);
								//计算偏移量
								$pageoffset = ($showPage-1)/2;
								//判断是否显示首页上一页及尾页下一页
								$page_banner = "";
								if($page>1){
									$page_banner.="<li><a href='".$_SERVER['PHP_SELF']."?p=1'>首页</a></li>";
									$page_banner.="<li><a href='".$_SERVER['PHP_SELF']."?p=".($page-1)."'>上一页</a></li>";
								}else{
									$page_banner.="<li><span>首页</span></li>";
									$page_banner.="<li><span>上一页</span></li>";
								}
								//初始化数据
								$start = 1;
								$end = $total_pages;
								if($total_pages > $showPage){
									/* if($page > $pageoffset + 1){
										$page_banner.="<li>...</li>";
									} */
									if($page > $pageoffset){
										$start = $page - $pageoffset;
										$end = $total_pages > $page+$pageoffset?$page+$pageoffset:$total_pages;
									}else{
										$start = 1;
										$end = $total_pages > $showPage?$showPage:$total_pages;
									}
									if($page + $pageoffset > $total_pages){
										$start = $start - ($page + $pageoffset - $end);
									}
								}
								for($i = $start;$i<=$end;$i++){
									$page_banner.="<li><a href='".$_SERVER['PHP_SELF']."?p=".$i."'>{$i}</a><li>";
								}
								//尾部省略
								/* if($total_pages > $showPage&&$total_pages >$page + $pageoffset){
									$page_banner.="<li>...</li>";
								} */
								if($page<$total_pages){
									$page_banner.="<li><a href='".$_SERVER['PHP_SELF']."?p=".($page+1)."'>下一页</a></li>";
									$page_banner.="<li><a href='".$_SERVER['PHP_SELF']."?p=".($total_pages)."'>尾页</a></li>";
								}else{
									$page_banner.="<li><span>下一页</span></li>";
									$page_banner.="<li><span>尾页</span></li>";
								}	
								$page_banner .= "<div style='padding-top:2px;' class='pull-right' >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共 $total_pages 页";
								$page_banner .= '<form action="scan_tj_theses.php" method="get" style="display:inline;">';
								$page_banner .= '&nbsp;&nbsp;到第&nbsp;<input autocomplete="off" class="input-sm" name="p" size="2" style="border:1px; background-color:#f0eaf1;" type="text">&nbsp;页&nbsp;';
								$page_banner .= '<button class="btn btn-sm btn-info" type="submit" value="确定">确定</button>';
								$page_banner .= '</form></div>';
								echo $page_banner;
								?>
				               </ul>
			               </nav>
			           </div>
			       </div>
			   </div><!-- //Content —— 分页 -->
			   <!--//Content -->
		
			   <!--footer-->
			   <?php include_once 'footer.php';?>
			   <!--//footer-->
	        </div><!-- //graphs -->
        </div><!-- /#page-wrapper -->
    </div><!-- /#wrapper -->
    <?php include "message.php";?>
	<!-- Metis Menu Plugin JavaScript -->
	<script>
		function del(){
			if(confirm("此操作会删除选中项，是否继续？")){
				document.scanMod.action="scan_dynamic.php";
			}
		}
		//修改功能涉及到照片重传，在此处功能意义不大暂且不做
		function mod(){
			document.form2.action="";
		}
	</script>
</body>
</html>