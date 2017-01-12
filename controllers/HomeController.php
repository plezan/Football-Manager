<?php

class HomeController
{
	public function homepage()
	{
		require_once('D:/wamp64/www/footballmanager/view/home/homepage.php');
	}

	public function display_player()
	{
		require_once('models/ArticleModel.php');
		$modelPlayers = new ArticleModel();
		$listePlayer = $modelPlayers->listArticles();

		require_once("view/description/player_description.php");
	}
}
 	
?>
