-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Letters" USING 'misc\exstkchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "ltIdxRecSub" CHAR(2),
 "ltRecType" CHAR(1) /* Column Letters.ltRecType has the same offset as another column that is not type BIT */,
 "ltSubType" CHAR(1),
 "ltIdxAcDate" CHAR(26),
 "ltIdxUser" CHAR(20),
 "ltIdxBatchNo" CHAR(10),
 "IdxAcCode" CHAR(6),
 "IdxFolio" SMALLINT /* Column Letters.IdxFolio has the same offset as another column that is not type BIT */,
 "ltDate" LSTRING(9),
 "ltTime_HH" INTEGER,
 "ltTime_MM" INTEGER,
 "ltTime_SS" INTEGER,
 "ltDescription" LSTRING(101),
 "ltDocName" LSTRING(13),
 "ltUser" LSTRING(11),
 "ltType" UTINYINT,
 "ltSpare" CHAR(137),
 "ltSpare2" CHAR(176) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "ltAcIdx" USING 0  ON "Letters" ( "ltIdxRecSub", "ltIdxAcDate" );
CREATE INDEX "ltBatchNo" USING 2  ON "Letters" ( "ltIdxRecSub", "ltIdxBatchNo" );
CREATE INDEX "ltUserIdx" USING 1  ON "Letters" ( "ltIdxRecSub", "ltIdxUser" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
