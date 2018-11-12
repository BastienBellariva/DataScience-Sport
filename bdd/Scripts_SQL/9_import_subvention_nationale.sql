DROP TABLE IF EXISTS t_subvention_nationale;

CREATE TABLE t_subvention_nationale (
  -- Informations subvention
  porteur_projet VARCHAR(200),
  annee_subvention VARCHAR(4),
  projet VARCHAR(255),
  subvention_accordee INT(10),
  type_subvention VARCHAR(150)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE './dataset_import/subventions/SubvCNDS_PartNat2015-UTF8.csv'
INTO TABLE t_subvention_nationale
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;