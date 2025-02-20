-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "BankStatementHeaders" USING 'Stock\MLocStk.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "bsIdxRecSub" CHAR(2),
 "bsSpare" CHAR(1),
 "bsIdxCode1" CHAR(30),
 "bsSpare1" CHAR(1),
 "bsIdxCode2" CHAR(45),
 "bsSpare2" CHAR(1),
 "bsIdxCode3" CHAR(31),
 "bsGLCode" INTEGER,
 "bsReferenceLB" CHAR(1),
 "bsReference" CHAR(20),
 "bsStatus" SMALLINT,
 "bsSourceFileLB" CHAR(1),
 "bsSourceFile" CHAR(100),
 "bsFolio" INTEGER,
 "bsDateLB" CHAR(1),
 "bsDate" CHAR(8),
 "bsSpare3" CHAR(255),
 "bsSpare4" CHAR(255),
 "bsSpare5" CHAR(6),
 "bsSpare6" CHAR(255),
 "bsSpare7" CHAR(255),
 "bsSpare8" CHAR(24) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "bsCode1Idx" USING 0  ON "BankStatementHeaders" ( "bsIdxRecSub", "bsIdxCode1" );
CREATE INDEX "bsCode2Idx" USING 1  ON "BankStatementHeaders" ( "bsIdxRecSub", "bsIdxCode2" );
CREATE INDEX "bsCode3Idx" USING 2  ON "BankStatementHeaders" ( "bsIdxRecSub", "bsIdxCode3" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
