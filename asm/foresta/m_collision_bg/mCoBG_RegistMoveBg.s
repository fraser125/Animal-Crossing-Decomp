lbl_8038CDA4:
/* 8038CDA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038CDA8  7C 08 02 A6 */	mflr r0
/* 8038CDAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038CDB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8038CDB4  4B D0 E1 21 */	bl func_8009AED4
/* 8038CDB8  3D 60 81 13 */	lis r11, l_mBgMgr@ha /* 0x811371E8@ha */
/* 8038CDBC  83 A1 00 28 */	lwz r29, 0x28(r1)
/* 8038CDC0  3B EB 71 E8 */	addi r31, r11, l_mBgMgr@l /* 0x811371E8@l */
/* 8038CDC4  81 81 00 2C */	lwz r12, 0x2c(r1)
/* 8038CDC8  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 8038CDCC  2C 00 00 40 */	cmpwi r0, 0x40
/* 8038CDD0  40 80 00 D0 */	bge lbl_8038CEA0
/* 8038CDD4  38 00 00 40 */	li r0, 0x40
/* 8038CDD8  3B C0 00 00 */	li r30, 0
/* 8038CDDC  39 60 00 00 */	li r11, 0
/* 8038CDE0  7C 09 03 A6 */	mtctr r0
lbl_8038CDE4:
/* 8038CDE4  7C 1F 58 2E */	lwzx r0, r31, r11
/* 8038CDE8  28 00 00 00 */	cmplwi r0, 0
/* 8038CDEC  40 82 00 A8 */	bne lbl_8038CE94
/* 8038CDF0  2C 1D 00 06 */	cmpwi r29, 6
/* 8038CDF4  7C 7F 59 2E */	stwx r3, r31, r11
/* 8038CDF8  40 82 00 10 */	bne lbl_8038CE08
/* 8038CDFC  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE00  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8038CE04  48 00 00 1C */	b lbl_8038CE20
lbl_8038CE08:
/* 8038CE08  3C 60 80 65 */	lis r3, mCoBG_mBg_data@ha /* 0x80650C40@ha */
/* 8038CE0C  57 A0 10 3A */	slwi r0, r29, 2
/* 8038CE10  38 E3 0C 40 */	addi r7, r3, mCoBG_mBg_data@l /* 0x80650C40@l */
/* 8038CE14  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE18  7C 07 00 2E */	lwzx r0, r7, r0
/* 8038CE1C  90 03 00 10 */	stw r0, 0x10(r3)
lbl_8038CE20:
/* 8038CE20  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE24  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8038CE28  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE2C  91 43 00 14 */	stw r10, 0x14(r3)
/* 8038CE30  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE34  91 23 00 0C */	stw r9, 0xc(r3)
/* 8038CE38  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE3C  90 83 00 00 */	stw r4, 0(r3)
/* 8038CE40  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE44  90 A3 00 04 */	stw r5, 4(r3)
/* 8038CE48  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE4C  90 C3 00 08 */	stw r6, 8(r3)
/* 8038CE50  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE54  91 83 00 1C */	stw r12, 0x1c(r3)
/* 8038CE58  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE5C  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 8038CE60  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE64  91 03 00 24 */	stw r8, 0x24(r3)
/* 8038CE68  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8038CE6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8038CE70  28 03 00 00 */	cmplwi r3, 0
/* 8038CE74  41 82 00 0C */	beq lbl_8038CE80
/* 8038CE78  38 80 00 28 */	li r4, 0x28
/* 8038CE7C  4B CD 01 ED */	bl bzero
lbl_8038CE80:
/* 8038CE80  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 8038CE84  7F C3 F3 78 */	mr r3, r30
/* 8038CE88  38 04 00 01 */	addi r0, r4, 1
/* 8038CE8C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8038CE90  48 00 00 14 */	b lbl_8038CEA4
lbl_8038CE94:
/* 8038CE94  3B DE 00 01 */	addi r30, r30, 1
/* 8038CE98  39 6B 00 04 */	addi r11, r11, 4
/* 8038CE9C  42 00 FF 48 */	bdnz lbl_8038CDE4
lbl_8038CEA0:
/* 8038CEA0  38 60 FF FF */	li r3, -1
lbl_8038CEA4:
/* 8038CEA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8038CEA8  4B D0 E0 79 */	bl func_8009AF20
/* 8038CEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038CEB0  7C 08 03 A6 */	mtlr r0
/* 8038CEB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038CEB8  4E 80 00 20 */	blr 
