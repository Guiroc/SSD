<?php
	
	class m_ssd{
		
		//variable
		private $list;

		//connexion base
		static function connexion(){
			
			try{
				
				$connexion = new PDO('mysql:host=localhost;dbname=materiel;charset=utf8','root','');
			}
			catch(Exception $e){
				
				
			}
			return($connexion);
		}
		
		 static function nombre_ssd(){
			$connexion = m_ssd::connexion();
			$sql = 'select count(id)"nb" from ssd';
			$sql = $connexion -> query($sql);
			if ($nb = $sql -> fetch()){
				
				return($nb['nb']);
			}		
		}
		
		static function select_ssd(){
			$connexion = m_ssd::connexion();
			$sql = 'select nom,taille,lecture_sequentielle,ecriture_sequentielle,lecture_aleatoire,ecriture_aleatoire,interface,format,marque from ssd';
			$sql = $connexion -> query($sql);
			return($sql);		
		}
		static function taille_ssd(){
			$connexion = m_ssd::connexion();
			$sql = 'select taille from ssd';
			$sql = $connexion -> query($sql);
			return($sql);		
		}
		static function max_prix(){
			$connexion = m_ssd::connexion();
			$sql = 'select prix_materiel_net, prix_rue_du_commerce_fr, prix_ldlc_com from ssd';
			$sql = $connexion -> query($sql);
			while ($pdo = $sql -> fetch()){
				$a = null;
				if($pdo['prix_materiel_net'] > $pdo['prix_rue_du_commerce_fr']){
					$a = $pdo['prix_materiel_net'];
				}
				else{
					$a = $pdo['prix_rue_du_commerce_fr'];
				}
				if ($pdo['prix_ldlc_com']>$a){
					$a = $pdo['prix_ldlc_com'];
				}
				$b[] = $a;
			}
			return($b);		
		}
		
		static function min_prix(){
			$connexion = m_ssd::connexion();
			$sql = 'select prix_materiel_net, prix_rue_du_commerce_fr, prix_ldlc_com from ssd';
			$sql = $connexion -> query($sql);
			while ($pdo = $sql -> fetch()){
				
				if($pdo['prix_materiel_net'] < $pdo['prix_rue_du_commerce_fr']){
					$a = $pdo['prix_materiel_net'];
				}
				else{
					$a = $pdo['prix_rue_du_commerce_fr'];
				}
				if ($pdo['prix_ldlc_com']<$a){
					$a = $pdo['prix_ldlc_com'];
				}
				$b[] = $a;
			}
			return($b);		
		}
		static function milieu_prix(){
			
			$a = m_ssd::min_prix();
			$b = m_ssd::max_prix();
			$i = 0;
			while($i < count($a)){
				$c[] = ($a[$i]+$b[$i])/2;
				$i = $i+1;
			}
			return($c);
			
		}
		static function prix_go(){
			$a = m_ssd::milieu_prix();
			$sql = m_ssd::taille_ssd();
			$i = 0;
			
			while($pdo = $sql -> fetch()){
				$b = $a[$i]/$pdo['taille'];
				
				if(number_format($b,2) != 0.00){
					$c[] = number_format($b,2);
				}
				else{
					$c[] = null;
				}
				$i = $i + 1;
				}
				return($c);
		}
		static function max(){
			$connexion = m_ssd::connexion();
			$sql = 'select max(lecture_sequentielle)"mlecture_sequentielle",max(ecriture_sequentielle)"mecriture_sequentielle",max(lecture_aleatoire)"mlecture_aleatoire",max(ecriture_aleatoire)"mecriture_aleatoire" from ssd';
			$sql = $connexion -> query($sql);
			if ($nb = $sql -> fetch()){
				
				return($nb);
			}
			
		}
		static function note(){
			
			$a = m_ssd::max();
			$connexion = m_ssd::connexion();
			$sql = 'select lecture_sequentielle,ecriture_sequentielle,lecture_aleatoire,ecriture_aleatoire from ssd';
			$sql = $connexion -> query($sql);
			while ($pdo = $sql -> fetch()){
				if ($pdo['lecture_sequentielle'] == null or $pdo['ecriture_sequentielle'] == null or $pdo['lecture_aleatoire'] == null or $pdo['ecriture_aleatoire'] == null){
				$b[] = null;
				}
				else{
					$b[] = number_format(($pdo['lecture_sequentielle'] * 5 / $a['mlecture_sequentielle'] + $pdo['ecriture_sequentielle'] * 5 / $a['mecriture_sequentielle'] + $pdo['lecture_aleatoire'] * 5 / $a['mlecture_aleatoire'] + $pdo['ecriture_aleatoire'] * 5 / $a['mecriture_aleatoire']),0);
				}
			}
			return($b);
		}
		static function qualite_prix(){
			
			$a = m_ssd::note();
			$c = m_ssd::prix_go();
			$i = 0;
			while($i < count($a)){
				if(($a[$i] == null or 20 - $a[$i]) * $c[$i] == 0){
					$b[] = '-';
				}
				else{
					$b[] = (20 - $a[$i]) * $c[$i];
				}
				$i = $i + 1;
			}
			return($b);
		}
	}
?>