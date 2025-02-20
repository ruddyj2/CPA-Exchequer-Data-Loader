-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Customers" USING 'Cust\CustSupp.Dat' DCOMPRESS PAGESIZE=4096 LINKDUP=9 (
 "idxAcCode" CHAR(6),
 "cuIdxAcCode" CHAR(10) /* Column Customers.cuIdxAcCode has the same offset as another column that is not type BIT */,
 "cuType" CHAR(1),
 "idxAcType" CHAR(1) /* Column Customers.idxAcType has the same offset as another column that is not type BIT */,
 "cuCompany" LSTRING(46),
 "cuIdxCompany" CHAR(45),
 "cuArea" LSTRING(5),
 "cuAccType" LSTRING(5),
 "cuStateTo" CHAR(6),
 "cuVATRegNo" LSTRING(31),
 "cuIdxVATRegNo" CHAR(5),
 "cuAddr1" LSTRING(31),
 "cuAddr2" LSTRING(31),
 "cuAddr3" LSTRING(31),
 "cuAddr4" LSTRING(31),
 "cuAddr5" LSTRING(31),
 "cuDespAddr" LOGICAL,
 "cuDelAddr1" LSTRING(31),
 "cuDelAddr2" LSTRING(31),
 "cuDelAddr3" LSTRING(31),
 "cuDelAddr4" LSTRING(31),
 "cuDelAddr5" LSTRING(31),
 "cuContact" LSTRING(26),
 "cuPhone" LSTRING(31),
 "cuIdxPhone" CHAR(30),
 "cuFax" LSTRING(31),
 "cuTheirAcc" LSTRING(11),
 "cuIdxTheirAcc" CHAR(10),
 "cuOwnTerms" LOGICAL,
 "cuTradeTerm1" LSTRING(81),
 "cuTradeTerm2" LSTRING(81),
 "cuCurrency" UTINYINT,
 "cuVATCode" CHAR(1),
 "cuPayTerms" SMALLINT,
 "cuCredLim_1" SMALLINT,
 "cuCredLim_2" INTEGER,
 "cuDiscount_1" SMALLINT,
 "cuDiscount_2" INTEGER,
 "cuCreditStatus" SMALLINT,
 "cuCostCentre" CHAR(3),
 "cuDiscBand" CHAR(1),
 "cuSettleDays" SMALLINT,
 "cuDepartment" CHAR(3),
 "cuInEC" LOGICAL,
 "cuStatement" LOGICAL,
 "cuSalesGL" INTEGER,
 "cuLocation" CHAR(3),
 "cuAccStatus" UTINYINT,
 "cuPayType" CHAR(1),
 "cuBankSort_Old" LSTRING(16),
 "cuBankAccount_Old" LSTRING(21),
 "cuBankRef" LSTRING(29),
 "cuMobile" LSTRING(31),
 "cuCOSGL" INTEGER,
 "cuDebtGL" INTEGER,
 "cuLastUpdate" LSTRING(9),
 "cuUser1" LSTRING(31),
 "cuUser2" LSTRING(31),
 "cuIdxInvoiceTo" CHAR(10),
 "cuInvoiceTo" CHAR(6) /* Column Customers.cuInvoiceTo has the same offset as another column that is not type BIT */,
 "cuAutoWOff" LOGICAL,
 "cuFormSet" UTINYINT,
 "cuBookOrderVal" DOUBLE,
 "cuDirDebMode" UTINYINT,
 "cuCreditCardStart" LSTRING(9),
 "cuCreditCardEnd" LSTRING(9),
 "cuCreditCardName" LSTRING(51),
 "cuCreditCardNo" LSTRING(31),
 "cuCreditCardRef" LSTRING(5),
 "cuSettleDisc" DOUBLE,
 "cuIdxPostCode" CHAR(20),
 "cuIdxAltCode" CHAR(20),
 "cuUser3" LSTRING(31),
 "cuUser4" LSTRING(31),
 "cuWebCatalogs" LSTRING(21),
 "cuTimeChange" LSTRING(7),
 "cuIdxEmailAddr" CHAR(100),
 "cuHeadOffice" UTINYINT,
 "cuDefaultTagNo" UTINYINT,
 "cuUser5" LSTRING(31),
 "cuUser6" LSTRING(31),
 "cuUser7" LSTRING(31),
 "cuUser8" LSTRING(31),
 "cuUser9" LSTRING(31),
 "cuUser10" LSTRING(31),
 "cuEncryptedSortCode" LSTRING(23),
 "cuEncryptedBankAccNo" LSTRING(55),
 "cuEncryptedMandateId" LSTRING(55),
 "cuMandateDate" LSTRING(9),
 "cuDeliveryPostCode" LSTRING(21),
 "IdxSubType" CHAR(1),
 "cuLongACCode" LSTRING(31),
 "cuIdxLongAcCode" CHAR(30),
 "cuAllowOrderPayments" LOGICAL,
 "cuOrderPaymentsGLCod" INTEGER,
 "cuCountry" LSTRING(3),
 "cuDeliveryCountry" LSTRING(3),
 "cuPPDMode" UTINYINT,
 "cuDefaultToQR" LOGICAL,
 "cuSpareAnon" CHAR(21),
 "cuRCEndUser" LOGICAL,
 "cuEORINumber" LSTRING(21),
 "cuNITrader" LOGICAL,
 "cuSpare1" CHAR(254),
 "cuSpare2" CHAR(16) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "cuAccTypeAltIdx" USING 7  ON "Customers" ( "idxAcType", "cuIdxAltCode" );
CREATE INDEX "cuAccTypeIdx" USING 5  ON "Customers" ( "idxAcType", "cuIdxAcCode" );
CREATE INDEX "cuAccTypeNameIdx" USING 6  ON "Customers" ( "idxAcType", "cuIdxCompany" );
CREATE INDEX "cuAltCodeIdx" USING 4  ON "Customers" ( "cuIdxAltCode" );
CREATE UNIQUE INDEX "cuCodeIdx" USING 0  ON "Customers" ( "cuIdxAcCode" );
CREATE INDEX "cuCompanyIdx" USING 1  ON "Customers" ( "cuIdxCompany" );
CREATE INDEX "cuEmailIdx" USING 11  ON "Customers" ( "idxAcType", "cuIdxEmailAddr" );
CREATE INDEX "cuInvoiceToIdx" USING 10  ON "Customers" ( "cuIdxInvoiceTo" );
CREATE INDEX "cuPhoneIdx" USING 3  ON "Customers" ( "cuIdxPhone" );
CREATE INDEX "cuPostCodeIdx" USING 8  ON "Customers" ( "cuIdxPostCode" );
CREATE UNIQUE INDEX "cuSubTypeAcCodeIdx" USING 12  ON "Customers" ( "IdxSubType", "cuIdxAcCode" );
CREATE INDEX "cuSubTypeAltCodeIdx" USING 15  ON "Customers" ( "IdxSubType", "cuIdxAltCode" );
CREATE INDEX "cuSubTypeCompanyIdx" USING 14  ON "Customers" ( "IdxSubType", "cuIdxCompany" );
CREATE INDEX "cuSubTypeLongCodeIdx" USING 13  ON "Customers" ( "IdxSubType", "cuIdxLongAcCode" );
CREATE INDEX "cuTheirCodeIdx" USING 9  ON "Customers" ( "cuIdxTheirAcc" );
CREATE UNIQUE INDEX "cuVATCodeIdx" USING 2  ON "Customers" ( "idxAcType", "cuIdxVATRegNo", "cuIdxAcCode" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
