-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "BankStatementLines" USING 'Stock\MLocStk.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "bslIdxRecSub" CHAR(2),
 "bslSpare" CHAR(1),
 "bslIdxCode1" CHAR(30),
 "bslSpare1" CHAR(1),
 "bslIdxCode2" CHAR(45),
 "bslSpare2" CHAR(1),
 "bslIdxCode3" CHAR(31),
 "bslLineNo" INTEGER,
 "bslLineDateLB" CHAR(1),
 "bslLineDate" CHAR(8),
 "bslReferenceLB" CHAR(1),
 "bslReference" CHAR(40),
 "bslValue" DOUBLE,
 "bslFolio" INTEGER,
 "bslMatchStrLB" CHAR(1),
 "bslMatchStr" CHAR(30),
 "bslGLCode" INTEGER,
 "bslReference2LB" CHAR(1),
 "bslReference2" CHAR(40),
 "bslStatus" UTINYINT,
 "bslSpare3" CHAR(255),
 "bslSpare4" CHAR(255),
 "bslSpare5" CHAR(4),
 "bslSpare6" CHAR(255),
 "bslSpare7" CHAR(255),
 "bslSpare8" CHAR(24) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "bslCode1Idx" USING 0  ON "BankStatementLines" ( "bslIdxRecSub", "bslIdxCode1" );
CREATE INDEX "bslCode2Idx" USING 1  ON "BankStatementLines" ( "bslIdxRecSub", "bslIdxCode2" );
CREATE INDEX "bslCode3Idx" USING 2  ON "BankStatementLines" ( "bslIdxRecSub", "bslIdxCode3" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
