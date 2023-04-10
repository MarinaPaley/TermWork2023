-- public.vendor_product definition

-- Drop table

DROP TABLE public.vendor_product;

CREATE TABLE public.vendor_product (
    "Id" int4 NOT NULL,
    "Id_Vendor" int4 NULL,
    "Id_Product" int4 NOT NULL
);
