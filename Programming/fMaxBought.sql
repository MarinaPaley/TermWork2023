CREATE FUNCTION public."fMaxBought"(
    ID INTEGER)
RETURNS MONEY 
language 'plpgsql'
AS $$
DECLARE "maxMoney" MONEY;
BEGIN 
   SELECT MAX(S."Price")
   INTO "maxMoney"
   FROM "Sale" AS S
   WHERE S."ID_Vendor"  = ID;
   
   RETURN "maxMoney";
   
END;
$$ 

--DROP FUNCTION public."fDayMaxBought";
SELECT * FROM public."fMaxBought"(1);
SELECT * FROM public."fMaxBought"(3);


