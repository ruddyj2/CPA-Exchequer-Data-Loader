-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "JobRetentions" USING 'jobs\jobdet.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=7 (

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
