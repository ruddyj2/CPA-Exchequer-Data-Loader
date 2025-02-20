-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Jobs" USING 'jobs\jobhead.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=5 (
 "IdxJobCode" CHAR(10),
 "jrDesc" LSTRING(31),
 "jrIdxDesc" CHAR(30),
 "jrFolio" INTEGER,
 "IdxAcCode" CHAR(6),
 "jrParentJob" CHAR(10),
 "jrAltCode" CHAR(10),
 "jrCompleted" INTEGER,
 "jrContact" LSTRING(26),
 "jrManager" LSTRING(26),
 "jrChargeType" SMALLINT,
 "jrQuotePrice" DOUBLE,
 "jrCurrPrice" UTINYINT,
 "jrStartDate" LSTRING(9),
 "jrEndDate" LSTRING(9),
 "jrRevEndDate" LSTRING(9),
 "jrSORRef" CHAR(10),
 "jrVATCode" CHAR(1),
 "jrDepartment" CHAR(3),
 "jrCostCentre" CHAR(3),
 "jrJobType" CHAR(3),
 "jrCategory" CHAR(1),
 "jrStatus" INTEGER,
 "jrUser1" LSTRING(21),
 "jrUser2" LSTRING(21),
 "jrUser3" LSTRING(21),
 "jrUser4" LSTRING(21),   
 "jrDefRetCurr" UTINYINT,
 "jrJPTOurRef" LSTRING(11),
 "jrJSTOurRef" LSTRING(11),
 "jrQSCode" LSTRING(21),
 "jrUser5" LSTRING(31),
 "jrUser6" LSTRING(31),
 "jrUser7" LSTRING(31),
 "jrUser8" LSTRING(31),
 "jrUser9" LSTRING(31),
 "jrUser10" LSTRING(31),
 "jrSpare" CHAR(104) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "jrAltIdx" USING 6  ON "Jobs" ( "jrAltCode" );
CREATE UNIQUE INDEX "jrCatIdx" USING 2  ON "Jobs" ( "jrParentJob", "IdxJobCode" );
CREATE UNIQUE INDEX "jrCodeIdx" USING 0  ON "Jobs" ( "IdxJobCode" );
CREATE INDEX "jrCompDescIdx" USING 5  ON "Jobs" ( "jrCompleted", "jrIdxDesc" );
CREATE INDEX "jrcompIdx" USING 4  ON "Jobs" ( "jrCompleted", "IdxJobCode" );
CREATE INDEX "jrDescIdx" USING 3  ON "Jobs" ( "jrIdxDesc" );
CREATE UNIQUE INDEX "jrFolioIdx" USING 1  ON "Jobs" ( "jrFolio" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
