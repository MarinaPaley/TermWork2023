--DROP TABLE public.product ;

CREATE TABLE public.product (
    "Id" int4 NOT NULL
    ,"Name" text NOT NULL
   -- ,"Cost" money NOT NULL
    , "Color" text NULL
    , "Weight" numeric(10, 2) NULL
    , "Size" text NULL
    , "Class" text NULL
    --, "HasExpirationDate" bool NULL
    ,"ExpirationDate" date NULL
);

--ALTER TABLE product 
--DROP COLUMN "Cost";

--ALTER TABLE product 
--DROP COLUMN "HasExpirationDate";

ALTER TABLE product 
ADD COLUMN "ExpirationDate" date NULL;