lbl_805A09DC:
/* 805A09DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A09E0  7C 08 02 A6 */	mflr r0
/* 805A09E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A09E8  39 61 00 40 */	addi r11, r1, 0x40
/* 805A09EC  4B AF A4 E9 */	bl func_8009AED4
/* 805A09F0  7C 7D 1B 78 */	mr r29, r3
/* 805A09F4  7C 9E 23 78 */	mr r30, r4
/* 805A09F8  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 805A09FC  38 61 00 0C */	addi r3, r1, 0xc
/* 805A0A00  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805A0A04  38 81 00 08 */	addi r4, r1, 8
/* 805A0A08  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805A0A0C  3B E0 00 00 */	li r31, 0
/* 805A0A10  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 805A0A14  90 01 00 20 */	stw r0, 0x20(r1)
/* 805A0A18  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805A0A1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A0A20  4B E0 4D 41 */	bl mFI_Wpos2BlockNum
/* 805A0A24  2C 03 00 01 */	cmpwi r3, 1
/* 805A0A28  40 82 00 60 */	bne lbl_805A0A88
/* 805A0A2C  80 01 00 08 */	lwz r0, 8(r1)
/* 805A0A30  2C 00 00 06 */	cmpwi r0, 6
/* 805A0A34  40 80 00 54 */	bge lbl_805A0A88
/* 805A0A38  80 9E 20 90 */	lwz r4, 0x2090(r30)
/* 805A0A3C  38 60 00 64 */	li r3, 0x64
/* 805A0A40  7C 04 1B 96 */	divwu r0, r4, r3
/* 805A0A44  7C 00 19 D6 */	mullw r0, r0, r3
/* 805A0A48  7C 00 20 50 */	subf r0, r0, r4
/* 805A0A4C  28 00 00 14 */	cmplwi r0, 0x14
/* 805A0A50  40 80 00 38 */	bge lbl_805A0A88
/* 805A0A54  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 805A0A58  38 61 00 10 */	addi r3, r1, 0x10
/* 805A0A5C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805A0A60  38 80 00 00 */	li r4, 0
/* 805A0A64  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805A0A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0A6C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805A0A70  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A0A74  4B DE 86 39 */	bl mCoBG_Wpos2Attribute
/* 805A0A78  4B DF 38 85 */	bl mCoBG_CheckWaterAttribute_OutOfSea
/* 805A0A7C  2C 03 00 01 */	cmpwi r3, 1
/* 805A0A80  40 82 00 08 */	bne lbl_805A0A88
/* 805A0A84  3B E0 00 01 */	li r31, 1
lbl_805A0A88:
/* 805A0A88  7F E3 FB 78 */	mr r3, r31
/* 805A0A8C  39 61 00 40 */	addi r11, r1, 0x40
/* 805A0A90  4B AF A4 91 */	bl func_8009AF20
/* 805A0A94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A0A98  7C 08 03 A6 */	mtlr r0
/* 805A0A9C  38 21 00 40 */	addi r1, r1, 0x40
/* 805A0AA0  4E 80 00 20 */	blr 
