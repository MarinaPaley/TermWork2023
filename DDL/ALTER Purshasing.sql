ALTER TABLE "Purshasing"
ADD CONSTRAINT pk_Purshasing 
PRIMARY KEY ("ID");

ALTER TABLE "Purshasing"
ADD CONSTRAINT fk_Purshasing_Product
FOREIGN KEY ("ID_Product")
REFERENCES "product" ("Id");

ALTER TABLE "Purshasing"
ADD CONSTRAINT fk_Purshasing_Vendor
FOREIGN KEY ("ID_Vendor")
REFERENCES "vendor" ("Id");

ALTER TABLE "Purshasing"
ADD CONSTRAINT ch_Price
CHECK ("Price" > CAST(0 AS Money));

ALTER TABLE "Purshasing"
ADD CONSTRAINT ch_Quantity
CHECK ("Quantity" > 0);