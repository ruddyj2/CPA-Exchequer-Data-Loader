-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "MatchedPayments" USING 'misc\exchqchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "mpRecType" CHAR(1),
 "mpIdxRecSub" CHAR(2) /* Column MatchedPayments.mpIdxRecSub has the same offset as another column that is not type BIT */,
 "mpSubType" CHAR(1),
 "mpOurRef" LSTRING(13),
 "mpIdxDoc" CHAR(12),
 "mpPayRef" LSTRING(11),
 "mpIdxPayRef" CHAR(11),
 "mpSettled_1" SMALLINT,
 "mpSettled_2" INTEGER,
 "mpOwnCur_1" SMALLINT,
 "mpOwnCur_2" INTEGER,
 "mpCurrency" UTINYINT,
 "mpMatchType" CHAR(1),
 "mpAltRef" LSTRING(11),
 "mpReceiptCur" UTINYINT,
 "mpReceiptAmt" DOUBLE,
 "mpSpare" CHAR(213) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "mpDocIdx" USING 0  ON "MatchedPayments" ( "mpIdxRecSub", "mpIdxDoc" );
CREATE INDEX "mpPayIdx" USING 1  ON "MatchedPayments" ( "mpIdxRecSub", "mpIdxPayRef" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
 