-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "MultibuyDiscounts" USING 'misc\multibuy.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "mbdOwnerType" CHAR(1),
 "mbdAcCode" LSTRING(7),
 "mbdStockCode" LSTRING(17),
 "mbdBuyQtyString" LSTRING(21),
 "mbdCurrency" UTINYINT,
 "mbdDiscountType" CHAR(1),
 "mbdStartDate" LSTRING(9),
 "mbdEndDate" LSTRING(9),
 "mbdUseDates" LOGICAL,
 "mbdBuyQty" DOUBLE,
 "mbdRewardValue" DOUBLE,
 "mbdSpare1a" CHAR(255),
 "mbdSpare1b" CHAR(1) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "mbdAcCodeIdx" USING 0  ON "MultibuyDiscounts" ( "mbdAcCode", "mbdStockCode", "mbdBuyQtyString", "mbdCurrency", "mbdDiscountType" );
CREATE INDEX "mbdEndDateIdx" USING 2  ON "MultibuyDiscounts" ( "mbdEndDate" );
CREATE INDEX "mbdStartDateIdx" USING 1  ON "MultibuyDiscounts" ( "mbdStartDate" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
