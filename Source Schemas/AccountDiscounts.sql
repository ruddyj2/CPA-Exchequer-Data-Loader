-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "AccountDiscounts" USING 'misc\exstkchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "adRecType" CHAR(1),
 "adIdxRecSub" CHAR(2) /* Column AccountDiscounts.adIdxRecSub has the same offset as another column that is not type BIT */,
 "adSubType" CHAR(1),
 "adIdxAcStock" CHAR(26),
 "adIdxStock" CHAR(20),
 "IdxStockCode" CHAR(20) /* Column AccountDiscounts.IdxStockCode has the same offset as another column that is not type BIT */,
 "adIdxBatchNo" CHAR(10),
 "IdxAcCode" CHAR(6),
 "adType" CHAR(1),
 "adCurrency" UTINYINT,
 "adPrice" DOUBLE,
 "adBand" CHAR(1),
 "adDiscPerc" DOUBLE,
 "adDiscAmt" DOUBLE,
 "adMarkupMargin" DOUBLE,
 "adUseEffectiveDates" LOGICAL,
 "adDateEffectiveFrom" LSTRING(9),
 "adDateEffectiveTo" LSTRING(9),
 "adSpare" CHAR(230),
 "adSpare2" CHAR(176) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "adAccIdx" USING 0  ON "AccountDiscounts" ( "adIdxRecSub", "adIdxAcStock" );
CREATE INDEX "adBatchNo" USING 2  ON "AccountDiscounts" ( "adIdxRecSub", "adIdxBatchNo" );
CREATE INDEX "adStockIdx" USING 1  ON "AccountDiscounts" ( "adIdxRecSub", "adIdxStock" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
 