lbl_80514258:
/* 80514258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051425C  7C 08 02 A6 */	mflr r0
/* 80514260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80514264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80514268  7C 7F 1B 78 */	mr r31, r3
/* 8051426C  7C 83 23 78 */	mr r3, r4
/* 80514270  7C A4 2B 78 */	mr r4, r5
/* 80514274  4B FF FD 8D */	bl mAGrw_CheckClearDumpDay
/* 80514278  2C 03 00 01 */	cmpwi r3, 1
/* 8051427C  40 82 00 18 */	bne lbl_80514294
/* 80514280  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80514284  28 00 00 00 */	cmplwi r0, 0
/* 80514288  41 82 00 0C */	beq lbl_80514294
/* 8051428C  7F E3 FB 78 */	mr r3, r31
/* 80514290  4B FF FF 05 */	bl mAGrw_ClearDumpArea
lbl_80514294:
/* 80514294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80514298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051429C  7C 08 03 A6 */	mtlr r0
/* 805142A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805142A4  4E 80 00 20 */	blr 
