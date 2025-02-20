-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "AnalysisCodes" USING 'jobs\jobmisc.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "anIdxRecSub" CHAR(2),
 "anRecType" CHAR(1) /* Column AnalysisCodes.anRecType has the same offset as another column that is not type BIT */,
 "anSubType" CHAR(1),
 "IdxAnalCode" CHAR(10),
 "anIdxName" CHAR(20),
 "anIdxSpare" CHAR(10),
 "anName" LSTRING(31),
 "anType" SMALLINT,
 "anWIPGL" INTEGER,
 "anP&LGL" INTEGER,
 "anCategory" SMALLINT,
 "anTagged" LOGICAL,
 "anLineType" UTINYINT,
 "anCISTaxRate" CHAR(1),
 "anUplift" DOUBLE,
 "anUpliftGL" INTEGER,
 "anRevenueType" UTINYINT,
 "anDeductionBase" UTINYINT,
 "anCalcB4Retention" LOGICAL,
 "anDeduction" DOUBLE,
 "anApplyDeduction" UTINYINT,
 "anRetentionType" UTINYINT,
 "anRetentionValue" DOUBLE,
 "anRetentionExpiryTyp" UTINYINT,
 "anRetExpiryInterval" UTINYINT,
 "anPreserveRetention" LOGICAL,
 "anCalcDeductionAs" UTINYINT,
 "anPayrollCode" LSTRING(6),
 "anSpare1" CHAR(225),
 "anSpare2" CHAR(149),
 "anSpare3" CHAR(255),
 "anSpare4" CHAR(135) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "anCodeK" USING 0  ON "AnalysisCodes" ( "anIdxRecSub", "IdxAnalCode" );
CREATE INDEX "anDescIdx" USING 1  ON "AnalysisCodes" ( "anIdxRecSub", "anIdxName" );
CREATE INDEX "anSpareIdx" USING 2  ON "AnalysisCodes" ( "anIdxRecSub", "anIdxSpare" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
