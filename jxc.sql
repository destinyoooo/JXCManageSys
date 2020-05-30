/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2020/5/30 9:57:31                            */
/*==============================================================*/


if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.tb_rkth_detail') and o.name = 'FK_tb_rkth_detail_tb_rkth_main')
alter table dbo.tb_rkth_detail
   drop constraint FK_tb_rkth_detail_tb_rkth_main
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.tb_ruku_detail') and o.name = 'FK_tb_ruku_detail_tb_ruku_main')
alter table dbo.tb_ruku_detail
   drop constraint FK_tb_ruku_detail_tb_ruku_main
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.tb_sell_detail') and o.name = 'FK_tb_sell_detail_tb_sell_main')
alter table dbo.tb_sell_detail
   drop constraint FK_tb_sell_detail_tb_sell_main
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.tb_xsth_detail') and o.name = 'FK_tb_xsth_detail_tb_xsth_main')
alter table dbo.tb_xsth_detail
   drop constraint FK_tb_xsth_detail_tb_xsth_main
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_gysinfo')
            and   type = 'U')
   drop table dbo.tb_gysinfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_khinfo')
            and   type = 'U')
   drop table dbo.tb_khinfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_kucun')
            and   type = 'U')
   drop table dbo.tb_kucun
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_rkth_detail')
            and   type = 'U')
   drop table dbo.tb_rkth_detail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_rkth_main')
            and   type = 'U')
   drop table dbo.tb_rkth_main
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_ruku_detail')
            and   type = 'U')
   drop table dbo.tb_ruku_detail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_ruku_main')
            and   type = 'U')
   drop table dbo.tb_ruku_main
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_sell_detail')
            and   type = 'U')
   drop table dbo.tb_sell_detail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_sell_main')
            and   type = 'U')
   drop table dbo.tb_sell_main
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('dbo.tb_spinfo')
            and   name  = 'IX_tab_spinfo'
            and   indid > 0
            and   indid < 255)
   drop index dbo.tb_spinfo.IX_tab_spinfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_spinfo')
            and   type = 'U')
   drop table dbo.tb_spinfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_userlist')
            and   type = 'U')
   drop table dbo.tb_userlist
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_xsth_detail')
            and   type = 'U')
   drop table dbo.tb_xsth_detail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tb_xsth_main')
            and   type = 'U')
   drop table dbo.tb_xsth_main
go

execute sp_revokedbaccess dbo
go

/*==============================================================*/
/* User: dbo                                                    */
/*==============================================================*/
execute sp_grantdbaccess dbo
go

/*==============================================================*/
/* Table: tb_gysinfo                                            */
/*==============================================================*/
create table dbo.tb_gysinfo (
   id                   varchar(50)          not null,
   name                 varchar(60)          null,
   jc                   varchar(50)          null,
   address              varchar(100)         null,
   bianma               varchar(50)          null,
   tel                  varchar(50)          null,
   fax                  varchar(50)          null,
   lian                 varchar(50)          null,
   ltel                 varchar(50)          null,
   yh                   varchar(50)          null,
   mail                 varchar(50)          null,
   constraint PK_tb_gysinfo primary key (id)
)
go

/*==============================================================*/
/* Table: tb_khinfo                                             */
/*==============================================================*/
create table dbo.tb_khinfo (
   id                   varchar(50)          not null,
   khname               varchar(50)          null,
   jian                 varchar(50)          null,
   address              varchar(100)         null,
   bianma               varchar(50)          null,
   tel                  varchar(50)          null,
   fax                  varchar(50)          null,
   lian                 varchar(50)          null,
   ltel                 varchar(50)          null,
   mail                 varchar(50)          null,
   xinhang              varchar(60)          null,
   hao                  varchar(60)          null,
   constraint PK_tb_khinfo primary key (id)
)
go

/*==============================================================*/
/* Table: tb_kucun                                              */
/*==============================================================*/
create table dbo.tb_kucun (
   id                   varchar(30)          not null,
   spname               varchar(50)          not null,
   jc                   varchar(25)          null,
   cd                   varchar(50)          null,
   gg                   varchar(50)          null,
   bz                   varchar(50)          null,
   dw                   varchar(10)          null,
   dj                   money                null,
   kcsl                 int                  null,
   constraint PK_tb_kucun primary key (id)
)
go

/*==============================================================*/
/* Table: tb_rkth_detail                                        */
/*==============================================================*/
create table dbo.tb_rkth_detail (
   id                   int                  identity,
   rkthID               varchar(30)          not null,
   spid                 varchar(50)          not null,
   dj                   money                not null,
   sl                   int                  not null,
   constraint PK_tb_rkth_detail primary key (id)
)
go

/*==============================================================*/
/* Table: tb_rkth_main                                          */
/*==============================================================*/
create table dbo.tb_rkth_main (
   rkthID               varchar(30)          not null,
   pzs                  float(15)            not null,
   je                   money                not null,
   ysjl                 varchar(50)          null,
   gysname              varchar(100)         not null,
   rtdate               datetime             not null,
   czy                  varchar(30)          not null,
   jsr                  varchar(30)          not null,
   jsfs                 varchar(10)          not null,
   constraint PK_tab_rkth_main primary key (rkthID)
)
go

/*==============================================================*/
/* Table: tb_ruku_detail                                        */
/*==============================================================*/
create table dbo.tb_ruku_detail (
   id                   int                  identity,
   rkID                 varchar(30)          not null,
   spid                 varchar(50)          not null,
   dj                   money                not null,
   sl                   int                  not null,
   constraint PK_tb_ruku_detail primary key (id)
)
go

/*==============================================================*/
/* Table: tb_ruku_main                                          */
/*==============================================================*/
create table dbo.tb_ruku_main (
   rkID                 varchar(30)          not null,
   pzs                  int                  not null,
   je                   money                not null,
   ysjl                 varchar(50)          not null,
   gysname              varchar(100)         not null,
   rkdate               datetime             not null,
   czy                  varchar(30)          not null,
   jsr                  varchar(30)          not null,
   jsfs                 varchar(10)          not null,
   constraint PK_tab_ruku_main primary key (rkID)
)
go

/*==============================================================*/
/* Table: tb_sell_detail                                        */
/*==============================================================*/
create table dbo.tb_sell_detail (
   id                   int                  identity,
   sellID               varchar(30)          not null,
   spid                 varchar(50)          not null,
   dj                   money                not null,
   sl                   float(15)            not null,
   constraint PK_tb_sell_detail primary key (id)
)
go

/*==============================================================*/
/* Table: tb_sell_main                                          */
/*==============================================================*/
create table dbo.tb_sell_main (
   sellID               varchar(30)          not null,
   pzs                  int                  not null,
   je                   money                not null default 0,
   ysjl                 varchar(50)          null default '0',
   khname               varchar(100)         not null,
   xsdate               datetime             not null,
   czy                  varchar(30)          not null,
   jsr                  varchar(30)          not null,
   jsfs                 varchar(10)          not null,
   constraint PK_tab_sell primary key (sellID)
)
go

/*==============================================================*/
/* Table: tb_spinfo                                             */
/*==============================================================*/
create table dbo.tb_spinfo (
   id                   varchar(50)          not null,
   spname               varchar(50)          not null,
   jc                   varchar(50)          null,
   cd                   varchar(60)          null,
   dw                   varchar(50)          not null,
   gg                   varchar(50)          not null,
   bz                   varchar(50)          null,
   ph                   varchar(50)          null,
   pzwh                 varchar(50)          null,
   memo                 varchar(90)          null,
   gysname              varchar(100)         null,
   constraint PK_tb_spinfo primary key (id)
)
go

/*==============================================================*/
/* Index: IX_tab_spinfo                                         */
/*==============================================================*/
create index IX_tab_spinfo on dbo.tb_spinfo (
id ASC
)
go

/*==============================================================*/
/* Table: tb_userlist                                           */
/*==============================================================*/
create table dbo.tb_userlist (
   name                 varchar(50)          not null,
   username             varchar(50)          not null,
   pass                 varchar(50)          not null,
   quan                 varchar(2)           not null,
   constraint PK_userlist primary key (name)
)
go

/*==============================================================*/
/* Table: tb_xsth_detail                                        */
/*==============================================================*/
create table dbo.tb_xsth_detail (
   id                   int                  identity,
   xsthID               varchar(30)          not null,
   spid                 varchar(50)          not null,
   dj                   money                not null,
   sl                   int                  not null,
   constraint PK_tb_xsth_detail primary key (id)
)
go

/*==============================================================*/
/* Table: tb_xsth_main                                          */
/*==============================================================*/
create table dbo.tb_xsth_main (
   xsthID               varchar(30)          not null,
   pzs                  int                  not null,
   je                   money                not null,
   ysjl                 varchar(50)          null,
   khname               varchar(100)         not null,
   thdate               datetime             not null,
   czy                  varchar(30)          not null,
   jsr                  varchar(30)          not null,
   jsfs                 varchar(10)          not null,
   constraint PK_tab_xsth_main primary key (xsthID)
)
go

alter table dbo.tb_rkth_detail
   add constraint FK_tb_rkth_detail_tb_rkth_main foreign key (rkthID)
      references dbo.tb_rkth_main (rkthID)
         on delete cascade
go

alter table dbo.tb_ruku_detail
   add constraint FK_tb_ruku_detail_tb_ruku_main foreign key (rkID)
      references dbo.tb_ruku_main (rkID)
         on update cascade on delete cascade
go

alter table dbo.tb_sell_detail
   add constraint FK_tb_sell_detail_tb_sell_main foreign key (sellID)
      references dbo.tb_sell_main (sellID)
         on delete cascade
go

alter table dbo.tb_xsth_detail
   add constraint FK_tb_xsth_detail_tb_xsth_main foreign key (xsthID)
      references dbo.tb_xsth_main (xsthID)
         on delete cascade
go

