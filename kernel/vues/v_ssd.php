	<head>
		<meta charset="utf-8"/>
		<link type="text/css" rel="stylesheet" href="../../css/generique.css"/>
		<link type="text/css" rel="stylesheet" href="../../css/ssd.css"/>
		<title>SSD</title>
	</head>
	<div class="paragraphe1">
		Ces caractèristiques ne sont pas des valeurs de tests, çe sont les caractèrisques donné par le constructeur.
	</div>
	<div class="tableau">
		<div class="colonne1">Nom</div>
		<div class="colonne2">Taille (Go)</div>
		<div class="colonne3">Lecture/ecriture sequentielle (Mo)</div>
		<div class="colonne4">lecture/ecriture aleatoire (IOPS)</div>
		<div class="colonne5">interface</div>
		<div class="colonne6">format</div>
		<div class="colonne7">Prix (€)</div>
		<div class="colonne8">Prix du Go (€)</div>
		<div class="colonne9">Note</div>
		<!-- <div class="colonne10">Qualité/prix</div> -->
		<hr>
		<?php $i=0;
		while ($unssd=$lesssd->fetch()){ ?>
			<div class="ligne">
				<div class="colonne1">
					<?php '.$unssd['marque'].' '.$unssd['nom'].' ?>
				</div>
				<div class="colonne2">
					<?php '.$unssd['taille'].' ?>
				</div>
				<div class="colonne3">
					<?php if($unssd['lecture_sequentielle']==null and $unssd['ecriture_sequentielle']==null){
						echo '- / -';
					}
					else{
						if($unssd['ecriture_sequentielle']==null){
							echo $unssd['lecture_sequentielle'].' / -';
						}
						elseif($unssd['lecture_sequentielle']==null){
							echo '- / '.$unssd['ecriture_sequentielle'];
						}
						else{
							echo $unssd['lecture_sequentielle'].' / '.$unssd['ecriture_sequentielle'];
						}
					} ?>
				</div>
				<div class="colonne4">
					<?php if($unssd['lecture_aleatoire']==null and $unssd['ecriture_aleatoire']==null){
							echo '- / -';
					}
					else{
						if($unssd['ecriture_aleatoire']==null){
							echo $unssd['lecture_aleatoire'].' / -';
						}
						elseif($unssd['lecture_aleatoire']==null){
							echo '- / '.$unssd['ecriture_aleatoire'];
						}
						else{
							echo $unssd['lecture_aleatoire'].' / '.$unssd['ecriture_aleatoire'];
						}
					} ?>
				</div>
				<div class="colonne5">
					<?php '.$unssd['interface'].' ?>
				</div>
				<div class="colonne6">
					<?php '.$unssd['format'].' ?>
				</div>
				<div class="colonne7">
					<?php if($max[$i]==null and $min[$i]==null){
						echo ' - ';
					}
					else{
						if($max[$i]==null){
							echo $min[$i];
						}
						elseif($min[$i]==null){
							echo $max[$i];
						}
						else{
							echo $min[$i].' - '.$max[$i];
						}
					} ?>
				</div>
				<div class="colonne8">';
					<?php if($prix_go[$i]==null){
						echo '-';
					}
					else{
						echo $prix_go[$i];
					} ?>
				</div>
				<div class="colonne9">
					<?php if ($note[$i]==null){
						echo'- / 20';
					}
					else{
						echo $note[$i].' / 20';
					} ?>
				</div>
				<!-- <div class="colonne10">
					<?php '.$qualite_prix[$i].' ?>
				</div> -->
			</div>		
			<hr>
			<?php $i=$i+1;
		} ?>
	</div>