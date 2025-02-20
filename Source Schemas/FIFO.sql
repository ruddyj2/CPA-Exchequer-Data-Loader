-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "FIFO" USING 'misc\exstkchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "fiRecType" CHAR(1),
 "fiIdxRecSub" CHAR(2) /* Column FIFO.fiIdxRecSub has the same offset as another column that is not type BIT */,
 "fiSubType" CHAR(1),
 "fiIdxStockFolio" CHAR(26),
 "IdxFolio" INTEGER,
 "fiIdxDoc" CHAR(20) /* Column FIFO.fiIdxDoc has the same offset as another column that is not type BIT */,
 "fiIdxBatchNo" CHAR(10),
 "IdxStockFolio" INTEGER,
 "IdxLineNo" INTEGER,
 "fiDate" LSTRING(9),
 "fiQtyLeft" DOUBLE,
 "IdxOurRef" CHAR(10),
 "fiQty" DOUBLE,
 "fiCost" DOUBLE,
 "fiCostCur" UTINYINT,
 "IdxAcCode" CHAR(6),
 "fiLocation" CHAR(3),
 "fiCompanyRate_1" SMALLINT,
 "fiCompanyRate_2" INTEGER,
 "fiDailyRate_1" SMALLINT,
 "fiDailyRate_2" INTEGER,
 "fiUseORate" UTINYINT,
 "fiTriRate" DOUBLE,
 "fiTriEuro" UTINYINT,
 "fiTriInvert" LOGICAL,
 "fiTriFloat" LOGICAL,
 "fiTriSpare" CHAR(10),
 "fiSpare" CHAR(186),
 "fiSpare2" CHAR(176) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "fiBatchNo" USING 2  ON "FIFO" ( "fiIdxRecSub", "fiIdxBatchNo" );
CREATE INDEX "fiDocIdx" USING 1  ON "FIFO" ( "fiIdxRecSub", "fiIdxDoc" );
CREATE INDEX "fiStockIdx" USING 0  ON "FIFO" ( "fiIdxRecSub", "fiIdxStockFolio" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
