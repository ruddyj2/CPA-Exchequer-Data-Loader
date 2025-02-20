-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "StockCodes" USING 'STOCK\MLOCSTK.DAT' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "scIdxRecSub" CHAR(2),
 "scIdxAltCode" CHAR(30),
 "scIdxStkFol" CHAR(45),
 "scIdxFolio2" CHAR(31),
 "scIdxFolio" CHAR(31),
 "IdxStockFolio" INTEGER,
 "IdxAcCode" CHAR(6),
 "scReOrderCcy" UTINYINT,
 "scReOrderPrice" DOUBLE,
 "scLastUsed" LSTRING(9),
 "scOverrideRO" LOGICAL,
 "scDescription" LSTRING(36),
 "scLastTime" LSTRING(7),
 "scSpare1" CHAR(255),
 "scSpare2" CHAR(255),
 "scSpare3" CHAR(41),
 "scSpare4" CHAR(255),
 "scSpare5" CHAR(255),
 "scSpare6" CHAR(24) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "scCodeIdx" USING 0  ON "StockCodes" ( "scIdxRecSub", "scIdxAltCode" );
CREATE INDEX "scFolioIdx" USING 2  ON "StockCodes" ( "scIdxRecSub", "scIdxFolio2" );
CREATE INDEX "scStockIdx" USING 1  ON "StockCodes" ( "scIdxRecSub", "scIdxStkFol" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
