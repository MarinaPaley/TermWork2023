DO $$
DECLARE
    "maxMoney" MONEY;
BEGIN
    SELECT MAX(s."Price")
    INTO "maxMoney"
    FROM public."Sale" s
    WHERE s."ID_Vendor"  = 1; 

    RAISE NOTICE 'maxMoney = %',"maxMoney";
END $$



