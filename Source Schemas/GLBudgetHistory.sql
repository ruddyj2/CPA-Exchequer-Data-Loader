-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "GLBudgetHistory" USING 'Trans\GLBudgetHistory.Dat' DCOMPRESS PAGESIZE=1024 LINKDUP=1 (
 "bhGLCode" INTEGER,
 "bhYear" UTINYINT,
 "bhPeriod" UTINYINT,
 "bhCurrency" UTINYINT,
 "bhDateChanged" LSTRING(9),
 "bhTimeChanged" LSTRING(7),
 "bhValue" DOUBLE,
 "bhChange" DOUBLE,
 "bhUser" LSTRING(11),
 "Spare" CHAR(150) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
