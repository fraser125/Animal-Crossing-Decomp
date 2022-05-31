lbl_804CEAB0:
/* 804CEAB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CEAB4  7C 08 02 A6 */	mflr r0
/* 804CEAB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CEABC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804CEAC0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804CEAC4  7C 7E 1B 78 */	mr r30, r3
/* 804CEAC8  4B EB 03 05 */	bl Camera2_getCenterPos_p
/* 804CEACC  80 BE 00 00 */	lwz r5, 0(r30)
/* 804CEAD0  7C 7F 1B 78 */	mr r31, r3
/* 804CEAD4  80 DE 00 04 */	lwz r6, 4(r30)
/* 804CEAD8  38 61 00 14 */	addi r3, r1, 0x14
/* 804CEADC  80 1E 00 08 */	lwz r0, 8(r30)
/* 804CEAE0  38 81 00 10 */	addi r4, r1, 0x10
/* 804CEAE4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804CEAE8  38 A1 00 24 */	addi r5, r1, 0x24
/* 804CEAEC  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804CEAF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804CEAF4  4B ED 6C 6D */	bl mFI_Wpos2BlockNum
/* 804CEAF8  2C 03 00 00 */	cmpwi r3, 0
/* 804CEAFC  41 82 00 5C */	beq lbl_804CEB58
/* 804CEB00  80 DF 00 00 */	lwz r6, 0(r31)
/* 804CEB04  38 61 00 0C */	addi r3, r1, 0xc
/* 804CEB08  80 1F 00 04 */	lwz r0, 4(r31)
/* 804CEB0C  38 81 00 08 */	addi r4, r1, 8
/* 804CEB10  38 A1 00 18 */	addi r5, r1, 0x18
/* 804CEB14  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804CEB18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CEB1C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804CEB20  90 01 00 20 */	stw r0, 0x20(r1)
/* 804CEB24  4B ED 6C 3D */	bl mFI_Wpos2BlockNum
/* 804CEB28  2C 03 00 00 */	cmpwi r3, 0
/* 804CEB2C  41 82 00 2C */	beq lbl_804CEB58
/* 804CEB30  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804CEB34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804CEB38  7C 03 00 00 */	cmpw r3, r0
/* 804CEB3C  40 82 00 1C */	bne lbl_804CEB58
/* 804CEB40  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804CEB44  80 01 00 08 */	lwz r0, 8(r1)
/* 804CEB48  7C 03 00 00 */	cmpw r3, r0
/* 804CEB4C  40 82 00 0C */	bne lbl_804CEB58
/* 804CEB50  38 60 00 01 */	li r3, 1
/* 804CEB54  48 00 00 08 */	b lbl_804CEB5C
lbl_804CEB58:
/* 804CEB58  38 60 00 00 */	li r3, 0
lbl_804CEB5C:
/* 804CEB5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CEB60  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804CEB64  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804CEB68  7C 08 03 A6 */	mtlr r0
/* 804CEB6C  38 21 00 40 */	addi r1, r1, 0x40
/* 804CEB70  4E 80 00 20 */	blr 
