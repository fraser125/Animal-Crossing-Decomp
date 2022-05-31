lbl_8058BE74:
/* 8058BE74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058BE78  7C 08 02 A6 */	mflr r0
/* 8058BE7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058BE80  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8058BE84  7C 7F 1B 78 */	mr r31, r3
/* 8058BE88  38 60 00 0F */	li r3, 0xf
/* 8058BE8C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8058BE90  7C 9E 23 78 */	mr r30, r4
/* 8058BE94  38 80 00 08 */	li r4, 8
/* 8058BE98  4B E1 1F 35 */	bl mEv_get_save_area
/* 8058BE9C  A0 03 00 02 */	lhz r0, 2(r3)
/* 8058BEA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058BEA4  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8058BEA8  38 A0 00 00 */	li r5, 0
/* 8058BEAC  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 8058BEB0  38 80 00 6C */	li r4, 0x6c
/* 8058BEB4  B0 03 00 02 */	sth r0, 2(r3)
/* 8058BEB8  3C C6 00 02 */	addis r6, r6, 2
/* 8058BEBC  7F E3 FB 78 */	mr r3, r31
/* 8058BEC0  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8058BEC4  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058BEC8  7D 89 03 A6 */	mtctr r12
/* 8058BECC  4E 80 04 21 */	bctrl 
/* 8058BED0  38 00 00 00 */	li r0, 0
/* 8058BED4  3C 60 80 65 */	lis r3, lit_610@ha /* 0x80649BA8@ha */
/* 8058BED8  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 8058BEDC  38 83 9B A8 */	addi r4, r3, lit_610@l /* 0x80649BA8@l */
/* 8058BEE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058BEE4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8058BEE8  C0 1F 08 AC */	lfs f0, 0x8ac(r31)
/* 8058BEEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058BEF0  C0 5F 08 A8 */	lfs f2, 0x8a8(r31)
/* 8058BEF4  3C 63 00 02 */	addis r3, r3, 2
/* 8058BEF8  EC 21 00 2A */	fadds f1, f1, f0
/* 8058BEFC  C0 1F 08 B0 */	lfs f0, 0x8b0(r31)
/* 8058BF00  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8058BF04  7F C7 F3 78 */	mr r7, r30
/* 8058BF08  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8058BF0C  38 81 00 08 */	addi r4, r1, 8
/* 8058BF10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8058BF14  38 60 00 01 */	li r3, 1
/* 8058BF18  81 61 00 14 */	lwz r11, 0x14(r1)
/* 8058BF1C  38 A0 00 01 */	li r5, 1
/* 8058BF20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8058BF24  39 20 00 00 */	li r9, 0
/* 8058BF28  81 01 00 18 */	lwz r8, 0x18(r1)
/* 8058BF2C  39 40 00 03 */	li r10, 3
/* 8058BF30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8058BF34  91 61 00 08 */	stw r11, 8(r1)
/* 8058BF38  91 01 00 0C */	stw r8, 0xc(r1)
/* 8058BF3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058BF40  81 86 00 00 */	lwz r12, 0(r6)
/* 8058BF44  A8 DF 00 DE */	lha r6, 0xde(r31)
/* 8058BF48  A1 1F 00 06 */	lhz r8, 6(r31)
/* 8058BF4C  7D 89 03 A6 */	mtctr r12
/* 8058BF50  4E 80 04 21 */	bctrl 
/* 8058BF54  38 9F 00 28 */	addi r4, r31, 0x28
/* 8058BF58  38 60 10 53 */	li r3, 0x1053
/* 8058BF5C  48 0A 20 4D */	bl sAdo_OngenTrgStart
/* 8058BF60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058BF64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8058BF68  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8058BF6C  7C 08 03 A6 */	mtlr r0
/* 8058BF70  38 21 00 30 */	addi r1, r1, 0x30
/* 8058BF74  4E 80 00 20 */	blr 
