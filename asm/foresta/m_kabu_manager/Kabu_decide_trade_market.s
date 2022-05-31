lbl_803B5C44:
/* 803B5C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5C48  7C 08 02 A6 */	mflr r0
/* 803B5C4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B5C50  3C 60 80 65 */	lis r3, next_trade_market@ha /* 0x80655C60@ha */
/* 803B5C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5C58  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B5C5C  38 63 5C 60 */	addi r3, r3, next_trade_market@l /* 0x80655C60@l */
/* 803B5C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B5C64  3F E4 00 02 */	addis r31, r4, 2
/* 803B5C68  93 C1 00 08 */	stw r30, 8(r1)
/* 803B5C6C  A0 1F 04 8E */	lhz r0, 0x48e(r31)
/* 803B5C70  54 00 10 3A */	slwi r0, r0, 2
/* 803B5C74  7F C3 00 2E */	lwzx r30, r3, r0
/* 803B5C78  4B CA 70 7D */	bl fqrand
/* 803B5C7C  38 00 00 02 */	li r0, 2
/* 803B5C80  38 60 00 00 */	li r3, 0
/* 803B5C84  7C 09 03 A6 */	mtctr r0
lbl_803B5C88:
/* 803B5C88  C0 1E 00 00 */	lfs f0, 0(r30)
/* 803B5C8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B5C90  41 80 00 14 */	blt lbl_803B5CA4
/* 803B5C94  EC 21 00 28 */	fsubs f1, f1, f0
/* 803B5C98  3B DE 00 04 */	addi r30, r30, 4
/* 803B5C9C  38 63 00 01 */	addi r3, r3, 1
/* 803B5CA0  42 00 FF E8 */	bdnz lbl_803B5C88
lbl_803B5CA4:
/* 803B5CA4  2C 03 00 00 */	cmpwi r3, 0
/* 803B5CA8  41 80 00 0C */	blt lbl_803B5CB4
/* 803B5CAC  2C 03 00 03 */	cmpwi r3, 3
/* 803B5CB0  41 80 00 08 */	blt lbl_803B5CB8
lbl_803B5CB4:
/* 803B5CB4  38 60 00 00 */	li r3, 0
lbl_803B5CB8:
/* 803B5CB8  B0 7F 04 8E */	sth r3, 0x48e(r31)
/* 803B5CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B5CC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B5CC8  7C 08 03 A6 */	mtlr r0
/* 803B5CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5CD0  4E 80 00 20 */	blr 
