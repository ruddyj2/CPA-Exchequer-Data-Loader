-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Employees" USING 'jobs\jobmisc.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=3 (
 "emIdxRecSub" CHAR(2),
 "emRecType" CHAR(1) /* Column Employees.emRecType has the same offset as another column that is not type BIT */,
 "emSubType" CHAR(1),
 "emCode" CHAR(6),
 "emIdxCode" CHAR(10) /* Column Employees.emIdxCode has the same offset as another column that is not type BIT */,
 "emSurname" LSTRING(21),
 "emIdxSurname" CHAR(20),
 "emSupplier" CHAR(6),
 "emIdxSupplier" CHAR(10) /* Column Employees.emIdxSupplier has the same offset as another column that is not type BIT */,
 "emName" LSTRING(31),
 "emAddress1" LSTRING(31),
 "emAddress2" LSTRING(31),
 "emAddress3" LSTRING(31),
 "emAddress4" LSTRING(31),
 "emAddress5" LSTRING(31),
 "emPhone" LSTRING(21),
 "emFax" LSTRING(21),
 "emMobile" LSTRING(21),
 "emType" UTINYINT,
 "emDepartment" CHAR(3),
 "emCostCentre" CHAR(3),
 "emPayrollNo" LSTRING(11),
 "em714CertNo" LSTRING(31),
 "em714CertExpiry" LSTRING(9),
 "emUseOwnRate" LOGICAL,
 "emUser1" LSTRING(21),
 "emUser2" LSTRING(21),
 "emNoteLineCount" INTEGER,
 "emSelfBilling" LOGICAL,
 "emGroupCertificate" LOGICAL,
 "emCertificateType" UTINYINT,
 "emUser3" LSTRING(21),
 "emUser4" LSTRING(21),
 "emNISerialNo" LSTRING(11),
 "emLabourViaPL" LOGICAL,
 "emUTRCode" LSTRING(11),
 "emVerifyNo" LSTRING(14),
 "emTagged" UTINYINT,
 "emCISSubType" UTINYINT,
 "emEmailAddress" LSTRING(101),
 "emSpare600A" CHAR(200),
 "emSpare600B" CHAR(103) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "emCodeK" USING 0  ON "Employees" ( "emIdxRecSub", "emIdxCode" );
CREATE INDEX "emNameIdx" USING 1  ON "Employees" ( "emIdxRecSub", "emIdxSurname" );
CREATE INDEX "emSuppIdx" USING 2  ON "Employees" ( "emIdxRecSub", "emIdxSupplier" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
