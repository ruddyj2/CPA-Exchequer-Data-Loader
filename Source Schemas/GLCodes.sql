-- Database: EXCHCORECPA400 Metadata version: 1 Exported: 19-Feb-2025
-- Begin Tables
SET LEGACYTYPESALLOWED = ON;
-- Begin Multi-Line Statement
SET TRUENULLCREATE = OFF;CREATE TABLE "GLCodes" USING 'TRANS\NOMINAL.DAT' PAGESIZE=1024 LINKDUP=2 (
 "glCode" INTEGER,
 "idxGLCode" INTEGER /* Column GLCodes.idxGLCode has the same offset as another column that is not type BIT */,
 "glName" LSTRING(41),
 "glIdxName" CHAR(40),
 "glParent" INTEGER,
 "glType" CHAR(1),
 "glPage" LOGICAL,
 "glSubTotal" LOGICAL,
 "glTotal" LOGICAL,
 "glCarryFwd" INTEGER,
 "glRevalue" LOGICAL,
 "glIdxAltCode" CHAR(50),
 "glDefCurr" UTINYINT,
 "glForceJobCode" LOGICAL,
 "glInactive" UTINYINT,
 "glClass" UTINYINT,
 "glSpare" CHAR(47),
 "glGLCodeStringLB" CHAR(1),
 "idxGLCodeString" CHAR(20),
 "glSpare2" CHAR(153) );SET TRUENULLCREATE = ON;
-- End Multi-Line Statement
CREATE INDEX "glAltIdx" USING 3  ON "GLCodes" ( "glIdxAltCode" );
CREATE UNIQUE INDEX "glCodeIdx" USING 0  ON "GLCodes" ( "idxGLCode" );
CREATE UNIQUE INDEX "glCodeStringIdx" USING 4  ON "GLCodes" ( "idxGLCodeString" );
CREATE INDEX "glNameIdx" USING 1  ON "GLCodes" ( "glIdxName" );
CREATE INDEX "glParentIdx" USING 2  ON "GLCodes" ( "glParent", "idxGLCode" );
SET LEGACYTYPESALLOWED = OFF;
-- End Tables
