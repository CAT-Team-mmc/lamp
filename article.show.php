<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/15
 * Time: 13:55
 */
require_once('connect.php');

$id=$_GET['id'];

$query=mysql_query("select * from article where id='$id'");

$row=mysql_fetch_assoc($query);


?>



<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

<div style="width:200px; height:30px; background:#D94600;"><?php echo $row['title']?></div>
<div style="width:200px; height:100px; background: green;"><?php echo $row['content']?></div>




</body>
</html>





