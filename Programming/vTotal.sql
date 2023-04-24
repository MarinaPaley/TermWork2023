CREATE VIEW vTotal
AS
SELECT 
      p2."Name" "ProductName"
    , v."Name" "VendorName"
    , p."Quantity" "QuantityPurshasing"
    , s."Quantity" "QuantitySale"
    , p."Date" "DatePurshasing"
    , s."Date" "DateSale"
    , - p."Quantity" * p."Price" 
    + s."Quantity" * s."Price" "Benefit" 
FROM "Purshasing" p 
    FULL OUTER JOIN "Sale" s 
    ON p."Date" = s."Date"
        INNER JOIN product p2 
        ON p2."Id"  = p."ID_Product" 
            INNER JOIN vendor v 
            ON p."ID_Vendor"  = v."Id";