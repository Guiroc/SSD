<?php
	echo '<body>
		<link href="ssd.css" rel="stylesheet" media="all" type="text/css"/>';

		try{
			
			$connexion=new PDO('mysql:host=localhost;dbname=materiel;charset=utf8', 'root', '');//new PDO
			$reponse = 'SELECT max(lecture_sequentielle)"max_lecture_sequentielle", min(lecture_sequentielle)"min_lecture_sequentielle",  max(ecriture_sequentielle)"max_ecriture_sequentielle", min(ecriture_sequentielle)"min_ecriture_sequentielle", max(lecture_aleatoire)"max_lecture_aleatoire", min(lecture_aleatoire)"min_lecture_aleatoire",  max(ecriture_aleatoire)"max_ecriture_aleatoire", min(ecriture_aleatoire)"min_ecriture_aleatoire" FROM ssd';
			$reponse=$connexion->query($reponse);

			if ($unssd=$reponse->fetch()){
				
				$Electure_sequentielle=$unssd['max_lecture_sequentielle'];
				$Eecriture_sequentielle=$unssd['max_ecriture_sequentielle'];
				$Electure_aleatoire=$unssd['max_lecture_aleatoire'];
				$Eecriture_aleatoire=$unssd['max_ecriture_aleatoire'];
			}
			$reponse->closeCursor();	
		}catch (PDOException $e){}
		
		try{
			
			$connexion=new PDO('mysql:host=localhost;dbname=materiel;charset=utf8', 'root', '');//new PDO
			$reponse = 'SELECT * FROM ssd order by 1,2';
			$reponse=$connexion->query($reponse);
			echo "<table>
				<tr>
					<td class='td1'>Nom</td>
					<td class='td1'>Taille</td>
					<td class='td1'>Lecture sequentielle</td>
					<td class='td1'>Ecriture sequentielle</td>
					<td class='td1'>Lecture aleatoire</td>
					<td class='td1'>Ecriture aleatoire</td>
					<td class='td1'>Score globale</td>
				</tr>";
				
				while ($unssd=$reponse->fetch()){
				
					$Nlecture_sequentielle=round($unssd['lecture_sequentielle']*20/$Electure_sequentielle);
					$Necriture_sequentielle=round($unssd['ecriture_sequentielle']*20/$Eecriture_sequentielle);
					$lecture_aleatoire=round($unssd['lecture_aleatoire']*20/$Electure_aleatoire);
					$ecriture_aleatoire=round($unssd['ecriture_aleatoire']*20/$Eecriture_aleatoire);
					echo '<tr>
						<td rowspan="2">'.$unssd['nom'].'</td>
						<td rowspan="2" class="td2">'.$unssd['taille'].' Go</td>
						<td class="td2">'.$unssd['lecture_sequentielle'].' Mo/s</td>
						<td class="td2">'.$unssd['ecriture_sequentielle'].' Mo/s</td>
						<td class="td2">'.$unssd['lecture_aleatoire'].' IOPS</td>
						<td class="td2">'.$unssd['ecriture_aleatoire'].' IOPS</td>
						<td rowspan="2" class="td2">'.round(($Nlecture_sequentielle+$Necriture_sequentielle+$lecture_aleatoire+$ecriture_aleatoire)/4).'/20</td>
					</tr>
					<tr>
						<td class="td2">'.$Nlecture_sequentielle.'/20</td>
						<td class="td2">'.$Necriture_sequentielle.'/20</td>
						<td class="td2">'.$lecture_aleatoire.'/20</td>
						<td class="td2">'.$ecriture_aleatoire.'/20</td>
					</tr>';
				}
				$reponse->closeCursor();
			echo "</table>";
		}catch (PDOException $e){}
	echo "</body>";
?>