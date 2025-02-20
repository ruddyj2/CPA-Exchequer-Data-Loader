-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "MultiBins" USING 'stock\mlocstk.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "brIdxRecSub" CHAR(2),
 "brSpare" CHAR(1),
 "brIdxCode1" CHAR(30),
 "brBinCode" CHAR(10) /* Column MultiBins.brBinCode has the same offset as another column that is not type BIT */,
 "brSpare1" CHAR(1),
 "brIdxCode2" CHAR(45),
 "brSpare2" CHAR(1),
 "brIdxCode3" CHAR(31),
 "brInDocRef" LSTRING(11),
 "brOurDocRef" LSTRING(11),
 "brSold" LOGICAL,
 "brInDate" LSTRING(9),
 "brCostPrice" DOUBLE,
 "brCapacity" DOUBLE,
 "brSpare3" CHAR(1),
 "brStockFolio" INTEGER,
 "brOutDate" LSTRING(9),
 "brOutDocLine" INTEGER,
 "brInDocLine" INTEGER,
 "brSpare4" CHAR(1),
 "brQty" DOUBLE,
 "brQtyUsed" DOUBLE,
 "brUsedRecord" LOGICAL,
 "brInLocation" LSTRING(4),
 "brSpare5" CHAR(7),
 "brOutLocation" LSTRING(4),
 "brSpare6" CHAR(7),
 "brOutOrderRef" LSTRING(11),
 "brInOrderRef" LSTRING(11),
 "brInOrderLine" INTEGER,
 "brOutOrderLine" INTEGER,
 "brCostPriceCurrency" UTINYINT,
 "brPickingPriority" LSTRING(11),
 "brSalesPrice" DOUBLE,
 "brCompanyRate_1" SMALLINT,
 "brCompanyRate_2" INTEGER,
 "brDailyRate_1" SMALLINT,
 "brDailyRate_2" INTEGER,
 "brUseORate" UTINYINT,
 "brTriRate" DOUBLE,
 "brTriEuro" UTINYINT,
 "brTriInvert" LOGICAL,
 "brTriFloat" LOGICAL,
 "brTriSpare" CHAR(10),
 "brUseByDate" LSTRING(9),
 "brSalesPriceCurrency" UTINYINT,
 "brUnitOfMeasure" LSTRING(11),
 "brAutoPickMode" UTINYINT,
 "brTagNo" UTINYINT,
 "brReturned" LOGICAL,
 "brSpare7" CHAR(254),
 "brSpare8" CHAR(185),
 "brSpare9" CHAR(255),
 "brSpare10" CHAR(255),
 "brSpare11" CHAR(24) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "brCode1Idx" USING 0  ON "MultiBins" ( "brIdxRecSub", "brIdxCode1" );
CREATE INDEX "brCode2Idx" USING 1  ON "MultiBins" ( "brIdxRecSub", "brIdxCode2" );
CREATE INDEX "brCode3idx" USING 2  ON "MultiBins" ( "brIdxRecSub", "brIdxCode3" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
