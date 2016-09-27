<?php
require_once('connect.php');

$query=mysql_query('select * from article order by dateline desc');

while($row=mysql_fetch_assoc($query)){
    $data[]=$row;
}

?>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

<?php

foreach($data as $value) {

?>

<div style="width:300px; height:30px; background:#80FFFF;">标题：<?php echo $value['title']?></div>
<div style="width:300px; height:30px; background:#FFA042;">作者：<?php echo $value['author']?></div>
<div style="width:300px; height:30px; background:green;">描述：<?php echo $value['description']?></div>
<a style="width:100px; height:50px; background:gray;" href="article.show.php?id=<?php echo $value['id']?>">点击查看全文</a>

   
<?php
}

?>


</body>
</html>





