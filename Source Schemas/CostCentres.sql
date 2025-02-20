-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "CostCentres" USING 'misc\exchqchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "ccIdxRecSub" CHAR(2),
 "ccRecType" CHAR(1) /* Column CostCentres.ccRecType has the same offset as another column that is not type BIT */,
 "ccSubType" CHAR(1),
 "ccIdxCode" CHAR(12),
 "ccCode" CHAR(3) /* Column CostCentres.ccCode has the same offset as another column that is not type BIT */,
 "ccDesc" LSTRING(31),
 "ccIdxDesc" CHAR(11),
 "ccTag" LOGICAL,
 "ccLastAccessDate" LSTRING(9),
 "ccNoteLineCount" INTEGER,
 "ccSpare" CHAR(213) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "ccCodeIdx" USING 0  ON "CostCentres" ( "ccIdxRecSub", "ccIdxCode" );
CREATE INDEX "ccDescIdx" USING 1  ON "CostCentres" ( "ccIdxRecSub", "ccIdxDesc" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
