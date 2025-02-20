-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "CurrencyHistory" USING 'CurrencyHistory.Dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "chDateChanged" LSTRING(9),
 "IdxDateChanged" CHAR(8),
 "chTimeChanged" LSTRING(7),
 "IdxTimeChanged" CHAR(6),
 "chCurrNumber" SMALLINT,
 "chStopKey" CHAR(1),
 "chDailyRate" DOUBLE,
 "chCompanyRate" DOUBLE,
 "chInvert" LOGICAL,
 "chFloat" LOGICAL,
 "chTriangulationCurr" SMALLINT,
 "chTriangulationRate" DOUBLE,
 "chDescription" LSTRING(12),
 "chSymbolScreen" LSTRING(4),
 "chSymbolPrint" LSTRING(4),
 "chUser" LSTRING(11),
 "Spare" CHAR(150) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "IdxCurrDateTime" USING 1  ON "CurrencyHistory" ( "chCurrNumber", "IdxDateChanged", "IdxTimeChanged" );
CREATE INDEX "IdxDateTimeCurr" USING 0  ON "CurrencyHistory" ( "IdxDateChanged", "IdxTimeChanged", "chCurrNumber" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
