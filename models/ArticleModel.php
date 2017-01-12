<?php  
class ArticleModel
{
	public function listPlayer()
	{
		//Je me co a la bdd
		require_once('classes/database.php');

		$instanceBDD = BDD::getInstance();
		$query = "SELECT * FROM player";

		$requete = $instanceBDD->bdd->query($query);
		$resultat = $requete->fetchAll();
		return $resultat;
	}
}
?>