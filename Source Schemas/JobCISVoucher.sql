-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "JobCISVoucher" USING 'jobs\jobdet.dat' DCOMPRESS PAGESIZE=2048 LINKDUP=7 (
 "cvIdxRecSub" CHAR(2),
 "cvRecType" CHAR(1) /* Column JobCISVoucher.cvRecType has the same offset as another column that is not type BIT */,
 "cvSubType" CHAR(1),
 "cvSpareEDLB" UTINYINT,
 "cvEmployee" CHAR(6),
 "cvIdxEmplDate" CHAR(21) /* Column JobCISVoucher.cvIdxEmplDate has the same offset as another column that is not type BIT */,
 "cvSpare1" CHAR(3),
 "cvSpareDETLB" UTINYINT,
 "cvIdxDateEmplType" CHAR(20),
 "cvDate" CHAR(8) /* Column JobCISVoucher.cvDate has the same offset as another column that is not type BIT */,
 "cvSpareVNLB" UTINYINT,
 "cvIdxNumber" CHAR(26),
 "cvTransaction" LSTRING(11),
 "cvSpareDSTLB" UTINYINT,
 "cvIdxDateSuppType" CHAR(21),
 "cvSpareFNLB" UTINYINT,
 "cvIdxFolioNINo" CHAR(22),
 "cvFolio" INTEGER,
 "cvNISerialNo" LSTRING(12),
 "cvSpareSDLB" UTINYINT,
 "cvIdxSuppDate" CHAR(19),
 "cvSupplier" CHAR(6) /* Column JobCISVoucher.cvSupplier has the same offset as another column that is not type BIT */,
 "cvSpareCNLB" UTINYINT,
 "cvIdxCertificateNo" CHAR(14),
 "cvIdxSpare" CHAR(3),
 "cvSpare2" CHAR(5),
 "cvGrossTotal" DOUBLE,
 "cvManualTax" LOGICAL,
 "cvAutoTotalTax" DOUBLE,
 "cvTaxableTotal" DOUBLE,
 "cvType" UTINYINT,
 "cvCurrency" UTINYINT,
 "cvSpare3" CHAR(2),
 "cvNoteLineCount" INTEGER,
 "cvAddress1" LSTRING(31),
 "cvAddress2" LSTRING(31),
 "cvAddress3" LSTRING(31),
 "cvAddress4" LSTRING(31),
 "cvAddress5" LSTRING(31),
 "cvBehalf" LSTRING(81),
 "cvCorrection" LOGICAL,
 "cvTaxDue" DOUBLE,
 "cvSpare4" CHAR(33),
 "cvSpare5" CHAR(255),
 "cvSpare6" CHAR(98) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "jvAnaIdx" USING 1  ON "JobCISVoucher" ( "cvIdxRecSub", "cvIdxDateEmplType", "cvIdxSpare" );
CREATE INDEX "jvCodeIdx" USING 0  ON "JobCISVoucher" ( "cvIdxRecSub", "cvIdxEmplDate" );
CREATE INDEX "jvEmpIdx" USING 3  ON "JobCISVoucher" ( "cvIdxRecSub", "cvIdxDateSuppType" );
CREATE INDEX "jvHedIdx" USING 6  ON "JobCISVoucher" ( "cvIdxRecSub", "cvIdxCertificateNo", "cvIdxSpare" );
CREATE INDEX "jvLookIdx" USING 5  ON "JobCISVoucher" ( "cvIdxRecSub", "cvIdxSuppDate" );
CREATE INDEX "jvPostedIdx" USING 4  ON "JobCISVoucher" ( "cvIdxRecSub", "cvIdxFolioNINo" );
CREATE INDEX "jvStockIdx" USING 2  ON "JobCISVoucher" ( "cvIdxRecSub", "cvIdxNumber", "cvIdxSpare" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
