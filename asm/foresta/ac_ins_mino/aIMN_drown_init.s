lbl_8059EE70:
/* 8059EE70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059EE74  7C 08 02 A6 */	mflr r0
/* 8059EE78  38 A0 03 A8 */	li r5, 0x3a8
/* 8059EE7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059EE80  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8059EE84  7C 7F 1B 78 */	mr r31, r3
/* 8059EE88  3C 60 80 6C */	lis r3, lit_644@ha /* 0x806C3578@ha */
/* 8059EE8C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8059EE90  38 03 35 78 */	addi r0, r3, lit_644@l /* 0x806C3578@l */
/* 8059EE94  7C 9E 23 78 */	mr r30, r4
/* 8059EE98  38 61 00 14 */	addi r3, r1, 0x14
/* 8059EE9C  81 1F 00 28 */	lwz r8, 0x28(r31)
/* 8059EEA0  7C 04 03 78 */	mr r4, r0
/* 8059EEA4  80 FF 00 2C */	lwz r7, 0x2c(r31)
/* 8059EEA8  80 DF 00 30 */	lwz r6, 0x30(r31)
/* 8059EEAC  91 01 00 20 */	stw r8, 0x20(r1)
/* 8059EEB0  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8059EEB4  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8059EEB8  91 01 00 14 */	stw r8, 0x14(r1)
/* 8059EEBC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8059EEC0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8059EEC4  4B DF 50 F5 */	bl mCoBG_GetWaterHeight_File
/* 8059EEC8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8059EECC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8059EED0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059EED4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8059EED8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8059EEDC  3C 63 00 02 */	addis r3, r3, 2
/* 8059EEE0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8059EEE4  7F C7 F3 78 */	mr r7, r30
/* 8059EEE8  90 81 00 08 */	stw r4, 8(r1)
/* 8059EEEC  38 81 00 08 */	addi r4, r1, 8
/* 8059EEF0  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8059EEF4  38 60 00 46 */	li r3, 0x46
/* 8059EEF8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8059EEFC  38 A0 00 01 */	li r5, 1
/* 8059EF00  39 00 00 00 */	li r8, 0
/* 8059EF04  39 20 00 04 */	li r9, 4
/* 8059EF08  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059EF0C  39 40 00 00 */	li r10, 0
/* 8059EF10  81 86 00 00 */	lwz r12, 0(r6)
/* 8059EF14  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 8059EF18  7D 89 03 A6 */	mtctr r12
/* 8059EF1C  4E 80 04 21 */	bctrl 
/* 8059EF20  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059EF24  38 60 04 38 */	li r3, 0x438
/* 8059EF28  48 08 F0 81 */	bl sAdo_OngenTrgStart
/* 8059EF2C  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059EF30  38 80 00 01 */	li r4, 1
/* 8059EF34  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 8059EF38  38 00 00 00 */	li r0, 0
/* 8059EF3C  98 7F 02 1E */	stb r3, 0x21e(r31)
/* 8059EF40  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059EF44  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 8059EF48  98 7F 02 1E */	stb r3, 0x21e(r31)
/* 8059EF4C  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8059EF50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8059EF54  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8059EF58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059EF5C  7C 08 03 A6 */	mtlr r0
/* 8059EF60  38 21 00 40 */	addi r1, r1, 0x40
/* 8059EF64  4E 80 00 20 */	blr 
