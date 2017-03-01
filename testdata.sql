insert into CATEGORIE (CAT_ID, DESIGNATION) values (1, 'Meuble');

insert into CATEGORIE (CAT_ID, DESIGNATION) values (2, 'Electroménager');

insert into CATEGORIE (CAT_ID, DESIGNATION) values (3, 'Multimédia');

insert into CATEGORIE (CAT_ID, DESIGNATION) values (4, 'Equipement');


insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (1, 1,'Table');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (2, 1,'Chaise');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (3, 1,'Fauteuil');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (4, 1,'Lit');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (5, 1,'Canapé');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (6, 1,'Commode');


insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (7, 2,'Frigo');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (8, 2,'Machine à laver');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (9, 2,'Four-micro-onde');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (10, 2,'Cuisiière');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (11, 2,'Lave vaisselle');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (12, 2,'Fer à repasser');


insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (13, 3,'Matériel de sport');


insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (14, 4,'Console de Jeux');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (15, 4,'Location TV');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (16, 4,'Vidéo Projecteur');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (17, 4,'Appareil Photo');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (18, 4,'Imprimente');

insert into SOUSCATEGORIE (SOUSCAT_ID, CAT_ID, DESIGNATION) values (19, 4,'Gopro');


/*********************************************************************************************************************************************************************************************/


insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (1, 'Randrianasolo', 'Samuel', 'sam@gmail.com', '0345012345', 'sam', 'Mount 387 west', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (2, 'rasolondraibe', 'Frideriche', 'fridy@yahoo.com', '0324012358', 'fridy', 'Bira 107 rue BB', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (3, 'Fenitriniaina', 'Rack', 'rack@outlook.com', '0331012520', 'rack', 'FII lot: 555/AAA', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (4, 'Alisoa', 'Arinoro', 'arinoro@gmail.Com', '0342484210', 'arinoro', 'Tanambao Lot:385', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (5, 'Anjaniaina', 'Elwina', 'anja@gmail.Com', '0348798720', 'anja', 'IB 266 Andoharanofotsy', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (6, 'Tahiriniaina', 'Manjatina', 'manjatina@gmail.Com', '0348798720', 'manjatina', 'IB 266 Andoharanofotsy', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (7, 'Rindrarisoa', 'Francline', 'francline@gmail.Com', '0348798728', 'francline', 'IB 266 Andoharanofotsy', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (8, 'Fifaliana', 'Rebecca', 'rebecca@gmail.com', '0348798724', 'rebecca', 'IB 266 Andoharanofotsy', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (9, 'Rafalimanana', 'Winnah', 'winnah@gmail.com', '0348798723', 'winnah', 'IB 266 Andoharanofotsy', 0);

insert into CLIENT (USER_ID, NOM, PRENOM, EMAIL, TEL, MOTDEPASSE, ADRESSE, STATUT) values (10, 'Heriniaian', 'Tinah', 'tinah@gmail.com', '0348798729', 'tinah', 'IB 266 Andoharanofotsy', 0);

/*********************************************************************************************************************************************************************************************/

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (1, 1,'Table basse GAYA', ' ', 29, 0, 0, 0, 0, 'table-basse-gaya.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (2, 1,'Table basse SELENA', '',  32, 0, 0, 0, 0, 'table-basse-selena.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (3, 1,'Table de terrasse BASTILLE', '',  42, 0, 0, 0, 0, 'table-de-terrasse-bastille.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (4, 1,'table-a-manger-lisboa-noir', '',  32, 0, 0, 0, 0, 'table-a-manger-lisboa-noir.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (5, 1,'Table basse HOLY', '',  47, 0, 0, 0, 0, 'table-basse-holy.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (6, 2, 'Chaise de bureau CITY', '',  37, 0, 0, 0, 0, 'chaise-de-bureau-city.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (7, 2, 'Chaise CARRIE', '',  15, 0, 0, 0, 0, 'chaise-carrie.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (8, 2, 'Chaise ARRIANE', '',  38, 0, 0, 0, 0, 'chaise-arriane.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (9, 2, 'Chaise IGLOO', '',  42, 0, 0, 0, 0, 'chaise-igloo.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (10, 2, 'Chaise MIA', '', 5, 0, 0, 0, 0, 'chaise-mia.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (11, 3, 'Fauteuil ARDA', '',  27, 0, 0, 0, 0, 'fauteuil-arda.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (12, 3, 'Fauteuil PALO ALTO', '',  74, 0, 0, 0, 0, 'fauteuil-pallo-alto.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (13, 3, 'Fauteuil GUSTAVE', '',  96, 0, 0, 0, 0, 'fauteuil-gustave.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (14, 3, 'Fauteuil SHELL', '',  240, 0, 0, 0, 0, 'fauteuil-shell.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (15, 3, 'Fauteuil TROCARDERO', '',  720, 0, 0, 0, 0, 'fauteuil-trocardero.jpg');



insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (16, 4, 'lit dream 140 x 190 cm', '',  129, 0, 0, 0, 0, 'lit-dream-140-x-190-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (17, 4, 'lit bultex - 160 x 200 cm', '',  620, 0, 0, 0, 0, 'lit-bultex-160-x-200-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (18, 4, 'Lit superposé JULES - 90 x 200 cm', '',  177, 0, 0, 0, 0, 'lit-superpose-jules-90-x-200-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (19, 4, 'Lit SIMMONS - 140 x 190 cm', '',  647, 0, 0, 0, 0, 'lit-simmons-140-x-190-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (20, 4, 'Lit CONFORT - 140 x 190 cm', '',  84, 0, 0, 0, 0, 'lit-confort-140-x-190-cm.jpg');



insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (21, 5, 'Canapé Fixe BIZO', '',  109, 0, 0, 0, 0, 'canape-fixe-bizo.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (22, 5, 'Convertible COPENHAGEN', '',  125, 0, 0, 0, 0, 'convertile-copenhagen.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (23, 5, 'Canapé Fixe CLUB', '',  137, 0, 0, 0, 0, 'canape-fixe-club.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (24, 5, 'Canapé DETROIT Noir', '',  141, 0, 0, 0, 0, 'canape-detroit-noir.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (25, 5, 'Canapé Fixe LOUIS', '',  211, 0, 0, 0, 0, 'canape-fixe-louis.jpg');

	
insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (26, 6, 'Commode PRESTA', '',  25, 0, 0, 0, 0, 'comode-presta.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (27, 6, 'Commode BLISS', '',  54, 0, 0, 0, 0, 'commode-bliss.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (28, 6, 'Commode SIXT', '',  109, 0, 0, 0, 0, 'commode-sixt.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (29, 6, 'Coiffeuse ODELO', '',  151, 0, 0, 0, 0, 'coiffeuse-odelo.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (30, 6, 'Commode ODEON - L', '',  408, 0, 0, 0, 0, 'commode-odeon-L.jpg.jpg');



insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (31, 7,'Réfrigérateur HAIER - 550 L', ' ', 339, 0, 0, 0, 0, 'refrigerateur-haier-550-L.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (32, 7,'Réfrigérateur SAMSUNG - 452 L', '',  414, 0, 0, 0, 0, 'refrigerateur-samsung-452-L.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (33, 7,'Réfrigérateur HOTPOINT - 537 L', '',  360, 0, 0, 0, 0, 'refrigerateur-hotpoint-537-L.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (34, 7,'Réfrigérateur FAR - 93 L', '',  66, 0, 0, 0, 0, 'refrigerateur-far-93-L.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (35, 7,'Réfrigérateur CANDY - 97 L', '',  78, 0, 0, 0, 0, 'refrigerateur-candy-97-L.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (36, 8,'Lave linge BOSCH - 8 kg', ' ', 186, 0, 0, 0, 0, 'lave-linge-bosh_8-kg.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (37, 8,'Lave linge ELECTROLUX - 10 kg', '',  202, 0, 0, 0, 0, 'lave-linge-electrolux-10-kg.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (38, 8,'Lave linge HOTPOINT - 9 kg', '',  190, 0, 0, 0, 0, 'lave-linge-hotpoint-9-kg.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (39, 8,'Lave linge INDESIT - 6kg - Séchant', '',  156, 0, 0, 0, 0, 'lave-linge-indesit-6kg-sechant.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (40, 8,'Lave linge HAIER - 6 kg', '',  108, 0, 0, 0, 0, 'lave-linge-haier-6-kg.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (41, 9,'Lave vaisselle HAIER', ' ', 137, 0, 0, 0, 0, 'lave-vaisselle-haier.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (42, 9,'Lave vaisselle BEKO', '',  137, 0, 0, 0, 0, 'lave-vaisselle-beko.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (43, 9,'Lave vaisselle INDESIT', '',  125, 0, 0, 0, 0, 'lave-vaisselle-indesit.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (44, 9,'Lave vaisselle HOTPOINT', '',  101, 0, 0, 0, 0, 'lave-vaisselle-hotpoint.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (45, 9,'Lave vaisselle INDESIT Inox', '',  117, 0, 0, 0, 0, 'lave-vaisselle-indesit-inox.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (46, 10,'Four - Micro ondes - FAR', ' ', 15, 0, 0, 0, 0, 'four-micro-ondes-far.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (47, 10,'Four - Micro ondes - HAIER', '',  41, 0, 0, 0, 0, 'four-micro-ondes-haier.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (48, 10,'Four - Micro ondes - WHIRPOOL', '',  60, 0, 0, 0, 0, 'four-micro-ondes-whirpool.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (49, 10,'Four - Micro ondes - LG', '',  70, 0, 0, 0, 0, 'four-micro-ondes-lg.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (50, 10,'Four - Micro ondes - SAMSUNG', '',  90, 0, 0, 0, 0, 'four-micro-ondes-samsung.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (51, 11,'Cuisinière - BEKO', ' ', 176, 0, 0, 0, 0, 'cuisiniere-beko.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (52, 11,'Cuisinière - HOTPOINT', '',  210, 0, 0, 0, 0, 'cuisiniere-hotpoint.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (53, 11,'Cuisinière - INDESIT', '',  2016, 0, 0, 0, 0, 'cuisiniere-inesit.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (54, 12,'Fer à repasser - CALOR', ' ', 16, 0, 0, 0, 0, 'fer-a-repasser-color.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (55, 12,'Central vapeur - CALOR', '',  101, 0, 0, 0, 0, 'central-vapeur-calor.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (56, 13,'Gym ball DOMYOS', ' ', 10, 0, 0, 0, 0, 'gym-ball-domyos.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (57, 13,'Tapis de sport DOMYOS', '',  9, 0, 0, 0, 0, 'tapis-de-sport-domyos.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (58, 13,'Haltères DOMYOS', '',  17, 0, 0, 0, 0, 'haltere-domyos.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (59, 13,'Banc de musculation DOMYOS', '',  48, 0, 0, 0, 0, 'banc-de-musculation-domyos.jpg');



insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (60, 14,'Manette de jeux Dual Shock 4 - PS4', ' ', 24, 0, 0, 0, 0, 'manette-de-jeux-dual-shock-4--ps4.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (61, 14,'PS4', '',  168, 0, 0, 0, 0, 'ps4.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (62, 14,'PlayStation VR', '',  215, 0, 0, 0, 0, 'playstation-vr.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (63, 14,'PS4 Pro Noire 1To 1 To', '',  222, 0, 0, 0, 0, 'ps4-pro-noire-1to-to.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (64, 15,'Décodeur TNT', ' ', 20, 0, 0, 0, 0, 'decodeur-tnt.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (65, 15,'Télévision LG - 60 cm', '',  66, 0, 0, 0, 0, 'television-lg-60-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (66, 15,'Télévision SAMSUNG - 61 cm', '',  85, 0, 0, 0, 0, 'television-samsung-61-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (67, 15,'Télévision HAIER - 81 cm', '',  95, 0, 0, 0, 0, 'television-haier-81-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (68, 15,'Télévision LG - 80 cm', '',  95, 0, 0, 0, 0, 'television-lg-80-cm.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (69, 15,'Télévision SONY - 122 cm', '',  314, 0, 0, 0, 0, 'television-sony-122-cm.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (70, 16,'Vidéoprojecteur ACER - HD 1080p', ' ', 350, 0, 0, 0, 0, 'videoprojecteur-acer-hd-1080p.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (71, 16,'Vidéoprojecteur BENQ - HD 1080p', '',  364, 0, 0, 0, 0, 'videoprojecteur-benq-hd-1080p.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (72, 16,'Vidéoprojecteur EPSON - HD 1080p', '',  661, 0, 0, 0, 0, 'videoprojecteur-epson-hd-1080p.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (73, 17,'POLAROID + 50 photos inclues', ' ', 77, 0, 0, 0, 0, 'polaroid-50-photos-inclues.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (74, 17,'Appareil Photo SONY', '',  114, 0, 0, 0, 0, 'appareil-photos-sony.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (75, 17,'POLAROID + 100 photos inclues', '',  114, 0, 0, 0, 0, 'polaroid-100-photos-onclues.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (76, 17,'POLAROID + 200 photos inclues', '',  214, 0, 0, 0, 0, 'polaroid-200-photos-onclues.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (77, 17,'Appareil Photo CANON', '',  273, 0, 0, 0, 0, 'appareil-photos-canon.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (78, 18,'Imprimante HP Jet d''encre', ' ', 61, 0, 0, 0, 0, 'imprimante-hp-jet-d-encre.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (79, 18,'Imprimante SAMSUNG Laser', '',  113, 0, 0, 0, 0, 'imprimante-samsung-laser.jpg');


insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (80, 19,'GoPro HERO4 Silver', ' ', 221, 0, 0, 0, 0, 'gopro-hero4-silver.jpg');

insert into ARTICLE (ARTICLE_ID, SOUSCAT_ID, DESIGNATION, DESCRIPTION, PRIX_HEURE, NBVOTE, NBCOMS, NBPRSLOUER, ETAT, IMAGE) values (81, 19,'GoPro HERO4 Black', '',  241, 0, 0, 0, 0, 'gopro-hero4-black.jpg');

