-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "BankReconcileDetails" USING 'stock\MLocStk.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "brdIdxRecSub" CHAR(2),
 "brdSpare" CHAR(1),
 "brdIdxCode1" CHAR(30),
 "brdSpare1" CHAR(1),
 "brdIdxCode2" CHAR(45),
 "brdSpare2" CHAR(1),
 "brdIdxCode3" CHAR(31),
 "brdPaymentRefLB" CHAR(1),
 "brdPaymentRef" CHAR(10),
 "brdLineDateLB" CHAR(1),
 "brdLineDate" CHAR(8),
 "brdMatchingOurRefLB" CHAR(1),
 "brdMatchingOurRef" CHAR(16),
 "brdValue" DOUBLE,
 "brdLineNo" INTEGER,
 "brdStatementIDLB" CHAR(1),
 "brdStatementID" CHAR(4),
 "brdStatementLineNo" INTEGER,
 "brdAcCodeLB" CHAR(1),
 "brdAcCode" CHAR(10),
 "brdPeriod" UTINYINT,
 "brdYear" UTINYINT,
 "brdCompanyRate_1" SMALLINT,
 "brdCompanyRate_2" INTEGER,
 "brdDailyRate_1" SMALLINT,
 "brdDailyRate_2" INTEGER,
 "brdLUseORate" UTINYINT,
 "brdTriangulationRate" DOUBLE,
 "brdTriangulationEuro" UTINYINT,
 "brdTriangulationInve" LOGICAL,
 "brdTriangulationFloa" LOGICAL,
 "brdSpare5" CHAR(10),
 "brdMatchingYourRefLB" CHAR(1),
 "brdMatchingYourRef" CHAR(10),
 "brdTransValue" DOUBLE,
 "brdDepartmentLB" CHAR(1),
 "brdDepartment" CHAR(3),
 "brdCostCentreLB" CHAR(1),
 "brdCostCentre" CHAR(3),
 "brdGLCode" INTEGER,
 "brdSRIGLCode" INTEGER,
 "brdFolio" INTEGER,
 "brdVATCode" CHAR(1),
 "brdVATAmount" DOUBLE,
 "brdTransDateLB" CHAR(1),
 "brdTransDate" CHAR(8),
 "brdIsNewTrans" LOGICAL,
 "brdLineStatus" UTINYINT,
 "brdSpare3" CHAR(255),
 "brdSpare4" CHAR(238),
 "brdSpare6" CHAR(255),
 "brdSpare7" CHAR(255),
 "brdSpare8" CHAR(24) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "brdCode1Idx" USING 0  ON "BankReconcileDetails" ( "brdIdxRecSub", "brdIdxCode1" );
CREATE INDEX "brdCode2Idx" USING 1  ON "BankReconcileDetails" ( "brdIdxRecSub", "brdIdxCode2" );
CREATE INDEX "brdCode3Idx" USING 2  ON "BankReconcileDetails" ( "brdIdxRecSub", "brdIdxCode3" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
