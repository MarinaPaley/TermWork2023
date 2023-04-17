ALTER TABLE "Sale"
ADD CONSTRAINT pk_Sale 
PRIMARY KEY ("ID");

ALTER TABLE "Sale"
ADD CONSTRAINT fk_Sale_Product
FOREIGN KEY ("ID_Product")
REFERENCES "product" ("Id");

ALTER TABLE "Sale"
ADD CONSTRAINT fk_Sale_Vendor
FOREIGN KEY ("ID_Vendor")
REFERENCES "vendor" ("Id");

ALTER TABLE "Sale"
ADD CONSTRAINT ch_Price
CHECK ("Price" > CAST(0 AS Money));

ALTER TABLE "Sale"
ADD CONSTRAINT ch_Quantity
CHECK ("Quantity" > 0);