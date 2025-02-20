-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "ReturnReasons" USING 'misc\exstkchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "rrIdxRecSub" CHAR(2),
 "rrRecType" CHAR(1) /* Column ReturnReasons.rrRecType has the same offset as another column that is not type BIT */,
 "rrSubType" CHAR(1),
 "rrCustomKeyLB" CHAR(1),
 "rrIdxCustom" CHAR(26),
 "rrCustomKey" CHAR(20) /* Column ReturnReasons.rrCustomKey has the same offset as another column that is not type BIT */,
 "rrSpare1" CHAR(6),
 "rrUserKeyLB" CHAR(1),
 "rrIdxUserKey" CHAR(20),
 "rrSpare2" CHAR(11),
 "rrIdxBatchNo" CHAR(10),
 "rrReasonDesc" LSTRING(61),
 "rrReasonID" INTEGER,
 "rrSpare3" CHAR(230),
 "rrSpare4" CHAR(176) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "rrBatchNoIdx" USING 2  ON "ReturnReasons" ( "rrIdxRecSub", "rrIdxBatchNo" );
CREATE INDEX "rrCustomIdx" USING 0  ON "ReturnReasons" ( "rrIdxRecSub", "rrIdxCustom" );
CREATE INDEX "rrUserKey" USING 1  ON "ReturnReasons" ( "rrIdxRecSub", "rrIdxUserKey" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
