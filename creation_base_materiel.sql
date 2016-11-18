
create table marque(
marque_id int,
marque_libelle varchar(50),

constraint pk_marque_id primary key marque(marque_id));


create table ssd(
ssd_id int,
ssd_marque_id int,
ssd_libelle varchar(50),
ssd_capacite int,
ssd_lecture_sequentielle int,
ssd_ecriture_sequentielle int,
ssd_lecture_aleatoire int,
ssd_ecriture_aleatoire int,
ssd_interface varchar(50),
ssd_format varchar(50),

constraint pk_ssd_id primary key(ssd_id),
constraint fk_ssd_marque_id foreign key(ssd_marque_id) references marque(marque_id));