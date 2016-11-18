<?php

	class config_ini(){
		
		private config_ini;
		
		function enregistre_config_ini(){
			
			if(file_exists($fichier) && $fichier_lecture=file($fichier)){
				
				foreach($fichier_lecture as $ligne){
					
					if(preg_match("#^\[.+\]$#",$ligne)){
						
					//Des crochets au début et à la fin, ça, c'est un groupe, pardi !
					}
					else{
						
						if(!preg_match("#^\;#",$ligne)){ //S'il n'y a pas de point-virgule, ce n'est pas un commentaire{
							
							$temp=explode("=",$ligne,2);
							config_ini list([$temp[1],$temp[2]])
						}
					}
				}
			}
			else{
				
				die("Le fichier est introuvable ou incompatible");
			}
		}
	}
?>