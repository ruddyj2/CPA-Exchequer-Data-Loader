-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "JobTypes" USING 'jobs\jobmisc.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "jtIdxRecSub" CHAR(2),
 "jtRecType" CHAR(1) /* Column JobTypes.jtRecType has the same offset as another column that is not type BIT */,
 "jtSubType" CHAR(1),
 "jtIdxCode" CHAR(10),
 "IdxTypeCode" CHAR(3) /* Column JobTypes.IdxTypeCode has the same offset as another column that is not type BIT */,
 "jtIdxName" CHAR(20),
 "jtIdxSpare" CHAR(10),
 "jtName" LSTRING(31),
 "jtTag" LOGICAL,
 "jtSpare1" CHAR(255),
 "jtSpare2" CHAR(176),
 "jtSpare3" CHAR(255),
 "jtSpare4" CHAR(135) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "jtCodeIdx" USING 0  ON "JobTypes" ( "jtIdxRecSub", "jtIdxCode" );
CREATE INDEX "jtNameIdx" USING 1  ON "JobTypes" ( "jtIdxRecSub", "jtIdxName" );
CREATE INDEX "jtSpareIdx" USING 2  ON "JobTypes" ( "jtIdxRecSub", "jtIdxSpare" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
 