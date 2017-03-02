/*==============================================================*/
/* Nom de SGBD :  PostgreSQL 8                                  */
/* Date de création :  01/03/2017 11:44:00                      */
/*==============================================================*/


drop index ASSOCIATION_10_FK;

drop index ARTICLE_PK;

drop table ARTICLE;

drop index CATEGORIE_PK;

drop table CATEGORIE;

drop index CLIENT_PK;

drop table CLIENT;

drop index ASSOCIATION_5_FK;

drop index COMMANDE_PK;

drop table COMMANDE;

drop index ASSOCIATION_12_FK;

drop index ASSOCIATION_8_FK;

drop index COMMENTAIRE_PK;

drop table COMMENTAIRE;

drop index ASSOCIATION_16_FK;

drop index ASSOCIATION_15_FK;

drop index DETAILCOMMNDE_PK;

drop table DETAILCOMMNDE;

drop index ASSOCIATION_9_FK;

drop index SOUSCATEGORIE_PK;

drop table SOUSCATEGORIE;

drop index ASSOCIATION_11_FK;

drop index STOCK_PK;

drop table STOCK;

drop index ASSOCIATION_13_FK;

drop index ASSOCIATION_14_FK;

drop index VOTECLIENT_PK;

drop table VOTECLIENT;


/*==============================================================*/
/* Table : ARTICLE                                              */
/*==============================================================*/

/*==============================================================*/
/* Table : ARTICLE                                              */
/*==============================================================*/
create table ARTICLE (
   ARTICLE_ID           SERIAL               not null,
   SOUSCAT_ID           INT4                 not null,
   DESIGNATION          VARCHAR(30)          null,
   DESCRIPTION          TEXT                 null,
   PRIX_HEURE           NUMERIC(6,1)         null,
   NBVOTE               INT4                 null,
   NBCOMS               INT4                 null,
   NBPRSLOUER           INT4                 null,
   ETAT                 INT2                 null,
   IMAGE                VARCHAR(30)          null,
   constraint PK_ARTICLE primary key (ARTICLE_ID)
);

/*==============================================================*/
/* Index : ARTICLE_PK                                           */
/*==============================================================*/
create unique index ARTICLE_PK on ARTICLE (
ARTICLE_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_10_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_10_FK on ARTICLE (
SOUSCAT_ID
);

/*==============================================================*/
/* Table : CATEGORIE                                            */
/*==============================================================*/
create table CATEGORIE (
   CAT_ID               SERIAL               not null,
   DESIGNATION          VARCHAR(30)          null,
   constraint PK_CATEGORIE primary key (CAT_ID)
);

/*==============================================================*/
/* Index : CATEGORIE_PK                                         */
/*==============================================================*/
create unique index CATEGORIE_PK on CATEGORIE (
CAT_ID
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT (
   USER_ID              SERIAL               not null,
   NOM                  VARCHAR(20)          null,
   PRENOM               VARCHAR(20)          null,
   EMAIL                VARCHAR(20)          null,
   TEL                  VARCHAR(15)          null,
   MOTDEPASSE           VARCHAR(20)          null,
   ADRESSE              VARCHAR(50)          null,
   STATUT               INT2                 null,
   constraint PK_CLIENT primary key (USER_ID)
);

/*==============================================================*/
/* Index : CLIENT_PK                                            */
/*==============================================================*/
create unique index CLIENT_PK on CLIENT (
USER_ID
);

/*==============================================================*/
/* Table : COMMANDE                                             */
/*==============================================================*/
create table COMMANDE (
   CMD_ID               SERIAL               not null,
   USER_ID              INT4                 not null,
   DATE_CMD             DATE                 null,
   DATETIME_DEBUT       DATE                 null,
   DATETIME_FIN         DATE                 null,
   ETAT                 INT2                 null,
   constraint PK_COMMANDE primary key (CMD_ID)
);

/*==============================================================*/
/* Index : COMMANDE_PK                                          */
/*==============================================================*/
create unique index COMMANDE_PK on COMMANDE (
CMD_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_5_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_5_FK on COMMANDE (
USER_ID
);

/*==============================================================*/
/* Table : COMMENTAIRE                                          */
/*==============================================================*/
create table COMMENTAIRE (
   COMS_ID              SERIAL               not null,
   USER_ID              INT4                 not null,
   ARTICLE_ID           INT4                 not null,
   CONTENUE             TEXT                 null,
   constraint PK_COMMENTAIRE primary key (COMS_ID)
);

/*==============================================================*/
/* Index : COMMENTAIRE_PK                                       */
/*==============================================================*/
create unique index COMMENTAIRE_PK on COMMENTAIRE (
COMS_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_8_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_8_FK on COMMENTAIRE (
ARTICLE_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_12_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_12_FK on COMMENTAIRE (
USER_ID
);

/*==============================================================*/
/* Table : DETAILCOMMNDE                                        */
/*==============================================================*/
create table DETAILCOMMNDE (
   DETAILCMD_ID         SERIAL               not null,
   ARTICLE_ID           INT4                 not null,
   CMD_ID               INT4                 not null,
   QUANTITE_PDT         INT4                 null,
   constraint PK_DETAILCOMMNDE primary key (DETAILCMD_ID)
);

/*==============================================================*/
/* Index : DETAILCOMMNDE_PK                                     */
/*==============================================================*/
create unique index DETAILCOMMNDE_PK on DETAILCOMMNDE (
DETAILCMD_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_15_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_15_FK on DETAILCOMMNDE (
ARTICLE_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_16_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_16_FK on DETAILCOMMNDE (
CMD_ID
);

/*==============================================================*/
/* Table : SOUSCATEGORIE                                        */
/*==============================================================*/
create table SOUSCATEGORIE (
   SOUSCAT_ID           SERIAL               not null,
   CAT_ID               INT4                 not null,
   DESIGNATION          VARCHAR(30)          null,
   constraint PK_SOUSCATEGORIE primary key (SOUSCAT_ID)
);

/*==============================================================*/
/* Index : SOUSCATEGORIE_PK                                     */
/*==============================================================*/
create unique index SOUSCATEGORIE_PK on SOUSCATEGORIE (
SOUSCAT_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_9_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_9_FK on SOUSCATEGORIE (
CAT_ID
);

/*==============================================================*/
/* Table : STOCK                                                */
/*==============================================================*/
create table STOCK (
   STOCK_ID             SERIAL               not null,
   ARTICLE_ID           INT4                 not null,
   QUANTITE             INT4                 null,
   constraint PK_STOCK primary key (STOCK_ID)
);

/*==============================================================*/
/* Index : STOCK_PK                                             */
/*==============================================================*/
create unique index STOCK_PK on STOCK (
STOCK_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_11_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_11_FK on STOCK (
ARTICLE_ID
);

/*==============================================================*/
/* Table : VOTECLIENT                                           */
/*==============================================================*/
create table VOTECLIENT (
   VOTE_ID              SERIAL               not null,
   ARTICLE_ID           INT4                 not null,
   USER_ID              INT4                 not null,
   REACTVALUE           INT4                 null,
   constraint PK_VOTECLIENT primary key (VOTE_ID)
);

/*==============================================================*/
/* Index : VOTECLIENT_PK                                        */
/*==============================================================*/
create unique index VOTECLIENT_PK on VOTECLIENT (
VOTE_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_14_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_14_FK on VOTECLIENT (
USER_ID
);

/*==============================================================*/
/* Index : ASSOCIATION_13_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_13_FK on VOTECLIENT (
ARTICLE_ID
);

alter table ARTICLE
   add constraint FK_ARTICLE_ASSOCIATI_SOUSCATE foreign key (SOUSCAT_ID)
      references SOUSCATEGORIE (SOUSCAT_ID)
      on delete restrict on update restrict;

alter table COMMANDE
   add constraint FK_COMMANDE_ASSOCIATI_CLIENT foreign key (USER_ID)
      references CLIENT (USER_ID)
      on delete restrict on update restrict;

alter table COMMENTAIRE
   add constraint FK_COMMENTA_ASSOCIATI_CLIENT foreign key (USER_ID)
      references CLIENT (USER_ID)
      on delete restrict on update restrict;

alter table COMMENTAIRE
   add constraint FK_COMMENTA_ASSOCIATI_ARTICLE foreign key (ARTICLE_ID)
      references ARTICLE (ARTICLE_ID)
      on delete restrict on update restrict;

alter table DETAILCOMMNDE
   add constraint FK_DETAILCO_ASSOCIATI_ARTICLE foreign key (ARTICLE_ID)
      references ARTICLE (ARTICLE_ID)
      on delete restrict on update restrict;

alter table DETAILCOMMNDE
   add constraint FK_DETAILCO_ASSOCIATI_COMMANDE foreign key (CMD_ID)
      references COMMANDE (CMD_ID)
      on delete restrict on update restrict;

alter table SOUSCATEGORIE
   add constraint FK_SOUSCATE_ASSOCIATI_CATEGORI foreign key (CAT_ID)
      references CATEGORIE (CAT_ID)
      on delete restrict on update restrict;

alter table STOCK
   add constraint FK_STOCK_ASSOCIATI_ARTICLE foreign key (ARTICLE_ID)
      references ARTICLE (ARTICLE_ID)
      on delete restrict on update restrict;

alter table VOTECLIENT
   add constraint FK_VOTECLIE_ASSOCIATI_ARTICLE foreign key (ARTICLE_ID)
      references ARTICLE (ARTICLE_ID)
      on delete restrict on update restrict;

alter table VOTECLIENT
   add constraint FK_VOTECLIE_ASSOCIATI_CLIENT foreign key (USER_ID)
      references CLIENT (USER_ID)
      on delete restrict on update restrict;

