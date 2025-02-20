-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "SystemSetup" USING 'misc\system~1.dat' DCOMPRESS PAGESIZE=1024 (
 "sysID" INTEGER,
 "sysName" LSTRING(31),
 "sysDescription" LSTRING(255),
 "sysDescription255" CHAR(1),
 "sysValue" LSTRING(255),
 "sysValue255" CHAR(1),
 "sysType" LSTRING(31),
 "spare" CHAR(255),
 "spare2" CHAR(67) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
