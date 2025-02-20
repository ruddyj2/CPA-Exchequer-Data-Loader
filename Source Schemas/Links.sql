-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Links" USING 'misc\exstkchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "lnIdxRecSub" CHAR(2),
 "lnRecType" CHAR(1) /* Column Links.lnRecType has the same offset as another column that is not type BIT */,
 "lnSubType" CHAR(1),
 "lnIdxAcDate" CHAR(26),
 "lnIdxUser" CHAR(20),
 "lnIdxBatchNo" CHAR(10),
 "IdxFolio" INTEGER,
 "IdxAcCode" CHAR(6),
 "lnDescription" LSTRING(61),
 "lnDocName" LSTRING(85),
 "lnType" UTINYINT,
 "lnUser" LSTRING(11),
 "lnDate" LSTRING(9),
 "lnTime_HH" INTEGER,
 "lnTime_MM" INTEGER,
 "lnTime_SS" INTEGER,
 "lnSpare" CHAR(105),
 "lnSpare2" CHAR(176) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "lnAcIdx" USING 0  ON "Links" ( "lnIdxRecSub", "lnIdxAcDate" );
CREATE INDEX "lnBatchNoIdx" USING 2  ON "Links" ( "lnIdxRecSub", "lnIdxBatchNo" );
CREATE INDEX "lnUserIdx" USING 1  ON "Links" ( "lnIdxRecSub", "lnIdxUser" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
