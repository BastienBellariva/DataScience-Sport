DROP TABLE IF EXISTS t_annuaire_asso_club;

CREATE TABLE t_annuaire_asso_club (
    -- Informations sur l'association
    discipline VARCHAR(100) NOT NULL,
    libelle_association VARCHAR(150) NOT NULL,
    declaration_prefecture VARCHAR(20),
    agrement_jeunesse VARCHAR(20),
    affiliation_federale VARCHAR(20),
    site_internet VARCHAR(70),
    -- Informations adresse
    extension_adresse VARCHAR(40),
    quartier VARCHAR(40),
    complexe VARCHAR(60),
    unite_fonctionnelle VARCHAR(100),
    numero_adresse VARCHAR(10),
    libelle_rue VARCHAR(150),
    code_postale VARCHAR(15),
    commune VARCHAR(30),
    complement_adresse VARCHAR(50),
    -- Informations sur classe d'age
    zero_trois_ans VARCHAR(5),
    trois_six_ans VARCHAR(5),
    six_douze_ans VARCHAR(5),
    douze_quinze_ans VARCHAR(5),
    junior_vingt_ans VARCHAR(5),
    adulte VARCHAR(5),
    senior VARCHAR(5),
    handicape VARCHAR(5),
    corpo VARCHAR(5),
    geolocalisation VARCHAR(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE "./dataset_import/annuaire/annuaire-des-associations-et-clubs-sportifs_UTF8.csv"
INTO TABLE t_annuaire_asso_club
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;