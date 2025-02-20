-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "QuantityDiscounts" USING 'misc\QtyBreak.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "qdIdxFolio" INTEGER,
 "qdAcCode" LSTRING(7),
 "IdxAcCode" CHAR(6),
 "IdxStockFolio" INTEGER,
 "qdCurrency" UTINYINT,
 "qdDateEffectiveFrom" LSTRING(9),
 "qdIdxDateFrom" CHAR(8),
 "qdDateEffectiveTo" LSTRING(9),
 "qdIdxDateTo" CHAR(8),
 "qdQtyToString" LSTRING(17),
 "qdIdxQtyToString" CHAR(16),
 "qdQtyTo" DOUBLE,
 "qdQtyFrom" DOUBLE,
 "qdBreakType" UTINYINT,
 "qdUsePriceBand" CHAR(1),
 "qdSalesPrice" DOUBLE,
 "qdDiscPerc" DOUBLE,
 "qdDiscAmt" DOUBLE,
 "qdMarkupMargin" DOUBLE,
 "qdUseEffectiveDates" LOGICAL,
 "qdSpare1" CHAR(200),
 "qdSpare2" CHAR(56) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "qdAccStkIdx" USING 0  ON "QuantityDiscounts" ( "IdxAcCode", "IdxStockFolio", "qdCurrency", "qdIdxDateFrom", "qdIdxDateTo", "qdIdxQtyToString" );
CREATE INDEX "qdStkQtyToIdx" USING 1  ON "QuantityDiscounts" ( "IdxStockFolio", "qdIdxQtyToString" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
