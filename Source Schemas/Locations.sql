-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Locations" USING 'STOCK\MLOCSTK.DAT' DCOMPRESS PAGESIZE=2048 LINKDUP=3 (
 "mlIdxRecSub" CHAR(2),
 "mlSubType_C" CHAR(1),
 "mlCode" LSTRING(4),
 "mlIdxLocCode" CHAR(30),
 "IdxLocCode" CHAR(3) /* Column Locations.IdxLocCode has the same offset as another column that is not type BIT */,
 "mlName" LSTRING(46),
 "mlIdxName" CHAR(45),
 "mlIdxSupp" CHAR(31),
 "mlAddr1" LSTRING(31),
 "mlAddr2" LSTRING(31),
 "mlAddr3" LSTRING(31),
 "mlAddr4" LSTRING(31),
 "mlAddr5" LSTRING(31),
 "mlTel" LSTRING(26),
 "mlFax" LSTRING(26),
 "mlEmail" LSTRING(101),
 "mlModem" LSTRING(26),
 "mlContact" LSTRING(31),
 "mlCurrency" UTINYINT,
 "mlArea" LSTRING(6),
 "mlRep" LSTRING(6),
 "mlTag" LOGICAL,
 "mlSalesGL" INTEGER,
 "mlCOSGL" INTEGER,
 "mlP&LGL" INTEGER,
 "mlBalSheetGL" INTEGER,
 "mlWIPGL" INTEGER,
 "mlDepartment" LSTRING(4),
 "mlCostCentre" LSTRING(4),
 "mlUsePrice" LOGICAL,
 "mlUseGL" LOGICAL,
 "mlUseCCDep" LOGICAL,
 "mlUseSupp" LOGICAL,
 "mlUseBinLoc" LOGICAL,
 "mlNoteLineCount" INTEGER,
 "mlOverrideCostPrice" LOGICAL,
 "mlOverrideROPrice" LOGICAL,
 "mlWOPWIPGL" INTEGER,
 "mlPurchaseReturnGL" INTEGER,
 "mlSalesReturnGL" INTEGER,
 "mlSpare" CHAR(207),
 "mlSpare2" CHAR(255),
 "mlSpare3" CHAR(255),
 "mlSpare4" CHAR(24) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "mlCodeIdx" USING 0  ON "Locations" ( "mlIdxRecSub", "mlIdxLocCode" );
CREATE INDEX "mlNameIdx" USING 1  ON "Locations" ( "mlIdxRecSub", "mlIdxName" );
CREATE INDEX "mlSupplierIdx" USING 2  ON "Locations" ( "mlIdxRecSub", "mlIdxSupp" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
