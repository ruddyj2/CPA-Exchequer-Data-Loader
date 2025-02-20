-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "Notes" USING 'misc\exchqchk.dat' DCOMPRESS PAGESIZE=1024 LINKDUP=2 (
 "ntIdxRecSub" CHAR(2),
 "ntRecType" CHAR(1) /* Column Notes.ntRecType has the same offset as another column that is not type BIT */,
 "ntSubType" CHAR(1),
 "ntIdxNoteKey" CHAR(12),
 "ntDate" LSTRING(9),
 "ntAlarm" LSTRING(9),
 "ntIdxSpare" CHAR(11),
 "ntFolio" LSTRING(11),
 "ntInvFolio" INTEGER,
 "ntAcCode" CHAR(6) /* Column Notes.ntAcCode has the same offset as another column that is not type BIT */,
 "ntType" CHAR(1),
 "ntLineNo" INTEGER,
 "ntText" LSTRING(101),
 "ntUser" LSTRING(11),
 "ntShowDate" LOGICAL,
 "ntAlarmDays" SMALLINT,
 "ntAlarmUser" LSTRING(11),
 "ntSpare" CHAR(85) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "ntNoteIdx" USING 0  ON "Notes" ( "ntIdxRecSub", "ntIdxNoteKey" );
CREATE INDEX "ntSpareIdx" USING 1  ON "Notes" ( "ntIdxRecSub", "ntIdxSpare" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
