<?php  
class ArticleModel
{
	public function listArticles()
	{
		//Je me co a la bdd
		require_once('classes/database.php');

		$instanceBDD = BDD::getInstance();

		$requete = $instanceBDD->bdd->query($query);
		$resultat = $requete->fetchAll();
		return $resultat;
	}
}
?>
