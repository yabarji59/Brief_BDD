/*==============================================================*/
/* Nom de SGBD :  PostgreSQL 8                                  */
/* Date de création :  27/09/2021 15:50:51                      */
/*==============================================================*/


drop table EDITEURS;

drop table EMPLOYES;

drop table LIVRES;

drop table MEMBRES;

drop table PRETS;


/*==============================================================*/
/* Table : editeurs                                             */
/*==============================================================*/
create table editeurs (
   id_editeur           INT                  not null,
   nom                  TEXT                 not null,
   ville                TEXT                 not null,
   num_tel              TEXT                 not null,
   email                TEXT                 not null,
   constraint PK_EDITEURS primary key (id_editeur)
);

/*==============================================================*/
/* Table : employes                                            */
/*==============================================================*/
create table employes (
   id_employe           INT                  not null,
   nom                  TEXT                 not null,
   prenom              TEXT                 not null,
   email                TEXT                 not null,
   birthday             DATE                 not null,
   dateEmp              DATE                 not null,
   constraint PK_EMPLOYES primary key (id_employe)
);

/*==============================================================*/
/* Table : livres                                               */
/*==============================================================*/
create table livres (
   id_livre             INT                  not null,
   id_editeur           INT                  not null,
   titre                TEXT                 not null,
   prix                 FLOAT                not null,
   categorie            TEXT                 not null,
   nb_Page              INT                  not null,
   constraint PK_LIVRES primary key (id_livre)
);

/*==============================================================*/
/* Table : membres                                             */
/*==============================================================*/
create table membres (
   num_carte            INT                  not null,
   nom                  TEXT                 not null,
   prenom               TEXT                 not null,
   adress_1             TEXT                 not null,
   adress_2             TEXT                 null,
   ville                TEXT		     not null,
   zipcode              INT                  not null,
   birthday             DATE                 not null,
   email                TEXT	             not null,
   genre                TEXT                 not null,
   Num_Tel              TEXT                 not null,
   constraint PK_MEMBRES primary key (num_carte)
);



/*==============================================================*/
/* Table : PRETS                                                */
/*==============================================================*/
create table prets (
   id_pret              INT                  not null,
   id_livre             INT                  not null,
   num_carte            INT                  not null,
   id_employe           INT                  not null,
   date_sortie          DATE                 not null,
   date_restitution     DATE                 not null,
   penalite             FLOAT                not null,
   constraint PK_PRETS primary key (id_pret)
);

alter table livres
   add constraint FK_LIVRES_RELATION__EDITEURS foreign key (id_editeur)
      references editeurs (id_editeur)
      on delete restrict on update restrict;

alter table prets
   add constraint FK_PRETS_RELATION__LIVRES foreign key (id_livre)
      references livres (id_livre)
      on delete restrict on update restrict;

alter table prets
   add constraint FK_PRETS_RELATION__EMPLOYES foreign key (id_employe)
      references employes (id_employe)
      on delete restrict on update restrict;

alter table prets
   add constraint FK_PRETS_RELATION_MEMBRES foreign key (num_carte)
      references membres (num_carte)
      on delete restrict on update restrict;

