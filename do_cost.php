<?php
include_once 'conn.php';
include_once 'upload_func_cost.php';
user_shell($_SESSION['uid'],$_SESSION['user_shell']);
user_mktime($_SESSION['times']);

if($_POST['submit']){
	$cnumber = $_POST['cnumber'];
	$ccost = $_POST['ccost'];
	$ctime = $_POST['ctime'];
	
	//如果是依托项目的经费
	if($cnumber<>''){
		$sql="SELECT * FROM tb_declare WHERE dnumber={$cnumber} AND uid={$_SESSION['uid']}";
		$query=mysqli_query($conn,$sql);
		$row=mysqli_fetch_array($query);
		//判断项目申请是否已通过,dstatus==2,通过审核 ,1 未审批，0 未通过
		if($row['dstatus']==2){
			//计算余额
			if($row['dbalance']<$ccost){
				echo "<script>alert('所依托的项目其经费余额不足，本次申请的经费不得超过所依托项目的经费余额');history.go(-1);</script>";
				exit();
			}elseif(strtotime($row['dtime'])<>strtotime($ctime)){
				echo "<script>alert('失败！依托项目的费用申报时间应在所依托项目申报年份内');history.go(-1);</script>";
				exit();
			}
		}else{
			echo "<script>alert('所依托项目暂未通过审核，不能进行费用申报');history.go(-1);</script>";
			exit();
		}
	}
	//上传
	//$fileInfo=$_FILES['myFile[]'];
	function getFiles(){
		$i=0;
		foreach($_FILES as $file){
			if(is_string($file['name'])){
				$files[$i]=$file;
				$i++;
			}elseif(is_array($file['name'])){
				foreach($file['name'] as $key=>$val){
					$files[$i]['name']=$file['name'][$key];
					$files[$i]['type']=$file['type'][$key];
					$files[$i]['tmp_name']=$file['tmp_name'][$key];
					$files[$i]['error']=$file['error'][$key];
					$files[$i]['size']=$file['size'][$key];
					$i++;
				}
			}
		}
		return $files;
	
	}
	$files=getFiles();
	// print_r($files);
	foreach($files as $fileInfo){
		$res=uploadFile($fileInfo);
		echo $res['mes'],'<br/>';
		$uploadFiles[]=$res['dest'];
	}
	$uploadFiles=array_values(array_filter($uploadFiles));
	print_r($uploadFiles);
    //写入数据库
	$uid = $_SESSION['uid'];
	$cname = $_POST['cname'];
	$cmanname = $_POST['cmanname'];
	$ctype = $_POST['ctype'];
	$cintroduction = $_POST['cintroduction'];
	$cstatus = 1;
	$sql = "INSERT INTO `db_research`.`tb_cost` (`cid`, `uid`,`cname`, `cnumber`, `cmanname`, `ccost`, `ctype`, `ctime`, `cintroduction`, `cpicpath`, `cstatus`)
	VALUES('','$uid','$cname','$cnumber','$cmanname','$ccost','$ctype','$ctime','$cintroduction','$cpicpath','$cstatus')";
	$query = mysqli_query($conn,$sql);
	
	if($query==true){
	    echo "<script>alert('信息已记录！');window.location.href='cost.php';</script>";
	}else{
		echo "<script>alert('提交失败，稍后请重试，或联系管理员以审查系统错误！');window.location.href='cost.php';</script>";
	}
	
}elseif($_GET){//信息删除
		//获取传递来的cost_id及查询条件
		$cost_id = $_GET['cid'];
		
		$sql0 = "SELECT * FROM tb_cost WHERE uid = {$_SESSION['uid']} and cid ={$cost_id}";
		$row = mysqli_fetch_array(mysqli_query($conn, $sql0));
		if($row['cstatus']==2){
			echo "<script>alert('费用申请已通过审核，不能删除');history.go(-1);</script>";
			exit();
		}
		
		$sql = "DELETE FROM tb_declare WHERE uid = {$_SESSION['uid']} and did ={$cost_id}";//删除数据
		$query = mysqli_query($conn,$sql);	
		if($query==true){
			echo "<script>alert('信息已移除！');window.location.href='scan_cost.php';</script>";
		}else{
			echo "<script>alert('操作失败，稍后请重试！');window.location.href='scan_cost.php';</script>";
		}
	} 
?>