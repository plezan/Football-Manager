<?php  
class BDD
{
	public static $instance;

	public $bdd;

	private function __construct()
	{
		$this->bdd = new PDO('mysql:host=localhost;dbname=footballmanager;charset=utf8','root','', array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES UTF8'));
	}

	public static function getInstance()
	{
		if(empty(self::$instance))
		{
			self::$instance = new BDD();
		}
		return self::$instance;
	}
}

?>