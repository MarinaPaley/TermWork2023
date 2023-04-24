CREATE VIEW "vVendorProduct"
AS
SELECT 
      p."Id"
    , p."Name" "ProductName"
    , p."Weight" 
    , p."Class" 
    , p."ExpirationDate" 
    , v."Name" "VendorName"
FROM product p
    INNER JOIN vendor_product vp
    ON vp."Id_Product"  = p."Id" 
        INNER JOIN vendor v 
        ON vp."Id_Vendor" = v."Id";