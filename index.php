<h1>FOOTBALL MANAGER</h1>

<link rel="stylesheet" type="text/css" href="footballmanager.css">
<img src="ballon.jpg">

<?php 
	require_once('database.php');
	$instanceBDD = BDD::getInstance();
	$requete = $instanceBDD->bdd->query("SELECT * FROM players");
	$resultat = $requete->fetchAll();
	return $resultat;
?>