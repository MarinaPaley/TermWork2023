ALTER TABLE vendor
ADD CONSTRAINT pk_vendor PRIMARY KEY ("Id");

ALTER TABLE vendor
ADD CONSTRAINT u_vendor_name UNIQUE ("Name");

ALTER TABLE vendor
ADD CONSTRAINT ch_vendor_name 
CHECK ((length(TRIM(BOTH FROM "Name")) > 0));

