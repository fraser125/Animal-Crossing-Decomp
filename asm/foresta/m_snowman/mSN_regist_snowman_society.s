lbl_803F1D40:
/* 803F1D40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F1D44  7C 08 02 A6 */	mflr r0
/* 803F1D48  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F1D4C  39 61 00 40 */	addi r11, r1, 0x40
/* 803F1D50  4B CA 91 85 */	bl func_8009AED4
/* 803F1D54  7C 7F 1B 78 */	mr r31, r3
/* 803F1D58  38 61 00 20 */	addi r3, r1, 0x20
/* 803F1D5C  80 9F 00 04 */	lwz r4, 4(r31)
/* 803F1D60  80 1F 00 08 */	lwz r0, 8(r31)
/* 803F1D64  90 81 00 20 */	stw r4, 0x20(r1)
/* 803F1D68  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F1D6C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803F1D70  90 01 00 28 */	stw r0, 0x28(r1)
/* 803F1D74  4B FB 56 BD */	bl mFI_GetUnitFG
/* 803F1D78  A3 A3 00 00 */	lhz r29, 0(r3)
/* 803F1D7C  4B FF FF 89 */	bl mSN_get_free_space
/* 803F1D80  7C 7E 1B 78 */	mr r30, r3
/* 803F1D84  2C 1E FF FF */	cmpwi r30, -1
/* 803F1D88  41 82 00 8C */	beq lbl_803F1E14
/* 803F1D8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1D90  57 C5 10 3A */	slwi r5, r30, 2
/* 803F1D94  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803F1D98  7F E4 FB 78 */	mr r4, r31
/* 803F1D9C  7C 60 2A 14 */	add r3, r0, r5
/* 803F1DA0  38 A0 00 04 */	li r5, 4
/* 803F1DA4  3C 63 00 02 */	addis r3, r3, 2
/* 803F1DA8  38 63 0E F8 */	addi r3, r3, 0xef8
/* 803F1DAC  4B FC 8C 79 */	bl func_803BAA24
/* 803F1DB0  28 1D 00 00 */	cmplwi r29, 0
/* 803F1DB4  41 82 00 2C */	beq lbl_803F1DE0
/* 803F1DB8  7F A3 EB 78 */	mr r3, r29
/* 803F1DBC  4B FE CA 95 */	bl mPB_keep_item
/* 803F1DC0  80 9F 00 04 */	lwz r4, 4(r31)
/* 803F1DC4  38 61 00 14 */	addi r3, r1, 0x14
/* 803F1DC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 803F1DCC  90 81 00 14 */	stw r4, 0x14(r1)
/* 803F1DD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 803F1DD4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803F1DD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F1DDC  4B FB 72 4D */	bl mFI_Wpos2DepositOFF
lbl_803F1DE0:
/* 803F1DE0  80 1F 00 04 */	lwz r0, 4(r31)
/* 803F1DE4  1C 7E 00 03 */	mulli r3, r30, 3
/* 803F1DE8  80 DF 00 08 */	lwz r6, 8(r31)
/* 803F1DEC  38 81 00 08 */	addi r4, r1, 8
/* 803F1DF0  38 A0 00 01 */	li r5, 1
/* 803F1DF4  90 01 00 08 */	stw r0, 8(r1)
/* 803F1DF8  3C 63 00 01 */	addis r3, r3, 1
/* 803F1DFC  38 03 A0 08 */	addi r0, r3, -24568
/* 803F1E00  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803F1E04  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803F1E08  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803F1E0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F1E10  4B FB 5A 21 */	bl mFI_SetFG_common
lbl_803F1E14:
/* 803F1E14  39 61 00 40 */	addi r11, r1, 0x40
/* 803F1E18  4B CA 91 09 */	bl func_8009AF20
/* 803F1E1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F1E20  7C 08 03 A6 */	mtlr r0
/* 803F1E24  38 21 00 40 */	addi r1, r1, 0x40
/* 803F1E28  4E 80 00 20 */	blr 
