
CREATE OR REPLACE FUNCTION fTotalForVendor("Name" TEXT)
RETURNS TABLE(
      "Product" TEXT
    , "Vendor" TEXT
    , "QuantityOfPurchasing" INTEGER
    , "QuantityOfSale" INTEGER
    , "DateOfPurchasing" Date
    , "DateOfSale" Date
    , "BenefitForDay" MONEY)
language 'plpgsql'
AS $$
BEGIN 
   RETURN QUERY 
   SELECT *
   FROM vtotal v 
   WHERE v."VendorName" LIKE "Name";
END
$$


--DROP FUNCTION fTotalForVendor
SELECT * FROM fTotalForVendor('Домик в деревне');