/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      DATA MODEL
 *
 * Date Created : Thursday, February 23, 2023 20:57:15
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: stg_dallas_food_inspections 
 */

CREATE TABLE stg_dallas_food_inspections(
    [Restaurant Name]             varchar(65)       NULL,
    [Inspection Type]             char(9)           NULL,
    [Inspection Date]             char(10)          NULL,
    [Inspection Score]            smallint          NULL,
    [Street Number]               int               NULL,
    [Street Name]                 varchar(25)       NULL,
    [Street Direction]            char(1)           NULL,
    [Street Type]                 char(4)           NULL,
    [Street Unit]                 char(5)           NULL,
    [Street Address]              varchar(36)       NULL,
    [Zip Code]                    char(10)          NULL,
    [Violation Description - 1]   varchar(100)      NULL,
    [Violation Points - 1]        tinyint           NULL,
    [Violation Detail - 1]        nvarchar(0)       NULL,
    [Violation Memo - 1]          nvarchar(0)       NULL,
    [Violation Description - 2]   varchar(100)      NULL,
    [Violation Points - 2]        tinyint           NULL,
    [Violation Detail - 2]        varchar(910)      NULL,
    [Violation Memo - 2]          nvarchar(0)       NULL,
    [Violation Description - 3]   varchar(100)      NULL,
    [Violation Points - 3]        tinyint           NULL,
    [Violation Detail - 3]        varchar(0)        NULL,
    [Violation Memo - 3]          nvarchar(0)       NULL,
    [Violation Description - 4]   varchar(100)      NULL,
    [Violation Points - 4]        tinyint           NULL,
    [Violation Detail - 4]        varchar(1018)     NULL,
    [Violation Memo - 4]          nvarchar(0)       NULL,
    [Violation Description - 5]   varchar(100)      NULL,
    [Violation Points - 5]        tinyint           NULL,
    [Violation Detail - 5]        varchar(910)      NULL,
    [Violation Memo - 5]          nvarchar(0)       NULL,
    [Violation Description - 6]   varchar(100)      NULL,
    [Violation Points - 6]        tinyint           NULL,
    [Violation Detail - 6]        varchar(1018)     NULL,
    [Violation Memo - 6]          nvarchar(0)       NULL,
    [Violation Description - 7]   varchar(100)      NULL,
    [Violation Points - 7]        tinyint           NULL,
    [Violation Detail - 7]        varchar(910)      NULL,
    [Violation Memo - 7]          nvarchar(0)       NULL,
    [Violation Description - 8]   varchar(100)      NULL,
    [Violation Points - 8]        tinyint           NULL,
    [Violation Detail - 8]        varchar(0)        NULL,
    [Violation Memo - 8]          nvarchar(0)       NULL,
    [Violation Description - 9]   varchar(100)      NULL,
    [Violation Points - 9]        tinyint           NULL,
    [Violation Detail - 9]        varchar(910)      NULL,
    [Violation Memo - 9]          nvarchar(0)       NULL,
    [Violation Description - 10]  varchar(100)      NULL,
    [Violation Points - 10]       tinyint           NULL,
    [Violation Detail - 10]       varchar(910)      NULL,
    [Violation Memo - 10]         nvarchar(0)       NULL,
    [Violation Description - 11]  varchar(100)      NULL,
    [Violation Points - 11]       tinyint           NULL,
    [Violation Detail - 11]       varchar(910)      NULL,
    [Violation Memo - 11]         nvarchar(0)       NULL,
    [Violation Description - 12]  varchar(100)      NULL,
    [Violation Points - 12]       tinyint           NULL,
    [Violation Detail - 12]       varchar(994)      NULL,
    [Violation Memo - 12]         nvarchar(814)     NULL,
    [Violation Description - 13]  varchar(100)      NULL,
    [Violation Points - 13]       tinyint           NULL,
    [Violation Detail - 13]       varchar(888)      NULL,
    [Violation Memo - 13]         nvarchar(1762)    NULL,
    [Violation Description - 14]  varchar(100)      NULL,
    [Violation Points - 14]       tinyint           NULL,
    [Violation Detail - 14]       varchar(888)      NULL,
    [Violation Memo - 14]         nvarchar(1636)    NULL,
    [Violation Description - 15]  varchar(100)      NULL,
    [Violation Points - 15]       tinyint           NULL,
    [Violation Detail - 15]       varchar(888)      NULL,
    [Violation Memo - 15]         nvarchar(1636)    NULL,
    [Violation Description - 16]  varchar(100)      NULL,
    [Violation Points - 16]       tinyint           NULL,
    [Violation Detail - 16]       varchar(888)      NULL,
    [Violation Memo - 16]         varchar(397)      NULL,
    [Violation Description - 17]  varchar(100)      NULL,
    [Violation Points - 17]       tinyint           NULL,
    [Violation Detail - 17]       varchar(829)      NULL,
    [Violation Memo - 17]         varchar(212)      NULL,
    [Violation Description - 18]  varchar(100)      NULL,
    [Violation Points - 18]       tinyint           NULL,
    [Violation Detail - 18]       varchar(829)      NULL,
    [Violation Memo - 18]         nvarchar(460)     NULL,
    [Violation Description - 19]  varchar(100)      NULL,
    [Violation Points - 19]       tinyint           NULL,
    [Violation Detail - 19]       varchar(815)      NULL,
    [Violation Memo - 19]         varchar(245)      NULL,
    [Violation Description - 20]  varchar(100)      NULL,
    [Violation Points - 20]       tinyint           NULL,
    [Violation Detail - 20]       varchar(815)      NULL,
    [Violation  Memo - 20]        varchar(247)      NULL,
    [Violation Description - 21]  varchar(100)      NULL,
    [Violation Points - 21]       tinyint           NULL,
    [Violation Detail - 21]       varchar(815)      NULL,
    [Violation Memo - 21]         varchar(211)      NULL,
    [Violation Description - 22]  varchar(100)      NULL,
    [Violation Points - 22]       tinyint           NULL,
    [Violation Detail - 22]       varchar(815)      NULL,
    [Violation Memo - 22]         varchar(374)      NULL,
    [Violation Description - 23]  varchar(100)      NULL,
    [Violation Points - 23]       tinyint           NULL,
    [Violation Detail - 23]       varchar(492)      NULL,
    [Violation Memo - 23]         varchar(103)      NULL,
    [Violation Description - 24]  varchar(59)       NULL,
    [Violation Points - 24]       tinyint           NULL,
    [Violation Detail - 24]       varchar(434)      NULL,
    [Violation Memo - 24]         varchar(186)      NULL,
    [Violation Description - 25]  varchar(50)       NULL,
    [Violation Points - 25]       tinyint           NULL,
    [Violation Detail - 25]       varchar(482)      NULL,
    [Violation Memo - 25]         varchar(171)      NULL,
    [Inspection Month]            char(8)           NULL,
    Inspection_Financial_Year     char(6)           NULL,
    Inspection_Date               date              NULL,
    Latitude                      float             NULL,
    Longitude                     float             NULL,
    DI_CreateDate                 date              NULL,
    DI_WorkflowDirectory          nvarchar(512)     NULL,
    DI_WorkflowFileName           nvarchar(512)     NULL
)

go


IF OBJECT_ID('stg_dallas_food_inspections') IS NOT NULL
    PRINT '<<< CREATED TABLE stg_dallas_food_inspections >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE stg_dallas_food_inspections >>>'
go

