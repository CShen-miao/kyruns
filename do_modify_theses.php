<?php
include_once 'conn.php';
user_shell($_SESSION['uid'],$_SESSION['user_shell']);
user_mktime($_SESSION['times']);

//执行修改
if($_POST){
	$id=$_POST['id'];
	$uid = $_SESSION['uid'];
	$date = $_POST['year'];
	$name = $_POST['name'];
	$papercategory = $_POST['papercategory'];
	$sname = $_POST['sname'];
	$period = $_POST['period'];
	$author = $_POST['author'];
	$status = $_POST['status'];
	$level = $_POST['level'];
	$other = $_POST['other'];
	$source = $_POST['source'];
	$number = $_POST['number'];
	$remarks = $_POST['remarks'];

	$sql = "UPDATE `tb_tj_theses` SET uid='$uid', date='$date', name='$name', papercategory='$papercategory', sname='$sname', period='$period', author='$author', status='$status', level='$level', other='$other', source='$source', number='$number', remarks='$remarks' WHERE id = {$id}";
	$query = mysqli_query($conn, $sql);
	if($query==true){
		echo "<script>alert('信息修改成功！');window.location.href='scan_tj_theses.php';</script>";
	}else{
		echo "<script>alert('修改失败，稍后请重试，或联系管理员以审查系统错误！');window.location.href='scan_tj_theses.php';</script>";
	}
}
//INSERT INTO `db_research`.`tb_tj_theses` (`id`, `uid`, `date`, `name`, `papercategory`, `sname`, `period`, `author`, `status`, `level`, `source`, `number`, `remarks`) VALUES (NULL, '1', '2017', '论文77', '期刊论文', '北院校报', '121', '湖心', '论文77', '论文77', '论文77', '', '');