lbl_8041B1A0:
/* 8041B1A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8041B1A4  7C 08 02 A6 */	mflr r0
/* 8041B1A8  7C 67 1B 78 */	mr r7, r3
/* 8041B1AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8041B1B0  38 61 00 38 */	addi r3, r1, 0x38
/* 8041B1B4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8041B1B8  80 87 00 04 */	lwz r4, 4(r7)
/* 8041B1BC  80 A7 00 00 */	lwz r5, 0(r7)
/* 8041B1C0  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 8041B1C4  80 E7 00 08 */	lwz r7, 8(r7)
/* 8041B1C8  4B F8 AB 2D */	bl mFI_BkandUtNum2CenterWpos
/* 8041B1CC  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8041B1D0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8041B1D4  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8041B1D8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8041B1DC  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8041B1E0  90 81 00 30 */	stw r4, 0x30(r1)
/* 8041B1E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041B1E8  4B F8 C2 49 */	bl mFI_GetUnitFG
/* 8041B1EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8041B1F0  41 82 00 D0 */	beq lbl_8041B2C0
/* 8041B1F4  4B FD 69 79 */	bl mSN_ClearSnowman
/* 8041B1F8  2C 03 00 00 */	cmpwi r3, 0
/* 8041B1FC  40 82 00 C4 */	bne lbl_8041B2C0
/* 8041B200  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8041B204  38 00 00 00 */	li r0, 0
/* 8041B208  28 03 00 2A */	cmplwi r3, 0x2a
/* 8041B20C  41 80 00 0C */	blt lbl_8041B218
/* 8041B210  28 03 00 42 */	cmplwi r3, 0x42
/* 8041B214  40 81 00 0C */	ble lbl_8041B220
lbl_8041B218:
/* 8041B218  28 03 00 5C */	cmplwi r3, 0x5c
/* 8041B21C  40 82 00 08 */	bne lbl_8041B224
lbl_8041B220:
/* 8041B220  38 00 00 01 */	li r0, 1
lbl_8041B224:
/* 8041B224  2C 00 00 01 */	cmpwi r0, 1
/* 8041B228  40 82 00 58 */	bne lbl_8041B280
/* 8041B22C  4B FA E2 49 */	bl bg_item_fg_sub_dig2take_conv
/* 8041B230  4B FC 36 21 */	bl mPB_keep_item
/* 8041B234  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 8041B238  38 81 00 20 */	addi r4, r1, 0x20
/* 8041B23C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 8041B240  38 60 00 00 */	li r3, 0
/* 8041B244  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8041B248  38 A0 00 01 */	li r5, 1
/* 8041B24C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8041B250  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8041B254  90 01 00 28 */	stw r0, 0x28(r1)
/* 8041B258  4B F8 C5 D9 */	bl mFI_SetFG_common
/* 8041B25C  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8041B260  38 61 00 14 */	addi r3, r1, 0x14
/* 8041B264  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8041B268  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8041B26C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8041B270  90 81 00 18 */	stw r4, 0x18(r1)
/* 8041B274  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8041B278  4B F8 DD B1 */	bl mFI_Wpos2DepositOFF
/* 8041B27C  48 00 00 44 */	b lbl_8041B2C0
lbl_8041B280:
/* 8041B280  28 03 09 00 */	cmplwi r3, 0x900
/* 8041B284  41 80 00 3C */	blt lbl_8041B2C0
/* 8041B288  28 03 09 20 */	cmplwi r3, 0x920
/* 8041B28C  41 81 00 34 */	bgt lbl_8041B2C0
/* 8041B290  38 60 25 1E */	li r3, 0x251e
/* 8041B294  4B FC 35 BD */	bl mPB_keep_item
/* 8041B298  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 8041B29C  38 81 00 08 */	addi r4, r1, 8
/* 8041B2A0  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 8041B2A4  38 60 00 00 */	li r3, 0
/* 8041B2A8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8041B2AC  38 A0 00 01 */	li r5, 1
/* 8041B2B0  90 E1 00 08 */	stw r7, 8(r1)
/* 8041B2B4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8041B2B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8041B2BC  4B F8 C5 75 */	bl mFI_SetFG_common
lbl_8041B2C0:
/* 8041B2C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8041B2C4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8041B2C8  7C 08 03 A6 */	mtlr r0
/* 8041B2CC  38 21 00 50 */	addi r1, r1, 0x50
/* 8041B2D0  4E 80 00 20 */	blr 
