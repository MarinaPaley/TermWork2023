ALTER TABLE public.vendor_product 
ADD CONSTRAINT pk_vendor_product PRIMARY KEY ("Id");

-- public.vendor_product foreign keys

ALTER TABLE public.vendor_product 
ADD CONSTRAINT fk_vendor_product_id_product 
FOREIGN KEY ("Id_Product") 
REFERENCES public.product("Id") 
ON DELETE CASCADE 
ON UPDATE CASCADE;

ALTER TABLE public.vendor_product 
ADD CONSTRAINT fk_vendor_product_id_vendor 
FOREIGN KEY ("Id_Vendor") 
REFERENCES public.vendor("Id") 
ON DELETE CASCADE 
ON UPDATE CASCADE;