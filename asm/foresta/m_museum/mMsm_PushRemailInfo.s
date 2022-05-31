lbl_803C6564:
/* 803C6564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C6568  7C 08 02 A6 */	mflr r0
/* 803C656C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C6570  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6574  4B CD 49 5D */	bl func_8009AED0
/* 803C6578  7C 7C 1B 79 */	or. r28, r3, r3
/* 803C657C  3B E0 00 01 */	li r31, 1
/* 803C6580  41 82 00 84 */	beq lbl_803C6604
/* 803C6584  48 00 00 78 */	b lbl_803C65FC
lbl_803C6588:
/* 803C6588  7F 83 E3 78 */	mr r3, r28
/* 803C658C  3B E0 00 00 */	li r31, 0
/* 803C6590  4B FF FE 91 */	bl mMsm_GetRemailFreeIdx
/* 803C6594  7C 7E 1B 78 */	mr r30, r3
/* 803C6598  2C 1E FF FF */	cmpwi r30, -1
/* 803C659C  41 82 00 60 */	beq lbl_803C65FC
/* 803C65A0  3B BE 00 01 */	addi r29, r30, 1
/* 803C65A4  48 00 00 50 */	b lbl_803C65F4
lbl_803C65A8:
/* 803C65A8  7F 83 E3 78 */	mr r3, r28
/* 803C65AC  7F A4 EB 78 */	mr r4, r29
/* 803C65B0  4B FF FD FD */	bl mMsm_Idx2RemailKind
/* 803C65B4  7C 65 1B 79 */	or. r5, r3, r3
/* 803C65B8  40 81 00 38 */	ble lbl_803C65F0
/* 803C65BC  2C 05 00 05 */	cmpwi r5, 5
/* 803C65C0  40 80 00 30 */	bge lbl_803C65F0
/* 803C65C4  57 A4 08 3C */	slwi r4, r29, 1
/* 803C65C8  7F 83 E3 78 */	mr r3, r28
/* 803C65CC  38 04 00 10 */	addi r0, r4, 0x10
/* 803C65D0  7C DC 02 2E */	lhzx r6, r28, r0
/* 803C65D4  7F C4 F3 78 */	mr r4, r30
/* 803C65D8  4B FF FE B9 */	bl mMsm_Idx2SetRemailInfo
/* 803C65DC  7F 83 E3 78 */	mr r3, r28
/* 803C65E0  7F A4 EB 78 */	mr r4, r29
/* 803C65E4  4B FF FF 59 */	bl mMsm_Idx2ClearRemailInfo
/* 803C65E8  3B E0 00 01 */	li r31, 1
/* 803C65EC  48 00 00 10 */	b lbl_803C65FC
lbl_803C65F0:
/* 803C65F0  3B BD 00 01 */	addi r29, r29, 1
lbl_803C65F4:
/* 803C65F4  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 803C65F8  41 80 FF B0 */	blt lbl_803C65A8
lbl_803C65FC:
/* 803C65FC  2C 1F 00 01 */	cmpwi r31, 1
/* 803C6600  41 82 FF 88 */	beq lbl_803C6588
lbl_803C6604:
/* 803C6604  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6608  4B CD 49 15 */	bl func_8009AF1C
/* 803C660C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6610  7C 08 03 A6 */	mtlr r0
/* 803C6614  38 21 00 20 */	addi r1, r1, 0x20
/* 803C6618  4E 80 00 20 */	blr 
