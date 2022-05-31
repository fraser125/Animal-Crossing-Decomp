lbl_8042D030:
/* 8042D030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D034  7C 08 02 A6 */	mflr r0
/* 8042D038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D03C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D040  7C 9F 23 78 */	mr r31, r4
/* 8042D044  93 C1 00 08 */	stw r30, 8(r1)
/* 8042D048  7C 7E 1B 78 */	mr r30, r3
/* 8042D04C  4B FF EF 5D */	bl aLS_GetNiceStatus
/* 8042D050  2C 03 00 01 */	cmpwi r3, 1
/* 8042D054  41 82 00 30 */	beq lbl_8042D084
/* 8042D058  40 80 00 44 */	bge lbl_8042D09C
/* 8042D05C  2C 03 00 00 */	cmpwi r3, 0
/* 8042D060  40 80 00 08 */	bge lbl_8042D068
/* 8042D064  48 00 00 38 */	b lbl_8042D09C
lbl_8042D068:
/* 8042D068  A8 1E 01 84 */	lha r0, 0x184(r30)
/* 8042D06C  2C 00 00 01 */	cmpwi r0, 1
/* 8042D070  40 82 00 2C */	bne lbl_8042D09C
/* 8042D074  7F C3 F3 78 */	mr r3, r30
/* 8042D078  7F E4 FB 78 */	mr r4, r31
/* 8042D07C  4B FF EF 6D */	bl aLS_RequestPoleToStop
/* 8042D080  48 00 00 1C */	b lbl_8042D09C
lbl_8042D084:
/* 8042D084  A8 1E 01 84 */	lha r0, 0x184(r30)
/* 8042D088  2C 00 00 00 */	cmpwi r0, 0
/* 8042D08C  40 82 00 10 */	bne lbl_8042D09C
/* 8042D090  7F C3 F3 78 */	mr r3, r30
/* 8042D094  7F E4 FB 78 */	mr r4, r31
/* 8042D098  4B FF F0 01 */	bl aLS_RequestSwitchON
lbl_8042D09C:
/* 8042D09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D0A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042D0A8  7C 08 03 A6 */	mtlr r0
/* 8042D0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D0B0  4E 80 00 20 */	blr 
