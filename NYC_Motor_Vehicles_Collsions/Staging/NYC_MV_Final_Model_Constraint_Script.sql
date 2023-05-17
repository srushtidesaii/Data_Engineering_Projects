/*

 * ER/Studio Data Architect SQL Code Generation

 * Project :      nyc mv collisions dimensional model 2022-11-26 1240.DM1

 *

 * Date Created : Thursday, April 20, 2023 16:47:38

 * Target DBMS : Microsoft SQL Server 2019

 */



/* 

 * TABLE: dim_arrest_borough 

 */



CREATE TABLE dim_arrest_borough(

    Borough_SK        int            IDENTITY(1,1),

    boro_code         char(1)        NULL,

    borough           varchar(80)    NULL,

    DI_JobID          varchar(20)    NULL,

    DI_Create_Date    datetime       DEFAULT (getdate()) NOT NULL,

    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (Borough_SK)

)



go





IF OBJECT_ID('dim_arrest_borough') IS NOT NULL

    PRINT '<<< CREATED TABLE dim_arrest_borough >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE dim_arrest_borough >>>'

go



/* 

 * TABLE: Dim_BODILY_INJURY 

 */



CREATE TABLE Dim_BODILY_INJURY(

    BODILY_INJURY_SK    int            IDENTITY(1,1),

    BODILY_INJURY       varchar(80)    NULL,

    DI_PID              varchar(20)    NULL,

    DI_Create_Date      datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (BODILY_INJURY_SK)

)



go





IF OBJECT_ID('Dim_BODILY_INJURY') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_BODILY_INJURY >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_BODILY_INJURY >>>'

go



/* 

 * TABLE: Dim_COMPLAINT 

 */



CREATE TABLE Dim_COMPLAINT(

    COMPLAINT_SK      int             IDENTITY(1,1),

    COMPLAINT         varchar(255)    NULL,

    DI_PID            varchar(20)     NULL,

    DI_Create_Date    datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (COMPLAINT_SK)

)



go





IF OBJECT_ID('Dim_COMPLAINT') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_COMPLAINT >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_COMPLAINT >>>'

go



/* 

 * TABLE: Dim_CONTRIBUTING_FACTOR 

 */



CREATE TABLE Dim_CONTRIBUTING_FACTOR(

    Contribution_Factor_SK    int             IDENTITY(1,1),

    CONTRIBUTING_FACTOR       varchar(255)    NULL,

    DI_PID                    varchar(20)     NULL,

    DI_Create_Date            date            DEFAULT (getdate()) NULL,

    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (Contribution_Factor_SK)

)



go





IF OBJECT_ID('Dim_CONTRIBUTING_FACTOR') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_CONTRIBUTING_FACTOR >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_CONTRIBUTING_FACTOR >>>'

go



/* 

 * TABLE: Dim_DRIVER_LICENSE_JURISDICTION 

 */



CREATE TABLE Dim_DRIVER_LICENSE_JURISDICTION(

    DRIVER_LICENSE_JURISDICTION_SK    int             IDENTITY(1,1),

    DRIVER_LICENSE_JURISDICTION       varchar(255)    NULL,

    DI_PID                            varchar(20)     NULL,

    DI_Create_Date                    datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_JURISDICTION_SK)

)



go





IF OBJECT_ID('Dim_DRIVER_LICENSE_JURISDICTION') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_DRIVER_LICENSE_JURISDICTION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_DRIVER_LICENSE_JURISDICTION >>>'

go



/* 

 * TABLE: Dim_DRIVER_LICENSE_STATUS 

 */



CREATE TABLE Dim_DRIVER_LICENSE_STATUS(

    DRIVER_LICENSE_STATUS_SK    int             IDENTITY(1,1),

    DRIVER_LICENSE_STATUS       varchar(255)    NULL,

    DI_PID                      varchar(20)     NULL,

    DI_Create_Date              datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_STATUS_SK)

)



go





IF OBJECT_ID('Dim_DRIVER_LICENSE_STATUS') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_DRIVER_LICENSE_STATUS >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_DRIVER_LICENSE_STATUS >>>'

go



/* 

 * TABLE: Dim_EJECTION 

 */



CREATE TABLE Dim_EJECTION(

    EJECTION_SK       int            IDENTITY(1,1),

    EJECTION          varchar(80)    NULL,

    DI_PID            varchar(20)    NULL,

    DI_Create_Date    datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (EJECTION_SK)

)



go





IF OBJECT_ID('Dim_EJECTION') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_EJECTION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_EJECTION >>>'

go



/* 

 * TABLE: Dim_EMOTIONAL_STATUS 

 */



CREATE TABLE Dim_EMOTIONAL_STATUS(

    EMOTIONAL_STATUS_SK    int            IDENTITY(1,1),

    EMOTIONAL_STATUS       varchar(80)    NULL,

    DI_PID                 varchar(20)    NULL,

    DI_Create_Date         datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (EMOTIONAL_STATUS_SK)

)



go





IF OBJECT_ID('Dim_EMOTIONAL_STATUS') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_EMOTIONAL_STATUS >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_EMOTIONAL_STATUS >>>'

go



/* 

 * TABLE: Dim_PED_ACTION 

 */



CREATE TABLE Dim_PED_ACTION(

    PED_ACTION_SK     int             IDENTITY(1,1),

    PED_ACTION        varchar(255)    NULL,

    DI_PID            varchar(20)     NULL,

    DI_Create_Date    datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (PED_ACTION_SK)

)



go





IF OBJECT_ID('Dim_PED_ACTION') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PED_ACTION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PED_ACTION >>>'

go



/* 

 * TABLE: Dim_PED_LOCATION 

 */



CREATE TABLE Dim_PED_LOCATION(

    PED_LOCATION_SK    int             IDENTITY(1,1),

    PED_LOCATION       varchar(255)    NULL,

    DI_PID             varchar(20)     NULL,

    DI_Create_Date     datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (PED_LOCATION_SK)

)



go





IF OBJECT_ID('Dim_PED_LOCATION') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PED_LOCATION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PED_LOCATION >>>'

go



/* 

 * TABLE: Dim_PED_ROLE 

 */



CREATE TABLE Dim_PED_ROLE(

    PED_ROLE_SK       int             IDENTITY(1,1),

    PED_ROLE          varchar(255)    NULL,

    DI_PID            varchar(20)     NULL,

    DI_Create_Date    datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (PED_ROLE_SK)

)



go





IF OBJECT_ID('Dim_PED_ROLE') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PED_ROLE >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PED_ROLE >>>'

go



/* 

 * TABLE: Dim_PERSON_INJURY 

 */



CREATE TABLE Dim_PERSON_INJURY(

    PERSON_INJURY_SK    int            IDENTITY(1,1),

    PERSON_INJURY       varchar(80)    NULL,

    DI_PID              varchar(20)    NULL,

    DI_Create_Date      datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (PERSON_INJURY_SK)

)



go





IF OBJECT_ID('Dim_PERSON_INJURY') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PERSON_INJURY >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PERSON_INJURY >>>'

go



/* 

 * TABLE: Dim_PERSON_SEX 

 */



CREATE TABLE Dim_PERSON_SEX(

    PERSON_SEX_SK     int            IDENTITY(1,1),

    PERSON_SEX        varchar(10)    NULL,

    DI_PID            varchar(20)    NULL,

    DI_Create_Date    datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (PERSON_SEX_SK)

)



go





IF OBJECT_ID('Dim_PERSON_SEX') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PERSON_SEX >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PERSON_SEX >>>'

go



/* 

 * TABLE: Dim_PersonType 

 */



CREATE TABLE Dim_PersonType(

    PERSON_TYPE_SK    int            IDENTITY(1,1),

    PERSON_TYPE       varchar(80)    NULL,

    DI_PID            varchar(20)    NULL,

    DI_Create_Date    datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (PERSON_TYPE_SK)

)



go





IF OBJECT_ID('Dim_PersonType') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PersonType >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PersonType >>>'

go



/* 

 * TABLE: Dim_POINT_OF_IMPACT 

 */



CREATE TABLE Dim_POINT_OF_IMPACT(

    POINT_OF_IMPACT_SK    int             IDENTITY(1,1),

    POINT_OF_IMPACT       varchar(255)    NULL,

    DI_PID                varchar(20)     NULL,

    DI_Create_Date        datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (POINT_OF_IMPACT_SK)

)



go





IF OBJECT_ID('Dim_POINT_OF_IMPACT') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_POINT_OF_IMPACT >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_POINT_OF_IMPACT >>>'

go



/* 

 * TABLE: Dim_POSITION_IN_VEHICLE 

 */



CREATE TABLE Dim_POSITION_IN_VEHICLE(

    POSITION_IN_VEHICLE_SK    int             IDENTITY(1,1),

    POSITION_IN_VEHICLE       varchar(255)    NULL,

    DI_PID                    varchar(20)     NULL,

    DI_Create_Date            datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK16 PRIMARY KEY NONCLUSTERED (POSITION_IN_VEHICLE_SK)

)



go





IF OBJECT_ID('Dim_POSITION_IN_VEHICLE') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_POSITION_IN_VEHICLE >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_POSITION_IN_VEHICLE >>>'

go



/* 

 * TABLE: Dim_PRE_CRASH 

 */



CREATE TABLE Dim_PRE_CRASH(

    PRE_CRASH_SK      int             IDENTITY(1,1),

    PRE_CRASH         varchar(255)    NULL,

    DI_PID            varchar(20)     NULL,

    DI_Create_Date    datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (PRE_CRASH_SK)

)



go





IF OBJECT_ID('Dim_PRE_CRASH') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PRE_CRASH >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PRE_CRASH >>>'

go



/* 

 * TABLE: Dim_PUBLIC_PROPERTY_DAMAGE 

 */



CREATE TABLE Dim_PUBLIC_PROPERTY_DAMAGE(

    PUBLIC_PROPERTY_DAMAGE_SK    int             IDENTITY(1,1),

    PUBLIC_PROPERTY_DAMAGE       varchar(255)    NULL,

    DI_PID                       varchar(20)     NULL,

    DI_Create_Date               datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK27 PRIMARY KEY NONCLUSTERED (PUBLIC_PROPERTY_DAMAGE_SK)

)



go





IF OBJECT_ID('Dim_PUBLIC_PROPERTY_DAMAGE') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_PUBLIC_PROPERTY_DAMAGE >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_PUBLIC_PROPERTY_DAMAGE >>>'

go



/* 

 * TABLE: Dim_SAFETY_EQUIPMENT 

 */



CREATE TABLE Dim_SAFETY_EQUIPMENT(

    SAFETY_EQUIPMENT_SK    int             IDENTITY(1,1),

    SAFETY_EQUIPMENT       varchar(255)    NULL,

    DI_PID                 varchar(20)     NULL,

    DI_Create_Date         datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK18 PRIMARY KEY NONCLUSTERED (SAFETY_EQUIPMENT_SK)

)



go





IF OBJECT_ID('Dim_SAFETY_EQUIPMENT') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_SAFETY_EQUIPMENT >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_SAFETY_EQUIPMENT >>>'

go



/* 

 * TABLE: Dim_STATE_REGISTRATION 

 */



CREATE TABLE Dim_STATE_REGISTRATION(

    STATE_REGISTRATION_SK    int            IDENTITY(1,1),

    STATE_REGISTRATION       varchar(80)    NULL,

    DI_PID                   varchar(20)    NULL,

    DI_Create_Date           datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK19 PRIMARY KEY NONCLUSTERED (STATE_REGISTRATION_SK)

)



go





IF OBJECT_ID('Dim_STATE_REGISTRATION') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_STATE_REGISTRATION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_STATE_REGISTRATION >>>'

go



/* 

 * TABLE: Dim_TRAVEL_DIRECTION 

 */



CREATE TABLE Dim_TRAVEL_DIRECTION(

    Travel_Direction_SK    int             IDENTITY(1,1),

    TRAVEL_DIRECTION       varchar(255)    NULL,

    DI_PID                 varchar(20)     NULL,

    DI_Create_Date         datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK20 PRIMARY KEY NONCLUSTERED (Travel_Direction_SK)

)



go





IF OBJECT_ID('Dim_TRAVEL_DIRECTION') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_TRAVEL_DIRECTION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_TRAVEL_DIRECTION >>>'

go



/* 

 * TABLE: Dim_VEHICLE_DAMAGE 

 */



CREATE TABLE Dim_VEHICLE_DAMAGE(

    VEHICLE_DAMAGE_SK    int             IDENTITY(1,1),

    VEHICLE_DAMAGE       varchar(255)    NULL,

    DI_PID               varchar(20)     NULL,

    DI_Create_Date       datetime        DEFAULT (getdate()) NULL,

    CONSTRAINT PK21 PRIMARY KEY NONCLUSTERED (VEHICLE_DAMAGE_SK)

)



go





IF OBJECT_ID('Dim_VEHICLE_DAMAGE') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_VEHICLE_DAMAGE >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_DAMAGE >>>'

go



/* 

 * TABLE: Dim_VEHICLE_MAKE 

 */



CREATE TABLE Dim_VEHICLE_MAKE(

    VEHICLE_MAKE_SK    int            IDENTITY(1,1),

    VEHICLE_MAKE       varchar(80)    NULL,

    DI_PID             varchar(20)    NULL,

    DI_Create_Date     datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK22 PRIMARY KEY NONCLUSTERED (VEHICLE_MAKE_SK)

)



go





IF OBJECT_ID('Dim_VEHICLE_MAKE') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_VEHICLE_MAKE >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_MAKE >>>'

go



/* 

 * TABLE: Dim_VEHICLE_MODEL 

 */



CREATE TABLE Dim_VEHICLE_MODEL(

    VEHICLE_MODEL_SK    int            IDENTITY(1,1),

    VEHICLE_MODEL       varchar(80)    NULL,

    DI_PID              varchar(20)    NULL,

    DI_Create_Date      datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK23 PRIMARY KEY NONCLUSTERED (VEHICLE_MODEL_SK)

)



go





IF OBJECT_ID('Dim_VEHICLE_MODEL') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_VEHICLE_MODEL >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_MODEL >>>'

go



/* 

 * TABLE: Dim_VEHICLE_TYPE 

 */



CREATE TABLE Dim_VEHICLE_TYPE(

    VEHICLE_TYPE_SK    int            IDENTITY(1,1),

    VEHICLE_TYPE       varchar(80)    NULL,

    DI_PID             varchar(20)    NULL,

    DI_Create_Date     datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK24 PRIMARY KEY NONCLUSTERED (VEHICLE_TYPE_SK)

)



go





IF OBJECT_ID('Dim_VEHICLE_TYPE') IS NOT NULL

    PRINT '<<< CREATED TABLE Dim_VEHICLE_TYPE >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_TYPE >>>'

go



/* 

 * TABLE: dim_vehicle_type_code 

 */



CREATE TABLE dim_vehicle_type_code(

    VEHICLE_TYPE_CODE_SK    int            IDENTITY(1,1),

    VEHICLE_TYPE_CODE       varchar(80)    NOT NULL,

    DI_JobID                varchar(20)    NULL,

    DI_Create_Date          datetime       DEFAULT (getdate()) NOT NULL,

    CONSTRAINT PK25 PRIMARY KEY NONCLUSTERED (VEHICLE_TYPE_CODE_SK)

)



go





IF OBJECT_ID('dim_vehicle_type_code') IS NOT NULL

    PRINT '<<< CREATED TABLE dim_vehicle_type_code >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE dim_vehicle_type_code >>>'

go



/* 

 * TABLE: ERR_Model_Year 

 */



CREATE TABLE ERR_Model_Year(

    COLLISION_ID    int            NULL,

    CRASH_DATE      datetime       NULL,

    VEHICLE_YEAR    varchar(80)    NULL

)



go





IF OBJECT_ID('ERR_Model_Year') IS NOT NULL

    PRINT '<<< CREATED TABLE ERR_Model_Year >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE ERR_Model_Year >>>'

go



/* 

 * TABLE: ERR_Person_Age 

 */



CREATE TABLE ERR_Person_Age(

    ERR_PERSON_AGE_SK    int            NOT NULL,

    UNIQUE_ID            int            NOT NULL,

    COLLISION_ID         int            NULL,

    PERSON_ID            varchar(80)    NULL,

    CRASH_DATE           datetime       NULL,

    PERSON_AGE           int            NULL,

    DI_PID               varchar(20)    NULL,

    DI_Create_Date       datetime       NULL,

    CONSTRAINT PK35 PRIMARY KEY NONCLUSTERED (ERR_PERSON_AGE_SK)

)



go





IF OBJECT_ID('ERR_Person_Age') IS NOT NULL

    PRINT '<<< CREATED TABLE ERR_Person_Age >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE ERR_Person_Age >>>'

go



/* 

 * TABLE: fct_collision_crashes 

 */



CREATE TABLE fct_collision_crashes(

    collision_sk                      bigint            NOT NULL,

    collision_id                      bigint            NULL,

    collision_dt                      datetime          NULL,

    collision_dt_sk                   int               NULL,

    collision_day                     date              NULL,

    collision_time                    time(7)           NULL,

    collision_hour                    int               NULL,

    collision_dayoftheweek            int               NULL,

    Borough_SK                        int               NULL,

    borough                           varchar(80)       NULL,

    zip_code                          varchar(40)       NULL,

    off_street_name                   varchar(40)       NULL,

    on_street_name                    varchar(40)       NULL,

    cross_street_name                 varchar(40)       NULL,

    latitude                          numeric(24, 6)    NULL,

    longitude                         numeric(24, 6)    NULL,

    location                          varchar(256)      NULL,

    number_of_cyclist_injured         int               NULL,

    number_of_cyclist_killed          int               NULL,

    number_of_motorist_injured        int               NULL,

    number_of_motorist_killed         int               NULL,

    number_of_pedestrians_injured     int               NULL,

    number_of_pedestrians_killed      int               NULL,

    number_of_persons_injured         int               NULL,

    number_of_persons_killed          int               NULL,

    number_of_vehicles_involved       int               NULL,

    number_of_contributing_factors    int               NULL,

    DI_JobID                          varchar(20)       NULL,

    DI_Create_Date                    datetime          DEFAULT getdate() NOT NULL,

    CONSTRAINT PK28 PRIMARY KEY NONCLUSTERED (collision_sk)

)



go





IF OBJECT_ID('fct_collision_crashes') IS NOT NULL

    PRINT '<<< CREATED TABLE fct_collision_crashes >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE fct_collision_crashes >>>'

go



/* 

 * TABLE: fct_collision_crashes_vehicles 

 */



CREATE TABLE fct_collision_crashes_vehicles(

    collision_sk                      bigint         NOT NULL,

    collision_id                      bigint         NOT NULL,

    Vehicle_number                    int            NOT NULL,

    VEHICLE_TYPE_CODE_SK              int            NULL,

    Contributing_Factor_Vehicle_SK    int            NOT NULL,

    DI_JobID                          varchar(20)    NULL,

    DI_Create_Date                    datetime       DEFAULT (getdate()) NOT NULL,

    CONSTRAINT PK29 PRIMARY KEY NONCLUSTERED (collision_sk, Vehicle_number)

)



go





IF OBJECT_ID('fct_collision_crashes_vehicles') IS NOT NULL

    PRINT '<<< CREATED TABLE fct_collision_crashes_vehicles >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE fct_collision_crashes_vehicles >>>'

go



/* 

 * TABLE: fct_collision_persons 

 */



CREATE TABLE fct_collision_persons(

    FCT_Person_SK              int            NOT NULL,

    Crash_Collision_ID         bigint         NULL,

    collision_sk               bigint         NOT NULL,

    PERSON_STG_UNIQUE_ID_NK    int            NULL,

    PERSON_ID                  varchar(80)    NULL,

    PERSON_TYPE_SK             int            NOT NULL,

    PERSON_INJURY_SK           int            NOT NULL,

    VEHICLE_ID                 varchar(80)    NULL,

    PERSON_AGE                 int            NULL,

    EJECTION_SK                int            NOT NULL,

    EMOTIONAL_STATUS_SK        int            NOT NULL,

    BODILY_INJURY_SK           int            NOT NULL,

    POSITION_IN_VEHICLE_SK     int            NOT NULL,

    SAFETY_EQUIPMENT_SK        int            NOT NULL,

    PED_LOCATION_SK            int            NOT NULL,

    PED_ACTION_SK              int            NOT NULL,

    COMPLAINT_SK               int            NOT NULL,

    PED_ROLE_SK                int            NOT NULL,

    PERSON_SEX_SK              int            NOT NULL,

    DI_PID                     varchar(20)    NULL,

    DI_Create_Date             datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK30 PRIMARY KEY NONCLUSTERED (FCT_Person_SK)

)



go





IF OBJECT_ID('fct_collision_persons') IS NOT NULL

    PRINT '<<< CREATED TABLE fct_collision_persons >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE fct_collision_persons >>>'

go



/* 

 * TABLE: fct_collision_persons_contributing_factors 

 */



CREATE TABLE fct_collision_persons_contributing_factors(

    Contributing_Factor_Person_SK    int            IDENTITY(1,1),

    FCT_Person_SK                    int            NOT NULL,

    COLLISION_ID                     int            NULL,

    PERSON_ID                        varchar(80)    NULL,

    FACTOR_NUMBER                    int            NULL,

    Contribution_Factor_SK           int            NOT NULL,

    DI_PID                           varchar(20)    NULL,

    DI_Create_Date                   datetime       DEFAULT (getdate()) NULL,

    CONSTRAINT PK31 PRIMARY KEY NONCLUSTERED (Contributing_Factor_Person_SK)

)



go





IF OBJECT_ID('fct_collision_persons_contributing_factors') IS NOT NULL

    PRINT '<<< CREATED TABLE fct_collision_persons_contributing_factors >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE fct_collision_persons_contributing_factors >>>'

go



/* 

 * TABLE: fct_Collisions_Vehicles 

 */



CREATE TABLE fct_Collisions_Vehicles(

    Fct_Vehicle_Collision_SK          int              NOT NULL,

    UNIQUE_ID_NK                      int              NULL,

    COLLISION_ID                      int              NULL,

    VEHICLE_ID                        varchar(80)      NULL,

    STATE_REGISTRATION_SK             int              NOT NULL,

    VEHICLE_TYPE_SK                   int              NOT NULL,

    VEHICLE_MAKE_SK                   int              NOT NULL,

    VEHICLE_MODEL_SK                  int              NOT NULL,

    VEHICLE_YEAR                      varchar(80)      NULL,

    Travel_Direction_SK               int              NOT NULL,

    VEHICLE_OCCUPANTS                 int              NULL,

    DRIVER_LICENSE_STATUS_SK          int              NOT NULL,

    DRIVER_LICENSE_JURISDICTION_SK    int              NOT NULL,

    PRE_CRASH_SK                      int              NOT NULL,

    POINT_OF_IMPACT_SK                int              NOT NULL,

    PUBLIC_PROPERTY_DAMAGE_SK         int              NOT NULL,

    PUBLIC_PROPERTY_DAMAGE_TYPE       varchar(1024)    NULL,

    DI_PID                            varchar(20)      NULL,

    DI_Create_Date                    datetime         DEFAULT (getdate()) NOT NULL,

    collision_sk                      bigint           NOT NULL,

    CONSTRAINT PK32 PRIMARY KEY NONCLUSTERED (Fct_Vehicle_Collision_SK)

)



go





IF OBJECT_ID('fct_Collisions_Vehicles') IS NOT NULL

    PRINT '<<< CREATED TABLE fct_Collisions_Vehicles >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE fct_Collisions_Vehicles >>>'

go



/* 

 * TABLE: fct_Collisions_Vehicles_Contributing_Factors 

 */



CREATE TABLE fct_Collisions_Vehicles_Contributing_Factors(

    Contributing_Factor_Vehicle_SK    int            IDENTITY(1,1),

    Fct_Vehicle_Collision_SK          int            NOT NULL,

    COLLISION_ID                      int            NULL,

    VEHICLE_ID                        varchar(80)    NULL,

    VEHICLE_CONTRIBUTING_NUMBER       int            NULL,

    Contribution_Factor_SK            int            NOT NULL,

    DI_PID                            varchar(20)    NULL,

    DI_Create_Date                    datetime       DEFAULT (getdate()) NOT NULL,

    CONSTRAINT PK33 PRIMARY KEY NONCLUSTERED (Contributing_Factor_Vehicle_SK)

)



go





IF OBJECT_ID('fct_Collisions_Vehicles_Contributing_Factors') IS NOT NULL

    PRINT '<<< CREATED TABLE fct_Collisions_Vehicles_Contributing_Factors >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE fct_Collisions_Vehicles_Contributing_Factors >>>'

go



/* 

 * TABLE: fct_Collisions_Vehicles_Vehicle_Damage 

 */



CREATE TABLE fct_Collisions_Vehicles_Vehicle_Damage(

    FCT_Vehicle_Vehicles_Damage_SK    int            IDENTITY(1,1),

    FCT_Person_SK                     int            NOT NULL,

    Fct_Vehicle_Collision_SK          int            NOT NULL,

    COLLISION_ID                      int            NULL,

    VEHICLE_ID                        varchar(80)    NULL,

    VEHICLE_DAMAGE_NUMBER             int            NULL,

    VEHICLE_DAMAGE_SK                 int            NOT NULL,

    DI_PID                            varchar(20)    NULL,

    DI_Create_Date                    datetime       DEFAULT (getdate()) NOT NULL,

    CONSTRAINT PK34 PRIMARY KEY NONCLUSTERED (FCT_Vehicle_Vehicles_Damage_SK)

)



go





IF OBJECT_ID('fct_Collisions_Vehicles_Vehicle_Damage') IS NOT NULL

    PRINT '<<< CREATED TABLE fct_Collisions_Vehicles_Vehicle_Damage >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE fct_Collisions_Vehicles_Vehicle_Damage >>>'

go



/* 

 * TABLE: fct_collision_crashes 

 */



ALTER TABLE FCT_Collision_Crash ADD CONSTRAINT Refdim_arrest_borough5 

    FOREIGN KEY (Borough_SK)

    REFERENCES dim_arrest_borough(Borough_SK)

go





/* 

 * TABLE: fct_collision_crashes_vehicles 

 */



ALTER TABLE fct_collision_crashes_vehicles ADD CONSTRAINT Reffct_collision_crashes1 

    FOREIGN KEY (collision_sk)

    REFERENCES FCT_Collision_Crash(collision_sk)

go



ALTER TABLE fct_collision_crashes_vehicles ADD CONSTRAINT Refdim_vehicle_type_code22 

    FOREIGN KEY (VEHICLE_TYPE_CODE_SK)

    REFERENCES dim_vehicle_type_code(VEHICLE_TYPE_CODE_SK)

go



ALTER TABLE fct_collision_crashes_vehicles ADD CONSTRAINT Reffct_Collisions_Vehicles_Contributing_Factors43 

    FOREIGN KEY (Contributing_Factor_Vehicle_SK)

    REFERENCES fct_Collisions_Vehicles_Contributing_Factors(Contributing_Factor_Vehicle_SK)

go





/* 

 * TABLE: fct_collision_persons 

 */



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_EMOTIONAL_STATUS4 

    FOREIGN KEY (EMOTIONAL_STATUS_SK)

    REFERENCES Dim_EMOTIONAL_STATUS(EMOTIONAL_STATUS_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_POSITION_IN_VEHICLE11 

    FOREIGN KEY (POSITION_IN_VEHICLE_SK)

    REFERENCES Dim_POSITION_IN_VEHICLE(POSITION_IN_VEHICLE_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PED_ACTION12 

    FOREIGN KEY (PED_ACTION_SK)

    REFERENCES Dim_PED_ACTION(PED_ACTION_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_BODILY_INJURY13 

    FOREIGN KEY (BODILY_INJURY_SK)

    REFERENCES Dim_BODILY_INJURY(BODILY_INJURY_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PED_LOCATION16 

    FOREIGN KEY (PED_LOCATION_SK)

    REFERENCES Dim_PED_LOCATION(PED_LOCATION_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_COMPLAINT17 

    FOREIGN KEY (COMPLAINT_SK)

    REFERENCES Dim_COMPLAINT(COMPLAINT_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_SAFETY_EQUIPMENT23 

    FOREIGN KEY (SAFETY_EQUIPMENT_SK)

    REFERENCES Dim_SAFETY_EQUIPMENT(SAFETY_EQUIPMENT_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PED_ROLE24 

    FOREIGN KEY (PED_ROLE_SK)

    REFERENCES Dim_PED_ROLE(PED_ROLE_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PERSON_INJURY28 

    FOREIGN KEY (PERSON_INJURY_SK)

    REFERENCES Dim_PERSON_INJURY(PERSON_INJURY_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PERSON_SEX32 

    FOREIGN KEY (PERSON_SEX_SK)

    REFERENCES Dim_PERSON_SEX(PERSON_SEX_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PersonType36 

    FOREIGN KEY (PERSON_TYPE_SK)

    REFERENCES Dim_PersonType(PERSON_TYPE_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_EJECTION37 

    FOREIGN KEY (EJECTION_SK)

    REFERENCES Dim_EJECTION(EJECTION_SK)

go



ALTER TABLE fct_collision_persons ADD CONSTRAINT Reffct_collision_crashes40 

    FOREIGN KEY (collision_sk)

    REFERENCES FCT_Collision_Crash(collision_sk)

go





/* 

 * TABLE: fct_collision_persons_contributing_factors 

 */



ALTER TABLE fct_collision_persons_contributing_factors ADD CONSTRAINT Reffct_collision_persons7 

    FOREIGN KEY (FCT_Person_SK)

    REFERENCES fct_collision_persons(FCT_Person_SK)

go



ALTER TABLE fct_collision_persons_contributing_factors ADD CONSTRAINT RefDim_CONTRIBUTING_FACTOR25 

    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)

    REFERENCES Dim_CONTRIBUTING_FACTOR(Contribution_Factor_SK)

go





/* 

 * TABLE: fct_Collisions_Vehicles 

 */



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_VEHICLE_MAKE2 

    FOREIGN KEY (VEHICLE_MAKE_SK)

    REFERENCES Dim_VEHICLE_MAKE(VEHICLE_MAKE_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_POINT_OF_IMPACT3 

    FOREIGN KEY (POINT_OF_IMPACT_SK)

    REFERENCES Dim_POINT_OF_IMPACT(POINT_OF_IMPACT_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_VEHICLE_MODEL10 

    FOREIGN KEY (VEHICLE_MODEL_SK)

    REFERENCES Dim_VEHICLE_MODEL(VEHICLE_MODEL_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_VEHICLE_TYPE14 

    FOREIGN KEY (VEHICLE_TYPE_SK)

    REFERENCES Dim_VEHICLE_TYPE(VEHICLE_TYPE_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_PRE_CRASH15 

    FOREIGN KEY (PRE_CRASH_SK)

    REFERENCES Dim_PRE_CRASH(PRE_CRASH_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_STATE_REGISTRATION27 

    FOREIGN KEY (STATE_REGISTRATION_SK)

    REFERENCES Dim_STATE_REGISTRATION(STATE_REGISTRATION_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_DRIVER_LICENSE_JURISDICTION29 

    FOREIGN KEY (DRIVER_LICENSE_JURISDICTION_SK)

    REFERENCES Dim_DRIVER_LICENSE_JURISDICTION(DRIVER_LICENSE_JURISDICTION_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_PUBLIC_PROPERTY_DAMAGE30 

    FOREIGN KEY (PUBLIC_PROPERTY_DAMAGE_SK)

    REFERENCES Dim_PUBLIC_PROPERTY_DAMAGE(PUBLIC_PROPERTY_DAMAGE_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_TRAVEL_DIRECTION31 

    FOREIGN KEY (Travel_Direction_SK)

    REFERENCES Dim_TRAVEL_DIRECTION(Travel_Direction_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_DRIVER_LICENSE_STATUS34 

    FOREIGN KEY (DRIVER_LICENSE_STATUS_SK)

    REFERENCES Dim_DRIVER_LICENSE_STATUS(DRIVER_LICENSE_STATUS_SK)

go



ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT Reffct_collision_crashes42 

    FOREIGN KEY (collision_sk)

    REFERENCES FCT_Collision_Crash(collision_sk)

go





/* 

 * TABLE: fct_Collisions_Vehicles_Contributing_Factors 

 */



ALTER TABLE fct_Collisions_Vehicles_Contributing_Factors ADD CONSTRAINT Reffct_Collisions_Vehicles20 

    FOREIGN KEY (Fct_Vehicle_Collision_SK)

    REFERENCES fct_Collisions_Vehicles(Fct_Vehicle_Collision_SK)

go



ALTER TABLE fct_Collisions_Vehicles_Contributing_Factors ADD CONSTRAINT RefDim_CONTRIBUTING_FACTOR26 

    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)

    REFERENCES Dim_CONTRIBUTING_FACTOR(Contribution_Factor_SK)

go





/* 

 * TABLE: fct_Collisions_Vehicles_Vehicle_Damage 

 */



ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD CONSTRAINT Reffct_collision_persons9 

    FOREIGN KEY (FCT_Person_SK)

    REFERENCES fct_collision_persons(FCT_Person_SK)

go



ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD CONSTRAINT Reffct_Collisions_Vehicles21 

    FOREIGN KEY (Fct_Vehicle_Collision_SK)

    REFERENCES fct_Collisions_Vehicles(Fct_Vehicle_Collision_SK)

go



ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD CONSTRAINT RefDim_VEHICLE_DAMAGE35 

    FOREIGN KEY (VEHICLE_DAMAGE_SK)

    REFERENCES Dim_VEHICLE_DAMAGE(VEHICLE_DAMAGE_SK)

go





