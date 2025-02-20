-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "CustomerStockHist" USING 'stock\mlocstk.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "csIdxRecSub" CHAR(2),
 "csIdxCode1" CHAR(30),
 "csIdxCode2" CHAR(45),
 "csIdxCode3" CHAR(31),
 "idxAcCode" CHAR(6),
 "idxStockCode" CHAR(20),
 "idxStockFolio" INTEGER,
 "csSOQty" DOUBLE,
 "csLastDate" LSTRING(9),
 "csLineNo" INTEGER,
 "csLastPrice" DOUBLE,
 "csLPCurr" UTINYINT,
 "IdxJobCode" CHAR(10),
 "IdxAnalCode" CHAR(10),
 "csLocCode" LSTRING(6),
 "csNomCode" INTEGER,
 "csDepartment" LSTRING(4),
 "csCostCentre" LSTRING(4),
 "csQty" DOUBLE,
 "csNetValue" DOUBLE,
 "csDiscount" DOUBLE,
 "csVATCode" CHAR(1),
 "csCost" DOUBLE,
 "csDesc1" LSTRING(36),
 "csDesc2" LSTRING(36),
 "csDesc3" LSTRING(36),
 "csDesc4" LSTRING(36),
 "csDesc5" LSTRING(36),
 "csDesc6" LSTRING(36),
 "csVAT" DOUBLE,
 "csPrxPack" LOGICAL,
 "csQtyPack" DOUBLE,
 "csQtyMul" DOUBLE,
 "csDiscCh" CHAR(1),
 "csEntered" LOGICAL,
 "csUsePack" LOGICAL,
 "csShowCase" LOGICAL,
 "csLineType" UTINYINT,
 "csPriceMultiplier" DOUBLE,
 "csInclusiveVATCode" CHAR(1),
 "csSpare1" CHAR(255),
 "csSpare2" CHAR(8),
 "csSpare3" CHAR(255),
 "csSpare4" CHAR(255),
 "csSpare5" CHAR(24) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "csCode1Idx" USING 0  ON "CustomerStockHist" ( "csIdxRecSub", "csIdxCode1" );
CREATE INDEX "csCode2Idx" USING 1  ON "CustomerStockHist" ( "csIdxRecSub", "csIdxCode2" );
CREATE INDEX "csCode3Idx" USING 2  ON "CustomerStockHist" ( "csIdxRecSub", "csIdxCode3" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
