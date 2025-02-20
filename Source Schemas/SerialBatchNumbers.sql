-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "SerialBatchNumbers" USING 'misc\SerialBatch.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "snSerialNoLen" UTINYINT,
 "snIdxSerialNo" CHAR(20),
 "snBatchNoLen" UTINYINT,
 "snIdxBatchNo" CHAR(30),
 "snInOurRef" CHAR(11),
 "snOutOurRef" CHAR(11),
 "snSoldStatus" LOGICAL,
 "snDateIn" LSTRING(9),
 "snCostPrice" DOUBLE,
 "snSellingPrice" DOUBLE,
 "snIdxStockFolio" INTEGER,
 "snDateOut" LSTRING(9),
 "snSoldABSLine" INTEGER,
 "snCostCurr" UTINYINT,
 "snSalesCurr" UTINYINT,
 "snBuyLine" INTEGER,
 "snIsBatchRec" LOGICAL,
 "snBuyQty" DOUBLE,
 "snQtyUsed" DOUBLE,
 "snBatchSale" LOGICAL,
 "snInLoc" CHAR(11),
 "snOutLoc" CHAR(11),
 "snCompanyRate_1" SMALLINT,
 "snCompanyRate_2" INTEGER,
 "snDailyRate_1" SMALLINT,
 "snDailyRate_2" INTEGER,
 "snInOrderRef" CHAR(11),
 "snOutOrderRef" CHAR(11),
 "snInOrderLine" INTEGER,
 "snOutOrderLine" INTEGER,
 "snNoteLineCount" INTEGER,
 "snNoteFolio" INTEGER,
 "snDateUseBy" LSTRING(9),
 "snUseORate" UTINYINT,
 "snTriRate" DOUBLE,
 "snTriEuro" UTINYINT,
 "snTriInvert" LOGICAL,
 "snTriFloat" LOGICAL,
 "snTriSpare" CHAR(10),
 "snChildNoteFolio" INTEGER,
 "snInBinCode" LSTRING(11),
 "snReturned" LOGICAL,
 "snBatchReturnedQty" DOUBLE,
 "snReturnOurRef" LSTRING(11),
 "snReturnLineNo" INTEGER,
 "snSpare" CHAR(207) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "BatchNoIdx" USING 2  ON "SerialBatchNumbers" ( "snIdxBatchNo" );
CREATE INDEX "SerialIdx" USING 1  ON "SerialBatchNumbers" ( "snIdxSerialNo" );
CREATE INDEX "StockSoldSerialIdx" USING 0  ON "SerialBatchNumbers" ( "snIdxStockFolio", "snSoldStatus", "snIdxSerialNo" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
