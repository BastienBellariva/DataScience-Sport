DROP TABLE IF EXISTS t_categorie_equipement_commune;

CREATE TABLE t_categorie_equipement_commune (
  -- Informations sur la commune
  code_insee_commune VARCHAR(20) NOT NULL,
  libelle_commune VARCHAR(70) NOT NULL,
  -- Informations sur les catégories
  nombre_equipement INT(4),
  bassin_natation INT(4),
  boulodrome INT(4),
  bowling INT(4),
  circuit_sport_mecanique INT(4),
  court_tennis INT(4),
  equipement_cyclisme INT(4),
  equipement_piste_ski INT(4),
  equipement_forme_sante INT(4),
  equipement_equestre INT(4),
  equipement_athletisme INT(4),
  mur_fronton INT(4),
  parcours_golf INT(4),
  parcours_sante INT(4),
  parcours_tir INT(4),
  aire_sport_glace INT(4),
  plaine_jeu INT(4),
  plateau_eps INT(4),
  salle_combat INT(4),
  salle_multisport INT(4),
  salle_terrain_specialise INT(4),
  salle_non_specialise INT(4),
  site_acticvite_aerienne INT(4),
  site_activite_aquatique INT(4),
  site_modelisme INT(4),
  skate_park INT(4),
  structure_artificielle_escalade INT(4),
  terrain_grand_jeu INT(4),
  terrain_exterieur_petit_collectif INT(4),
  equipement_sport_nature INT(4),
  divers_equipement INT(4)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE './dataset_import/equipements/communes/20180110_RES_FamEq_Communes_UTF8.csv' 
INTO TABLE t_categorie_equipement_commune
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
