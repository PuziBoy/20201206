<?php
require_once "php/connect.php";
$langTable=mysqli_query($link, "SELECT code FROM languages");
$langTest=false;

while ($oneLang=mysqli_fetch_assoc($langTable)) {
 if ($_GET['ln']==$oneLang['code']){$langTest=true;}
}
if($langTest==false){$_GET['ln']='RUS';}
if (empty($_GET['ln'])) {$pageLang='RUS';}else {$pageLang=$_GET['ln'];}
$menuTable=mysqli_query($link, "SELECT * FROM menu WHERE lang='$pageLang'");
$menu=array();
while ($oneTerm=mysqli_fetch_assoc($menuTable)) {
  $menu[$oneTerm['code']]=$oneTerm['value'];
}
$settingsTable=mysqli_query($link, "SELECT code, value FROM settings");
$settings=array();
while ($oneSet=mysqli_fetch_assoc($settingsTable)) {
  $settings[$oneSet['code']]=$oneSet['value'];
}
$termsTable=mysqli_query($link, "SELECT code, value FROM terms WHERE lang='$pageLang'");
$terms=array();
while ($oneTer=mysqli_fetch_assoc($termsTable)) {
  $terms[$oneTer['code']]=$oneTer['value'];
}
?>
<!doctype html>

<html>
<head>

<meta charset="utf-8" content="text/html">
<title>Fenek is fox</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<style>
.flyMenu{position: fixed; top:0px; left:0px; height:40px; width:100%; z-index: 1000;}
.flyMenu div{background-color: rgba(255,255,255,0.8);}
.flyMenu div span{padding:10px 20px; cursor: pointer; display: inline-block;}
.flyMenu div span:hover{color:red;}
.firstRow{margin-top: 60px;}
</style>
</head>

<body style="background-color:#6A5ACD;">

<?php
include "php/navbar.php";
include "php/opisanie.php";
include "php/comp.php";
include "php/odejda.php";
include "php/kontakti.php";
?>

<script language="javascript" src="js/jquery-3.5.1.slim.min.js"></script>
<script language="javascript" src="js/popper.min.js"></script>
<script language="javascript" src="js/bootstrap.min.js"></script>

</body>
</html>
