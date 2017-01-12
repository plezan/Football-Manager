<link rel="stylesheet" type="text/css" href="root/css/footballmanager.css">

<h1>FootballManager.imie</h1>
<h2>Description du site...</h2>
<img src="root/img/ballon.gif" style="width : 120px;height: 100px;">

<?php 

require_once('controllers/HomeController.php');



?><h2>LE JEU EST EN COURS EN DEVELOPPEMENT...</h2><?php


if(isset($_GET['page']))
{
	if($_GET['page'] == 0){ //MAIN MENU
		$home = new HomeController();
		$home->homepage();
	}
	if($_GET['page'] == 1){ //LISTE EQUIPE
		$players = new HomeController();
		$players->display_player();
	}
}


?>

<div style="clear:both;"></div>
</div>
 
<div id="footer">
<hr>
<a href="index.php?page=0">Accueil du site</a><br>
Copyright FootballManager.imie<br>
All rights reserved LOL
</div>