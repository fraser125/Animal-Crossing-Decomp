lbl_805B1CFC:
/* 805B1CFC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805B1D00  7C 08 02 A6 */	mflr r0
/* 805B1D04  7C 65 1B 78 */	mr r5, r3
/* 805B1D08  90 01 00 74 */	stw r0, 0x74(r1)
/* 805B1D0C  38 61 00 5C */	addi r3, r1, 0x5c
/* 805B1D10  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805B1D14  7C 9F 23 78 */	mr r31, r4
/* 805B1D18  38 85 00 28 */	addi r4, r5, 0x28
/* 805B1D1C  4B E0 91 A1 */	bl xyz_t_move
/* 805B1D20  3C 60 80 65 */	lis r3, lit_481@ha /* 0x8064A864@ha */
/* 805B1D24  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 805B1D28  C0 03 A8 64 */	lfs f0, lit_481@l(r3)  /* 0x8064A864@l */
/* 805B1D2C  2C 1F 00 00 */	cmpwi r31, 0
/* 805B1D30  EC 01 00 2A */	fadds f0, f1, f0
/* 805B1D34  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805B1D38  40 82 00 30 */	bne lbl_805B1D68
/* 805B1D3C  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 805B1D40  38 81 00 50 */	addi r4, r1, 0x50
/* 805B1D44  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805B1D48  38 60 00 00 */	li r3, 0
/* 805B1D4C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1D50  38 A0 00 01 */	li r5, 1
/* 805B1D54  90 E1 00 50 */	stw r7, 0x50(r1)
/* 805B1D58  90 C1 00 54 */	stw r6, 0x54(r1)
/* 805B1D5C  90 01 00 58 */	stw r0, 0x58(r1)
/* 805B1D60  4B DF 5A D1 */	bl mFI_SetFG_common
/* 805B1D64  48 00 01 40 */	b lbl_805B1EA4
lbl_805B1D68:
/* 805B1D68  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805B1D6C  38 61 00 44 */	addi r3, r1, 0x44
/* 805B1D70  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805B1D74  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1D78  90 A1 00 44 */	stw r5, 0x44(r1)
/* 805B1D7C  90 81 00 48 */	stw r4, 0x48(r1)
/* 805B1D80  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805B1D84  4B DF 56 AD */	bl mFI_GetUnitFG
/* 805B1D88  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B1D8C  41 82 01 18 */	beq lbl_805B1EA4
/* 805B1D90  4B E3 FD DD */	bl mSN_ClearSnowman
/* 805B1D94  2C 03 00 00 */	cmpwi r3, 0
/* 805B1D98  40 82 00 E0 */	bne lbl_805B1E78
/* 805B1D9C  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805B1DA0  38 00 00 00 */	li r0, 0
/* 805B1DA4  28 03 00 2A */	cmplwi r3, 0x2a
/* 805B1DA8  41 80 00 0C */	blt lbl_805B1DB4
/* 805B1DAC  28 03 00 42 */	cmplwi r3, 0x42
/* 805B1DB0  40 81 00 0C */	ble lbl_805B1DBC
lbl_805B1DB4:
/* 805B1DB4  28 03 00 5C */	cmplwi r3, 0x5c
/* 805B1DB8  40 82 00 08 */	bne lbl_805B1DC0
lbl_805B1DBC:
/* 805B1DBC  38 00 00 01 */	li r0, 1
lbl_805B1DC0:
/* 805B1DC0  2C 00 00 01 */	cmpwi r0, 1
/* 805B1DC4  40 82 00 5C */	bne lbl_805B1E20
/* 805B1DC8  4B E1 76 AD */	bl bg_item_fg_sub_dig2take_conv
/* 805B1DCC  4B E2 CA 85 */	bl mPB_keep_item
/* 805B1DD0  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805B1DD4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805B1DD8  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805B1DDC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805B1DE0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1DE4  38 81 00 38 */	addi r4, r1, 0x38
/* 805B1DE8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805B1DEC  38 A0 00 01 */	li r5, 1
/* 805B1DF0  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 805B1DF4  90 01 00 40 */	stw r0, 0x40(r1)
/* 805B1DF8  4B DF 5A 39 */	bl mFI_SetFG_common
/* 805B1DFC  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805B1E00  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B1E04  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805B1E08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1E0C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 805B1E10  90 81 00 30 */	stw r4, 0x30(r1)
/* 805B1E14  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B1E18  4B DF 72 11 */	bl mFI_Wpos2DepositOFF
/* 805B1E1C  48 00 00 88 */	b lbl_805B1EA4
lbl_805B1E20:
/* 805B1E20  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805B1E24  38 61 00 20 */	addi r3, r1, 0x20
/* 805B1E28  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805B1E2C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1E30  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805B1E34  90 81 00 24 */	stw r4, 0x24(r1)
/* 805B1E38  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B1E3C  4B DF 71 ED */	bl mFI_Wpos2DepositOFF
/* 805B1E40  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805B1E44  4B E2 CA 0D */	bl mPB_keep_item
/* 805B1E48  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805B1E4C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805B1E50  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805B1E54  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805B1E58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1E5C  38 81 00 14 */	addi r4, r1, 0x14
/* 805B1E60  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805B1E64  38 A0 00 01 */	li r5, 1
/* 805B1E68  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805B1E6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B1E70  4B DF 59 C1 */	bl mFI_SetFG_common
/* 805B1E74  48 00 00 30 */	b lbl_805B1EA4
lbl_805B1E78:
/* 805B1E78  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805B1E7C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805B1E80  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805B1E84  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805B1E88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1E8C  38 81 00 08 */	addi r4, r1, 8
/* 805B1E90  90 A1 00 08 */	stw r5, 8(r1)
/* 805B1E94  38 A0 00 01 */	li r5, 1
/* 805B1E98  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805B1E9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B1EA0  4B DF 59 91 */	bl mFI_SetFG_common
lbl_805B1EA4:
/* 805B1EA4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B1EA8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805B1EAC  7C 08 03 A6 */	mtlr r0
/* 805B1EB0  38 21 00 70 */	addi r1, r1, 0x70
/* 805B1EB4  4E 80 00 20 */	blr 
