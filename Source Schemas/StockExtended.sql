-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "StockExtended" USING 'STOCK\EXTSTOCK.dat' DCOMPRESS PAGESIZE=4096 (
 "extStockFolio" INTEGER,
 "idxStockFolio" INTEGER /* Column StockExtended.idxStockFolio has the same offset as another column that is not type BIT */,
 "extStockDesc1" LSTRING(251),
 "extStockDesc2" LSTRING(251),
 "extStockDesc3" LSTRING(251),
 "extStockDesc4" LSTRING(251),
 "extStockDesc5" LSTRING(251),
 "extStockDesc6" LSTRING(251),
 "extStockDesc7" LSTRING(251),
 "extStockDesc8" LSTRING(251),
 "extWebDescA1" LSTRING(251),
 "extWebDescA2" LSTRING(251),
 "extWebDescB1" LSTRING(251),
 "extWebDescB2" LSTRING(251),
 "extWebDescC1" LSTRING(251),
 "extWebDescC2" LSTRING(251),
 "extSpare1" CHAR(255),
 "extSpare2" CHAR(227) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE UNIQUE INDEX "stCodeIdx" USING 0  ON "StockExtended" ( "idxStockFolio" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
