-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "CustomFields" USING 'misc\customfields.dat' DCOMPRESS PAGESIZE=2048 (
 "cfFieldId" INTEGER,
 "cfStopChar" CHAR(1),
 "cfSupportsEnablement" LOGICAL,
 "cfEnabled" LOGICAL,
 "cfCaption" LSTRING(31),
 "cfDescription" LSTRING(255),
 "cfSpare" CHAR(101) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
