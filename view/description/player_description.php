<?php  

	echo "LISTE DES JOUEURS : <br>";
	$dossier = "root/img/Player/";

	foreach ($listePlayer as $player)
	{
		echo $player['name_player']."<br>";
		?><img src=<?php echo $dossier.$player['img_src_player'] ?>><br><?php
	}
?>