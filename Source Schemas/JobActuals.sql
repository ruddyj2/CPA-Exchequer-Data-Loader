-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "JobActuals" USING 'jobs\jobdet.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=7 (
 "jaIdxRecSub" CHAR(2),
 "jaRecType" CHAR(1) /* Column JobActuals.jaRecType has the same offset as another column that is not type BIT */,
 "jaSubType" CHAR(1),
 "jaIdxLedger" CHAR(21),
 "jaIdxAnal" CHAR(20),
 "jaIdxStock" CHAR(26),
 "IdxAnalCode" CHAR(10),
 "jaIdxEmp" CHAR(21),
 "jaIdxRun" CHAR(22),
 "jaIdxLook" CHAR(19),
 "jaIdxHed" CHAR(14),
 "jaCurrency" UTINYINT,
 "jaIdxCrYrPr" CHAR(3) /* Column JobActuals.jaIdxCrYrPr has the same offset as another column that is not type BIT */,
 "jaYear" UTINYINT,
 "jaPeriod" UTINYINT,
 "jaPosted" LOGICAL,
 "IdxFolio" INTEGER,
 "IdxLineNo" INTEGER,
 "jaLineORef" CHAR(10),
 "IdxJobCode" CHAR(10), 
 "IdxStockCode" CHAR(16),
 "jaDate" LSTRING(9),
 "jaQty" DOUBLE,
 "jaCost" DOUBLE,
 "jaChargeOut" DOUBLE,
 "jaInvoiced" LOGICAL,
 "jaInvRef" CHAR(10),
 "jaEmployee" CHAR(6),
 "jaAnalType" UTINYINT,
 "jaPostedRun" INTEGER,
 "jaReverse" LOGICAL,
 "jaReconTS" LOGICAL,
 "jaReversed" LOGICAL,
 "joDocType" UTINYINT,
 "jaChargeCur" UTINYINT,
 "IdxAcCode" CHAR(6),
 "jaHold" UTINYINT,
 "jaPosted2Stk" LOGICAL,
 "jaCompanyRate_1" SMALLINT,
 "jaCompanyRate_2" INTEGER,
 "jaDailyRate_1" SMALLINT,
 "jaDailyRate_2" INTEGER,
 "jaTagged" LOGICAL,
 "jaGLCode" INTEGER,
 "jaUseORate" UTINYINT,
 "jaTriRate" DOUBLE,
 "jaTriEuro" UTINYINT,
 "jaTriInvert" LOGICAL,
 "jaTriFloat" LOGICAL,
 "jaTriSpare" CHAR(10),
 "jaPriceMultiplier" DOUBLE,
 "jaUpliftTotal" DOUBLE,
 "jaUpliftGL" INTEGER,
 "jaSpare" CHAR(126),
 "jaSpare2" CHAR(255),
 "jaSpare3" CHAR(98) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "jaAnalIdx" USING 1  ON "JobActuals" ( "jaIdxRecSub", "jaIdxAnal", "jaIdxCrYrPr" );
CREATE INDEX "jaCodeIdx" USING 0  ON "JobActuals" ( "jaIdxRecSub", "jaIdxLedger" );
CREATE INDEX "jaEmpIdx" USING 3  ON "JobActuals" ( "jaIdxRecSub", "jaIdxEmp" );
CREATE INDEX "jaHedIdx" USING 6  ON "JobActuals" ( "jaIdxRecSub", "jaIdxHed", "jaIdxCrYrPr" );
CREATE INDEX "jaLookIdx" USING 5  ON "JobActuals" ( "jaIdxRecSub", "jaIdxLook" );
CREATE INDEX "jaPostedIdx" USING 4  ON "JobActuals" ( "jaIdxRecSub", "jaIdxRun" );
CREATE INDEX "jaStockIdx" USING 2  ON "JobActuals" ( "jaIdxRecSub", "jaIdxStock", "jaIdxCrYrPr" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
