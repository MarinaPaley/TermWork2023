ALTER TABLE public.product
ADD CONSTRAINT pk_product PRIMARY KEY ("Id");

ALTER TABLE public.product
ADD CONSTRAINT u_product_name UNIQUE ("Name");

ALTER TABLE public.product
ALTER COLUMN "HasExpirationDate"  
SET  DEFAULT TRUE ; 