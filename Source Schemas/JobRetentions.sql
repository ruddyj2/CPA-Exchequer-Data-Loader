-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "JobRetentions" USING 'jobs\jobdet.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=7 (
 "jeIdxRecSub" CHAR(2),
 "jeRecType" CHAR(1) /* Column JobRetentions.jeRecType has the same offset as another column that is not type BIT */,
 "jeSubType" CHAR(1),
 "jeIdxReten" CHAR(21),
 "jeIdxInv" CHAR(20),
 "jeIdxSpare1" CHAR(26),
 "IdxAnalcode" CHAR(10),
 "jeIdxSpare2" CHAR(21),
 "jeIdxSpare3" CHAR(22),
 "jeIdxSpare4" CHAR(19),
 "jeIdxSpare5" CHAR(14),
 "jeCurrency" UTINYINT,
 "jeIdxCrYrPr" CHAR(3) /* Column JobRetentions.jeIdxCrYrPr has the same offset as another column that is not type BIT */,
 "jeRetYr" UTINYINT,
 "jeRetPr" UTINYINT,
 "jePosted" LOGICAL,
 "jeRetDiscPer" DOUBLE,
 "jeRetCur" UTINYINT,
 "jeRetValue" DOUBLE,
 "IdxJobCode" CHAR(10),
 "jeAutoCrDoc" CHAR(10),
 "jeRetDate" LSTRING(9),
 "jeRetDoc" CHAR(10),
 "jeInvoiced" LOGICAL,
 "IdxAcCode" CHAR(6),
 "jeEntryDate" LSTRING(9),
 "jeDepartment" CHAR(3),
 "jeCostCentre" CHAR(3),
 "jeAcType" CHAR(1),
 "jeDefVATCode" CHAR(1),
 "jeCISTax" DOUBLE,
 "jeCISGross" DOUBLE,
 "jeCISEmployee" LSTRING(11),
 "jeApplicationMode" UTINYINT,
 "jeSpare" CHAR(197),
 "jeSpare2" CHAR(255),
 "jeSpare3" CHAR(98) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "jeInvIdx" USING 1  ON "JobRetentions" ( "jeIdxRecSub", "jeIdxInv", "jeIdxCrYrPr" );
CREATE INDEX "jeRetenIdx" USING 0  ON "JobRetentions" ( "jeIdxRecSub", "jeIdxReten" );
CREATE INDEX "jeSpare1Idx" USING 2  ON "JobRetentions" ( "jeIdxRecSub", "jeIdxSpare1", "jeIdxCrYrPr" );
CREATE INDEX "jeSpare2Idx" USING 3  ON "JobRetentions" ( "jeIdxRecSub", "jeIdxSpare2" );
CREATE INDEX "jeSpare3Idx" USING 4  ON "JobRetentions" ( "jeIdxRecSub", "jeIdxSpare3" );
CREATE INDEX "jeSpare4Idx" USING 5  ON "JobRetentions" ( "jeIdxRecSub", "jeIdxSpare4" );
CREATE INDEX "jeSpare5Idx" USING 6  ON "JobRetentions" ( "jeIdxRecSub", "jeIdxSpare5", "jeIdxCrYrPr" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
