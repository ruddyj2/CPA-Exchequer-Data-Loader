-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "BillOfMaterials" USING 'misc\exchqchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "bmRecType" CHAR(1),
 "bmIdxRecSub" CHAR(2) /* Column BillOfMaterials.bmIdxRecSub has the same offset as another column that is not type BIT */,
 "bmSubType" CHAR(1),
 "IdxStockFolio" INTEGER,
 "bmIdxStkLink" CHAR(12) /* Column BillOfMaterials.bmIdxStkLink has the same offset as another column that is not type BIT */,
 "bmCompOrder" INTEGER,
 "bmIdxBillLink" CHAR(11),
 "bmQtyUsed_1" SMALLINT,
 "bmQtyUsed_2" INTEGER,
 "bmQtyCost_1" SMALLINT,
 "bmQtyCost_2" INTEGER,
 "bmQtyCur" UTINYINT,
 "IdxStockCode" CHAR(16),
 "bmFreeIssue" LOGICAL,
 "bmTime" INTEGER,
 "bmSpare" CHAR(208) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "bmCompIdx" USING 1  ON "BillOfMaterials" ( "bmIdxRecSub", "bmIdxBillLink" );
CREATE INDEX "bmStockIdx" USING 0  ON "BillOfMaterials" ( "bmIdxRecSub", "bmIdxStkLink" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
