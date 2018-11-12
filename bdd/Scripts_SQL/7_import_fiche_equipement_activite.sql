DROP TABLE IF EXISTS t_fiche_equipement_activite;

CREATE TABLE t_fiche_equipement_activite (
  -- Informations géographiques
  code_departement VARCHAR(5) NOT NULL,
  libelle_departement VARCHAR(50) NOT NULL,
  code_insee_commune VARCHAR(20) NOT NULL,
  libelle_commune VARCHAR(70) NOT NULL,
  -- Informations équipements/activités
  equipement_id VARCHAR(10),
  nb_equipement INT(4),
  code_activite VARCHAR(10),
  libelle_activite VARCHAR(150),
  activite_praticable INT(4),
  activite_pratique INT(4),
  activite_salle_speciale INT(4),
  niveau_activite VARCHAR(50)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE './dataset_import/equipements/20180110_RES_FichesEquipementsActivites_UTF8.csv'
INTO TABLE t_fiche_equipement_activite
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
