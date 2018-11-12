DROP TABLE IF EXISTS t_subvention_territoriale;

CREATE TABLE t_subvention_territoriale (
  -- Informations subvention
  code_federation VARCHAR(10),
  libelle_federation VARCHAR(100),
  beneficiaire VARCHAR(200),
  siege VARCHAR(70),
  annee_subvention VARCHAR(4),
  code_postal VARCHAR(10),
  subvention INT(10),
  objectif VARCHAR(150),
  action VARCHAR(150),
  region VARCHAR(80)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE './dataset_import/subventions/SubvCNDS_PartTer2015-UTF8.csv'
INTO TABLE t_subvention_territoriale
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;