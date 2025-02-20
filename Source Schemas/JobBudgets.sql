-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "JobBudgets" USING 'jobs\jobctrl.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "jbIdxRecSub" CHAR(2),
 "jbRecType" CHAR(1) /* Column JobBudgets.jbRecType has the same offset as another column that is not type BIT */,
 "jbSubType" CHAR(1),
 "jbIdxBudget" CHAR(27),
 "jbIdxCode" CHAR(21),
 "IdxAnalCode" CHAR(10),
 "jbHistFolio" INTEGER,
 "IdxJobCode" CHAR(10),
 "IdxStockCode" CHAR(20),
 "jbType" UTINYINT,
 "jbChargeOn" LOGICAL,
 "jbOverCost" DOUBLE,
 "jbUnitPrice" DOUBLE,
 "jbOrigQty" DOUBLE,
 "jbRevQty" DOUBLE,
 "jbOrigValue" DOUBLE,
 "jbRevValue" DOUBLE,
 "jbBudgetCur" UTINYINT,
 "jbPayRateMode" LOGICAL,
 "jbPayRateCur" UTINYINT,
 "jbAnalType" UTINYINT,
 "jbOriginalValuation" DOUBLE,
 "jbRevisedValuation" DOUBLE,
 "jbUplift" DOUBLE,
 "jbApplyPercent" DOUBLE,
 "jbApplicationBasis" UTINYINT,
 "jbJobBudgetCurrency" UTINYINT,
 "jbSpare" CHAR(65) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "jbBudgetIdx" USING 0  ON "JobBudgets" ( "jbIdxRecSub", "jbIdxBudget" );
CREATE INDEX "jbCodeIdx" USING 1  ON "JobBudgets" ( "jbIdxRecSub", "jbIdxCode" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
