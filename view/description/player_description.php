<h2>liste des joueurs : </h2>

<?php  
	$dossier = "root/img/Player/";

	foreach ($listePlayer as $player)
	{
		?><table><td><img src=<?php echo $dossier.$player['img_src_player'] ?> style="height : 260; width : 220;"></td>
		<td>

		<?php echo "	name : ".$player['name_player'].'<br>';?>
		<?php echo "	age : ".$player['age_player'].'<br>';?>
		<?php echo "	gender : ".$player['gender_player'].'<br>';?>
		<?php echo "	shirtnumber : ".$player['shirtnumber_player'].'<br>';?>
		<?php echo "	position : ".$player['position_player'].'<br>';?>
			
		</td>

		</table><hr>

<?php	}
?>