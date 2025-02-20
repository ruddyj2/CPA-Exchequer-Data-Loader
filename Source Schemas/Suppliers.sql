-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Suppliers" USING 'Cust\CustSupp.Dat' DCOMPRESS PAGESIZE=4096 LINKDUP=9 (
 "idxAcCode" CHAR(6),
 "suIdxAcCode" CHAR(10) /* Column Suppliers.suIdxAcCode has the same offset as another column that is not type BIT */,
 "idxAcType" CHAR(1),
 "suType" CHAR(1) /* Column Suppliers.suType has the same offset as another column that is not type BIT */,
 "suCompany" LSTRING(46),
 "suIdxCompany" CHAR(45),
 "suArea" LSTRING(5),
 "suAccType" LSTRING(5),
 "suStateTo" CHAR(6),
 "suVatRegNo" LSTRING(31),
 "suIdxVATRegNo" CHAR(5),
 "suAddr1" LSTRING(31),
 "suAddr2" LSTRING(31),
 "suAddr3" LSTRING(31),
 "suAddr4" LSTRING(31),
 "suAddr5" LSTRING(31),
 "suDespAddr" LOGICAL,
 "suDelAddr1" LSTRING(31),
 "suDelAddr2" LSTRING(31),
 "suDelAddr3" LSTRING(31),
 "suDelAddr4" LSTRING(31),
 "suDelAddr5" LSTRING(31),
 "suContact" LSTRING(26),
 "suPhone" LSTRING(31),
 "suIdxPhone" CHAR(30),
 "suFax" LSTRING(31),
 "suTheirAcc" LSTRING(11),
 "suIdxTheirAcc" CHAR(10),
 "suOwnTerms" LOGICAL,
 "suTradeTerm1" LSTRING(81),
 "suTradeTerm2" LSTRING(81),
 "suCurrency" UTINYINT,
 "suVATCode" CHAR(1),
 "suPayTerms" SMALLINT,
 "suCredLim_1" SMALLINT,
 "suCredLim_2" INTEGER,
 "suDiscount_1" SMALLINT,
 "suDiscount_2" INTEGER,
 "suCreditStatus" SMALLINT,
 "suCostCentre" CHAR(3),
 "suDiscBand" CHAR(1),
 "suSettleDays" SMALLINT,
 "suBalance_1" SMALLINT,
 "suBalance_2" INTEGER,
 "suDepartment" CHAR(3),
 "suInEC" LOGICAL,
 "suStatement" LOGICAL,
 "suSalesGL" INTEGER,
 "suLocation" CHAR(3),
 "suAccStatus" UTINYINT,
 "suPayType" CHAR(1),
 "suBankSort_Old" LSTRING(16),
 "suBankAccount_Old" LSTRING(21),
 "suBankRef" LSTRING(29),
 "suMobile" LSTRING(31),
 "suCOSGL" INTEGER,
 "suCreditGL" INTEGER,
 "suLastUpdate" LSTRING(9),
 "suUser1" LSTRING(31),
 "suUser2" LSTRING(31),
 "suInvoiceTo" CHAR(6),
 "suIdxInvoiceTo" CHAR(10) /* Column Suppliers.suIdxInvoiceTo has the same offset as another column that is not type BIT */,
 "suAutoWOff" LOGICAL,
 "suFormSet" UTINYINT,
 "suBookOrderVal" DOUBLE,
 "suDirDebMode" UTINYINT,
 "suSettleDisc" DOUBLE,
 "suIdxPostCode" CHAR(20),
 "suIdxAltCode" CHAR(20),
 "suUser3" LSTRING(31),
 "suUser4" LSTRING(31),
 "suTimeChange" LSTRING(7),
 "suIdxEmailAddr" CHAR(100),
 "suHeadOffice" UTINYINT,
 "suDefaultTagNo" UTINYINT,
 "suUser5" LSTRING(31),
 "suUser6" LSTRING(31),
 "suUser7" LSTRING(31),
 "suUser8" LSTRING(31),
 "suUser9" LSTRING(31),
 "suUser10" LSTRING(31),
 "suEncryptedSortCode" LSTRING(23),
 "suEncryptedBankAccN" LSTRING(55),
 "suEncryptedMandateI" LSTRING(55),
 "suMandateId" LSTRING(9),
 "suDeliveryPostCode" LSTRING(21),
 "IdxSubType" CHAR(1),
 "suLongAcCode" LSTRING(31),
 "suIdxLongACCode" CHAR(30),
 "suSpareOP" CHAR(5),
 "suCountry" LSTRING(3),
 "suDeliveryCountry" LSTRING(3),
 "suPPDMode" UTINYINT,
 "suSpareAnon" CHAR(23),
 "suApplyPVA" LOGICAL,
 "suEORINumber" LSTRING(21),
 "suNITrader" LOGICAL,
 "suSpare1" CHAR(254),
 "suSpare2" CHAR(16) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "cuTheirCodeIdx" USING 9  ON "Suppliers" ( "suIdxTheirAcc" );
CREATE INDEX "suAccTypeAltIdx" USING 7  ON "Suppliers" ( "idxAcType", "suIdxAltCode" );
CREATE UNIQUE INDEX "suAccTypeIdx" USING 5  ON "Suppliers" ( "idxAcType", "suIdxAcCode" );
CREATE INDEX "suAccTypeNameIdx" USING 6  ON "Suppliers" ( "idxAcType", "suIdxCompany" );
CREATE INDEX "suAltCodeIdx" USING 4  ON "Suppliers" ( "suIdxAltCode" );
CREATE UNIQUE INDEX "suCodeIdx" USING 0  ON "Suppliers" ( "suIdxAcCode" );
CREATE INDEX "suCompanyIdx" USING 1  ON "Suppliers" ( "suIdxCompany" );
CREATE INDEX "suEmailIdx" USING 11  ON "Suppliers" ( "idxAcType", "suIdxEmailAddr" );
CREATE INDEX "suInvoiceToIdx" USING 10  ON "Suppliers" ( "suIdxInvoiceTo" );
CREATE INDEX "suPhoneIdx" USING 3  ON "Suppliers" ( "suIdxPhone" );
CREATE INDEX "suPostCodeIdx" USING 8  ON "Suppliers" ( "suIdxPostCode" );
CREATE UNIQUE INDEX "suSubTypeAcCodeIdx" USING 12  ON "Suppliers" ( "IdxSubType", "suIdxAcCode" );
CREATE INDEX "suSubTypeAltCodeIdx" USING 15  ON "Suppliers" ( "IdxSubType", "suIdxAltCode" );
CREATE INDEX "suSubTypeCompanyIdx" USING 14  ON "Suppliers" ( "IdxSubType", "suIdxCompany" );
CREATE INDEX "suSubTypeLongCodeIdx" USING 13  ON "Suppliers" ( "IdxSubType", "suIdxLongACCode" );
CREATE UNIQUE INDEX "suVATCodeIdx" USING 2  ON "Suppliers" ( "idxAcType", "suIdxVATRegNo", "suIdxAcCode" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
