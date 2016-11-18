<?php
	echo '<body>
		<link href="ssd.css" rel="stylesheet" media="all" type="text/css"/>';
		
		try{
			
			$connexion=new PDO('mysql:host=localhost;dbname=materiel;charset=utf8', 'root', '');//new PDO
			$reponse = 'SELECT count(id)"total" from ssd';
			$reponse=$connexion->query($reponse);

			if ($totalssd=$reponse->fetch()){
				
				echo '<div>'.$totalssd['total'].' SSD enregistrés.</div>';
			}
			$reponse->closeCursor();
		}catch (PDOException $e){}
				
		try{
			
			$ctypessd = 'SELECT distinct interface, format FROM ssd order by 2,1';
			$ctypessd=$connexion->query($ctypessd);

			while ($typessd=$ctypessd->fetch()){

				try{
			
					$reponse = 'SELECT max(lecture_sequentielle)"max_lecture_sequentielle", max(ecriture_sequentielle)"max_ecriture_sequentielle", max(lecture_aleatoire)"max_lecture_aleatoire", max(ecriture_aleatoire)"max_ecriture_aleatoire" FROM ssd where interface ="'.$typessd['interface'].'" and format ="'.$typessd['format'].'"';
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
			
					$reponse = 'SELECT * FROM ssd where interface ="'.$typessd['interface'].'" and format ="'.$typessd['format'].'" order by 2,1';
					$reponse=$connexion->query($reponse);
					echo "</br>
					<table>
						<tr>
							<td colspan='8' class='td1'>".$typessd['interface'].' | '.$typessd['format']."</td>
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
							<td>'.$unssd['nom'].'</td>
							<td class="td2">';
								if ($unssd['taille']>0){
									
									echo $unssd['taille'].' Go';
								}
								else{
									
									echo '-';
								}
							echo '</td>
							<td class="td2">';
								if ($unssd['lecture_sequentielle']>0){
									
									echo $unssd['lecture_sequentielle'].' Mo/s';
								}
								else{
									
									echo '- Mo/s';
								}
							echo '</td>
							<td class="td2">';
								if ($unssd['ecriture_sequentielle']>0){
									
									echo $unssd['ecriture_sequentielle'].' Mo/s';
								}
								else{
									
									echo '- Mo/s';
								}
							echo '</td>
							<td class="td2">';
								if ($unssd['lecture_aleatoire']>0){
									
									echo $unssd['lecture_aleatoire'].' IOPS';
								}
								else{
									
									echo '- IOPS';
								}
							echo '</td>
							<td class="td2">';
								if ($unssd['ecriture_aleatoire']>0){
									
									echo $unssd['ecriture_aleatoire'].' IOPS';
								}
								else{
									
									echo '- IOPS';
								}
							echo '</td>
							<td class="td2">';
								if ($unssd['taille']>0 and $unssd['lecture_sequentielle']>0 and $unssd['ecriture_sequentielle']>0 and $unssd['lecture_aleatoire']>0 and $unssd['ecriture_aleatoire']>0 ){
									
									echo round(($Nlecture_sequentielle+$Necriture_sequentielle+$lecture_aleatoire+$ecriture_aleatoire)/4).'/20';
								}
								else{
									
									echo '-/20';
								}
							echo '</td>
						</tr>';
					}
					$reponse->closeCursor();
					echo "</table>";
				}catch (PDOException $e){}
			}
			$ctypessd->closeCursor();	
		}catch (PDOException $e){}
	echo "</body>";
?>