lbl_8056DA34:
/* 8056DA34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056DA38  7C 08 02 A6 */	mflr r0
/* 8056DA3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056DA40  39 61 00 40 */	addi r11, r1, 0x40
/* 8056DA44  4B B2 D4 8D */	bl func_8009AED0
/* 8056DA48  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056DA4C  3C C0 80 6C */	lis r6, data_806BEB08@ha /* 0x806BEB08@ha */
/* 8056DA50  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056DA54  7C 7E 1B 78 */	mr r30, r3
/* 8056DA58  3F A5 00 02 */	addis r29, r5, 2
/* 8056DA5C  7C 9C 23 78 */	mr r28, r4
/* 8056DA60  80 BD 60 4C */	lwz r5, 0x604c(r29)
/* 8056DA64  3B E6 EB 08 */	addi r31, r6, data_806BEB08@l /* 0x806BEB08@l */
/* 8056DA68  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8056DA6C  7D 89 03 A6 */	mtctr r12
/* 8056DA70  4E 80 04 21 */	bctrl 
/* 8056DA74  2C 03 00 01 */	cmpwi r3, 1
/* 8056DA78  40 82 01 20 */	bne lbl_8056DB98
/* 8056DA7C  80 BD 60 4C */	lwz r5, 0x604c(r29)
/* 8056DA80  7F C3 F3 78 */	mr r3, r30
/* 8056DA84  7F 84 E3 78 */	mr r4, r28
/* 8056DA88  AB BE 00 24 */	lha r29, 0x24(r30)
/* 8056DA8C  81 85 00 D0 */	lwz r12, 0xd0(r5)
/* 8056DA90  38 BF 00 24 */	addi r5, r31, 0x24
/* 8056DA94  7D 89 03 A6 */	mtctr r12
/* 8056DA98  4E 80 04 21 */	bctrl 
/* 8056DA9C  38 00 00 02 */	li r0, 2
/* 8056DAA0  38 A0 00 00 */	li r5, 0
/* 8056DAA4  98 1E 09 59 */	stb r0, 0x959(r30)
/* 8056DAA8  38 80 00 83 */	li r4, 0x83
/* 8056DAAC  38 00 00 06 */	li r0, 6
/* 8056DAB0  7F C3 F3 78 */	mr r3, r30
/* 8056DAB4  98 BE 08 30 */	stb r5, 0x830(r30)
/* 8056DAB8  90 9E 08 40 */	stw r4, 0x840(r30)
/* 8056DABC  98 1E 09 9D */	stb r0, 0x99d(r30)
/* 8056DAC0  48 00 05 D9 */	bl aPMAN_set_delivery_idx
/* 8056DAC4  98 7E 09 9B */	stb r3, 0x99b(r30)
/* 8056DAC8  7F C3 F3 78 */	mr r3, r30
/* 8056DACC  48 00 06 65 */	bl aPMAN_set_move_idx
/* 8056DAD0  98 7E 09 9C */	stb r3, 0x99c(r30)
/* 8056DAD4  38 80 FF FF */	li r4, -1
/* 8056DAD8  3C 60 80 65 */	lis r3, data_8064987C@ha /* 0x8064987C@ha */
/* 8056DADC  38 00 00 FE */	li r0, 0xfe
/* 8056DAE0  90 9E 08 F4 */	stw r4, 0x8f4(r30)
/* 8056DAE4  38 81 00 18 */	addi r4, r1, 0x18
/* 8056DAE8  C0 23 98 7C */	lfs f1, data_8064987C@l(r3)  /* 0x8064987C@l */
/* 8056DAEC  38 60 00 00 */	li r3, 0
/* 8056DAF0  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 8056DAF4  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8056DAF8  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8056DAFC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8056DB00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8056DB04  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8056DB08  90 01 00 20 */	stw r0, 0x20(r1)
/* 8056DB0C  4B E2 1B AD */	bl func_8038F6B8
/* 8056DB10  57 A0 10 3A */	slwi r0, r29, 2
/* 8056DB14  38 7F 00 40 */	addi r3, r31, 0x40
/* 8056DB18  7C 03 04 2E */	lfsx f0, r3, r0
/* 8056DB1C  2C 1D 00 00 */	cmpwi r29, 0
/* 8056DB20  38 00 00 01 */	li r0, 1
/* 8056DB24  EC 00 08 2A */	fadds f0, f0, f1
/* 8056DB28  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8056DB2C  98 1E 01 08 */	stb r0, 0x108(r30)
/* 8056DB30  40 82 00 54 */	bne lbl_8056DB84
/* 8056DB34  38 61 00 14 */	addi r3, r1, 0x14
/* 8056DB38  38 81 00 10 */	addi r4, r1, 0x10
/* 8056DB3C  38 A0 00 01 */	li r5, 1
/* 8056DB40  4B E3 88 C1 */	bl mFI_BlockKind2BkNum
/* 8056DB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056DB48  38 61 00 0C */	addi r3, r1, 0xc
/* 8056DB4C  38 81 00 08 */	addi r4, r1, 8
/* 8056DB50  38 A0 00 10 */	li r5, 0x10
/* 8056DB54  98 1E 00 08 */	stb r0, 8(r30)
/* 8056DB58  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8056DB5C  98 1E 00 09 */	stb r0, 9(r30)
/* 8056DB60  4B E3 88 A1 */	bl mFI_BlockKind2BkNum
/* 8056DB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056DB68  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8056DB6C  7C 80 02 78 */	xor r0, r4, r0
/* 8056DB70  7C 03 0E 70 */	srawi r3, r0, 1
/* 8056DB74  7C 00 20 38 */	and r0, r0, r4
/* 8056DB78  7C 00 18 50 */	subf r0, r0, r3
/* 8056DB7C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8056DB80  98 1E 09 9A */	stb r0, 0x99a(r30)
lbl_8056DB84:
/* 8056DB84  38 9F 00 48 */	addi r4, r31, 0x48
/* 8056DB88  7F C3 F3 78 */	mr r3, r30
/* 8056DB8C  7C A4 E8 AE */	lbzx r5, r4, r29
/* 8056DB90  7F 84 E3 78 */	mr r4, r28
/* 8056DB94  48 00 11 3D */	bl aPMAN_setupAction
lbl_8056DB98:
/* 8056DB98  39 61 00 40 */	addi r11, r1, 0x40
/* 8056DB9C  4B B2 D3 81 */	bl func_8009AF1C
/* 8056DBA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056DBA4  7C 08 03 A6 */	mtlr r0
/* 8056DBA8  38 21 00 40 */	addi r1, r1, 0x40
/* 8056DBAC  4E 80 00 20 */	blr 
