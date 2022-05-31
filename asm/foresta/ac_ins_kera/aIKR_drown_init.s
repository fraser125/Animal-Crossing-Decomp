lbl_8059DBF4:
/* 8059DBF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059DBF8  7C 08 02 A6 */	mflr r0
/* 8059DBFC  38 A0 02 C8 */	li r5, 0x2c8
/* 8059DC00  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059DC04  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8059DC08  7C 7F 1B 78 */	mr r31, r3
/* 8059DC0C  3C 60 80 6C */	lis r3, lit_575@ha /* 0x806C34F0@ha */
/* 8059DC10  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8059DC14  38 03 34 F0 */	addi r0, r3, lit_575@l /* 0x806C34F0@l */
/* 8059DC18  7C 9E 23 78 */	mr r30, r4
/* 8059DC1C  38 61 00 14 */	addi r3, r1, 0x14
/* 8059DC20  81 1F 00 28 */	lwz r8, 0x28(r31)
/* 8059DC24  7C 04 03 78 */	mr r4, r0
/* 8059DC28  80 FF 00 2C */	lwz r7, 0x2c(r31)
/* 8059DC2C  80 DF 00 30 */	lwz r6, 0x30(r31)
/* 8059DC30  91 01 00 20 */	stw r8, 0x20(r1)
/* 8059DC34  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8059DC38  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8059DC3C  91 01 00 14 */	stw r8, 0x14(r1)
/* 8059DC40  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8059DC44  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8059DC48  4B DF 63 71 */	bl mCoBG_GetWaterHeight_File
/* 8059DC4C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8059DC50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8059DC54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059DC58  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8059DC5C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8059DC60  3C 63 00 02 */	addis r3, r3, 2
/* 8059DC64  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8059DC68  7F C7 F3 78 */	mr r7, r30
/* 8059DC6C  90 81 00 08 */	stw r4, 8(r1)
/* 8059DC70  38 81 00 08 */	addi r4, r1, 8
/* 8059DC74  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8059DC78  38 60 00 46 */	li r3, 0x46
/* 8059DC7C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8059DC80  38 A0 00 01 */	li r5, 1
/* 8059DC84  39 00 00 00 */	li r8, 0
/* 8059DC88  39 20 00 04 */	li r9, 4
/* 8059DC8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059DC90  39 40 00 00 */	li r10, 0
/* 8059DC94  81 86 00 00 */	lwz r12, 0(r6)
/* 8059DC98  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 8059DC9C  7D 89 03 A6 */	mtctr r12
/* 8059DCA0  4E 80 04 21 */	bctrl 
/* 8059DCA4  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059DCA8  38 60 04 38 */	li r3, 0x438
/* 8059DCAC  48 09 02 FD */	bl sAdo_OngenTrgStart
/* 8059DCB0  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059DCB4  38 80 00 01 */	li r4, 1
/* 8059DCB8  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 8059DCBC  38 00 00 00 */	li r0, 0
/* 8059DCC0  98 7F 02 1E */	stb r3, 0x21e(r31)
/* 8059DCC4  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059DCC8  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 8059DCCC  98 7F 02 1E */	stb r3, 0x21e(r31)
/* 8059DCD0  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8059DCD4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8059DCD8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8059DCDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059DCE0  7C 08 03 A6 */	mtlr r0
/* 8059DCE4  38 21 00 40 */	addi r1, r1, 0x40
/* 8059DCE8  4E 80 00 20 */	blr 
