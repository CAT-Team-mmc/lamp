<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/11
 * Time: 8:13
 */


require_once('config.php');

$con=mysql_connect(HOST,USERNAME,PASSWORD);
mysql_select_db('jiaoxuetest');
mysql_query('set names utf8');


/*mysql_query("insert into article(title,author,description,content,dateline) values ('这里是标题','这里是作者','这里是简介','这里是内容','这里是时间')");*/

/*mysql_query('update article set title=44 where id=2');*/



