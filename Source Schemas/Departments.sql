-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Departments" USING 'misc\exchqchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "dpIdxRecSub" CHAR(2),
 "dpRecType" CHAR(1) /* Column Departments.dpRecType has the same offset as another column that is not type BIT */,
 "dpSubType" CHAR(1),
 "dpIdxCode" CHAR(12),
 "dpCode" CHAR(3) /* Column Departments.dpCode has the same offset as another column that is not type BIT */,
 "dpDesc" LSTRING(31),
 "dpIdxDesc" CHAR(11),
 "dpTag" LOGICAL,
 "dpLastAccessDate" LSTRING(9),
 "dpNoteLineCount" INTEGER,
 "dpSpare" CHAR(213) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "dpCodeIdx" USING 0  ON "Departments" ( "dpIdxRecSub", "dpIdxCode" );
CREATE INDEX "dpDescIdx" USING 1  ON "Departments" ( "dpIdxRecSub", "dpIdxDesc" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
 