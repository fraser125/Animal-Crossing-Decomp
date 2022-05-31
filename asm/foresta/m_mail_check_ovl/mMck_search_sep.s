lbl_8050F01C:
/* 8050F01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050F020  7C 08 02 A6 */	mflr r0
/* 8050F024  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050F02C  7C 9F 23 78 */	mr r31, r4
/* 8050F030  93 C1 00 08 */	stw r30, 8(r1)
/* 8050F034  7C 7E 1B 78 */	mr r30, r3
/* 8050F038  48 00 00 28 */	b lbl_8050F060
lbl_8050F03C:
/* 8050F03C  88 7E 00 00 */	lbz r3, 0(r30)
/* 8050F040  4B FF FF 79 */	bl mMck_cmp_sep
/* 8050F044  2C 03 00 01 */	cmpwi r3, 1
/* 8050F048  40 82 00 14 */	bne lbl_8050F05C
/* 8050F04C  88 7E 00 01 */	lbz r3, 1(r30)
/* 8050F050  4B FF FF 69 */	bl mMck_cmp_sep
/* 8050F054  2C 03 00 00 */	cmpwi r3, 0
/* 8050F058  41 82 00 14 */	beq lbl_8050F06C
lbl_8050F05C:
/* 8050F05C  3B DE 00 01 */	addi r30, r30, 1
lbl_8050F060:
/* 8050F060  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8050F064  3B FF FF FF */	addi r31, r31, -1
/* 8050F068  40 82 FF D4 */	bne lbl_8050F03C
lbl_8050F06C:
/* 8050F06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050F070  7F C3 F3 78 */	mr r3, r30
/* 8050F074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050F078  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050F07C  7C 08 03 A6 */	mtlr r0
/* 8050F080  38 21 00 10 */	addi r1, r1, 0x10
/* 8050F084  4E 80 00 20 */	blr 
