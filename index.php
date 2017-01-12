<link rel="stylesheet" type="text/css" href="root/css/footballmanager.css">

<?php 

require_once('controllers/HomeController.php');

if(isset($_GET['page']))
{
	if($_GET['page'] == 0)
	{
		$home = new HomeController();
		$home->homepage();
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