<?php

		require_once('classes/database.php');

		$instanceBDD = BDD::getInstance();

		

?>
	<form method="post">
		<label>Nom :</label>
		<input type="text" name="name"/><br/>
		<label>Age :</label>
		<input type="text" name="age"/><br/>
		<label>Genre :</label>
		<input type="text" name="sex"/><br/>
		<label>Numero :</label>
		<input type="text" name="nb"/><br/>
		<label>Score :</label>
		<input type="text" name="score"/><br/>
		<label>Poste :</label>
		<input type="text" name="pos"/><br/>
		<label>Image :</label>
		<input type="text" name="img"/><br/>
		<label>Equipe :</label>
		<input type="text" name="team"/><br/>
		<input type="submit"/>
	</form>

<?php

	if(!empty($_POST['name'])&&!empty($_POST['age'])&&!empty($_POST['sex'])&&!empty($_POST['nb'])&&!empty($_POST['score'])&&!empty($_POST['pos'])&&!empty($_POST['img'])&&!empty($_POST['team'])){
			$name_player = $_POST['name'];
			$age_player = $_POST['age'];
			$gender_player = $_POST['sex'];
			$shirtnumber_player = $_POST['nb'];
			$score_player = $_POST['score'];
			$position_player = $_POST['pos'];
			$img_src_player = $_POST['img'];
			$id_team = $_POST['team'];

			$instanceBDD->bdd->query('INSERT INTO Player VALUES
(null,'+$name_player+','+$age_player+','+$gender_player+','+$shirtnumber_player+','+$score_player+','+$position_player+','+$img_src_player+','+$id_team+');');
	}

?>