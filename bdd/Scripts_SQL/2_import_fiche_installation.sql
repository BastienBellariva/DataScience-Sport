DROP TABLE IF EXISTS t_fiche_installation;

CREATE TABLE t_fiche_installation (
    -- Informations sur les départements
    numero_departement VARCHAR(4) NOT NULL,
    libelle_departement VARCHAR(50) NOT NULL,
    commune_insee VARCHAR(5) NOT NULL,
    commune_libelle VARCHAR(100) NOT NULL,
    -- Informations sur l'installation
    numero_installation VARCHAR(10),
    libelle_installation VARCHAR(150),
    -- Informations sur l'adresse de l'installation
    numero_voie_installation VARCHAR(10),
    libelle_voie_installation VARCHAR(100),
    lieu_dit_installation VARCHAR(100),
    code_postal_installation VARCHAR(10),
    arrondissement_installation VARCHAR(5),
    -- Caractéristique de l'installation
    type_installation VARCHAR(50),
    surface_couverte INT(10),
    nombre_lit INT(10),
    access_handicape INT(10),
    place_parking INT(10),
    place_parking_handicape INT(10),
    info_gardien VARCHAR(30),
    emprise_fonciere INT(10),
    transport_metro INT(2),
    transport_bus INT(2),
    transport_tram INT(2),
    transport_train INT(2),
    transport_bateau INT(2),
    nombre_fiche_equipement INT(10),
    nombre_equipement INT(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE './dataset_import/equipements/20180110_RES_FichesInstallations_UTF8.csv'
INTO TABLE t_fiche_installation
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
