DROP TABLE IF EXISTS t_subvention_equipement;

CREATE TABLE t_subvention_equipement (
  -- Informations géographiques
  region VARCHAR(50) NOT NULL,
  numero_departement VARCHAR(5) NOT NULL,
  libelle_commune VARCHAR(70) NOT NULL,
  -- Informations subvention
  porteur_projet VARCHAR(200),
  annee_subvention VARCHAR(4),
  projet VARCHAR(255),
  numero_ses VARCHAR(10),
  cout_total INT(10),
  subvention_accordee INT(10),
  objectif VARCHAR(150)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE './dataset_import/subventions/SubvCNDS_PartEqu2015-UTF8.csv'
INTO TABLE t_subvention_equipement
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;