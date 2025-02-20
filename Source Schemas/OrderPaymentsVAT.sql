-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "OrderPaymentsVAT" USING 'Trans\opvatpay.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "vpOrderRef" LSTRING(11),
 "IdxOrderRef" CHAR(10),
 "vpReceiptRef" LSTRING(11),
 "IdxReceiptRef" CHAR(10),
 "vpTransRef" LSTRING(11),
 "IdxTransRef" CHAR(10),
 "vpIdxLineOrderNo" INTEGER,
 "vpSORABSLineNo" INTEGER,
 "vpType" UTINYINT,
 "vpCurrency" UTINYINT,
 "vpDescription" LSTRING(61),
 "vpVATCode" CHAR(1),
 "vpGoodsValue" DOUBLE,
 "vpVATValue" DOUBLE,
 "vpUserName" LSTRING(11),
 "vpDateCreated" LSTRING(9),
 "IdxDateCreated" CHAR(8),
 "vpTimeCreated" LSTRING(7),
 "IdxTimeCreated" CHAR(6),
 "vpExclamationChar" CHAR(1),
 "vpSpare" CHAR(255) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "ReceiptRefIdx" USING 0  ON "OrderPaymentsVAT" ( "IdxOrderRef", "IdxReceiptRef", "vpIdxLineOrderNo", "IdxDateCreated", "IdxTimeCreated" );
CREATE INDEX "TransRefIdx" USING 1  ON "OrderPaymentsVAT" ( "IdxOrderRef", "IdxTransRef", "vpIdxLineOrderNo", "IdxDateCreated", "IdxTimeCreated" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
