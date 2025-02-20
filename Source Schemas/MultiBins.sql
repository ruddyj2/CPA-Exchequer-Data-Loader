-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "MultiBins" USING 'stock\mlocstk.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (

-- End Multi-Line Statement
CREATE INDEX "brCode1Idx" USING 0  ON "MultiBins" ( "brIdxRecSub", "brIdxCode1" );
CREATE INDEX "brCode2Idx" USING 1  ON "MultiBins" ( "brIdxRecSub", "brIdxCode2" );
CREATE INDEX "brCode3idx" USING 2  ON "MultiBins" ( "brIdxRecSub", "brIdxCode3" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
