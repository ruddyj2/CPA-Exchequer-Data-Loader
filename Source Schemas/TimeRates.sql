-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "TimeRates" USING 'jobs\jobctrl.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "trRecType" CHAR(1),
 "trIdxRecSub" CHAR(2) /* Column TimeRates.trIdxRecSub has the same offset as another column that is not type BIT */,
 "trSubType" CHAR(1),
 "trIdxCode" CHAR(27),
 "trIdxDescr" CHAR(21),
 "IdxAnalCode" CHAR(10),
 "trEmpCode" CHAR(6),
 "trRateCode" CHAR(10),
 "trDescr" LSTRING(31),
 "trCost" DOUBLE,
 "trChargeOut" DOUBLE,
 "trCostCur" UTINYINT,
 "trChargeCur" UTINYINT,
 "trPayrollFactor" SMALLINT,
 "trPayrollRate" SMALLINT,
 "trSpare" CHAR(104) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "trCodeIdx" USING 0  ON "TimeRates" ( "trIdxRecSub", "trIdxCode" );
CREATE INDEX "trDescIdx" USING 1  ON "TimeRates" ( "trIdxRecSub", "trIdxDescr" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
