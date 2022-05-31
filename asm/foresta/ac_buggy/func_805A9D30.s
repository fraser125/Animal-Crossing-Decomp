lbl_805A9D30:
/* 805A9D30  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805A9D34  7C 08 02 A6 */	mflr r0
/* 805A9D38  7C 65 1B 78 */	mr r5, r3
/* 805A9D3C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805A9D40  38 61 00 5C */	addi r3, r1, 0x5c
/* 805A9D44  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805A9D48  7C 9F 23 78 */	mr r31, r4
/* 805A9D4C  38 85 00 28 */	addi r4, r5, 0x28
/* 805A9D50  4B E1 11 6D */	bl xyz_t_move
/* 805A9D54  3C 60 80 65 */	lis r3, lit_464@ha /* 0x8064A5E8@ha */
/* 805A9D58  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 805A9D5C  C0 03 A5 E8 */	lfs f0, lit_464@l(r3)  /* 0x8064A5E8@l */
/* 805A9D60  2C 1F 00 00 */	cmpwi r31, 0
/* 805A9D64  EC 01 00 2A */	fadds f0, f1, f0
/* 805A9D68  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805A9D6C  40 82 00 30 */	bne lbl_805A9D9C
/* 805A9D70  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 805A9D74  38 81 00 50 */	addi r4, r1, 0x50
/* 805A9D78  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A9D7C  38 60 00 00 */	li r3, 0
/* 805A9D80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A9D84  38 A0 00 01 */	li r5, 1
/* 805A9D88  90 E1 00 50 */	stw r7, 0x50(r1)
/* 805A9D8C  90 C1 00 54 */	stw r6, 0x54(r1)
/* 805A9D90  90 01 00 58 */	stw r0, 0x58(r1)
/* 805A9D94  4B DF DA 9D */	bl mFI_SetFG_common
/* 805A9D98  48 00 01 40 */	b lbl_805A9ED8
lbl_805A9D9C:
/* 805A9D9C  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A9DA0  38 61 00 44 */	addi r3, r1, 0x44
/* 805A9DA4  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805A9DA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A9DAC  90 A1 00 44 */	stw r5, 0x44(r1)
/* 805A9DB0  90 81 00 48 */	stw r4, 0x48(r1)
/* 805A9DB4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805A9DB8  4B DF D6 79 */	bl mFI_GetUnitFG
/* 805A9DBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A9DC0  41 82 01 18 */	beq lbl_805A9ED8
/* 805A9DC4  4B E4 7D A9 */	bl mSN_ClearSnowman
/* 805A9DC8  2C 03 00 00 */	cmpwi r3, 0
/* 805A9DCC  40 82 00 E0 */	bne lbl_805A9EAC
/* 805A9DD0  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805A9DD4  38 00 00 00 */	li r0, 0
/* 805A9DD8  28 03 00 2A */	cmplwi r3, 0x2a
/* 805A9DDC  41 80 00 0C */	blt lbl_805A9DE8
/* 805A9DE0  28 03 00 42 */	cmplwi r3, 0x42
/* 805A9DE4  40 81 00 0C */	ble lbl_805A9DF0
lbl_805A9DE8:
/* 805A9DE8  28 03 00 5C */	cmplwi r3, 0x5c
/* 805A9DEC  40 82 00 08 */	bne lbl_805A9DF4
lbl_805A9DF0:
/* 805A9DF0  38 00 00 01 */	li r0, 1
lbl_805A9DF4:
/* 805A9DF4  2C 00 00 01 */	cmpwi r0, 1
/* 805A9DF8  40 82 00 5C */	bne lbl_805A9E54
/* 805A9DFC  4B E1 F6 79 */	bl bg_item_fg_sub_dig2take_conv
/* 805A9E00  4B E3 4A 51 */	bl mPB_keep_item
/* 805A9E04  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A9E08  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A9E0C  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A9E10  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A9E14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A9E18  38 81 00 38 */	addi r4, r1, 0x38
/* 805A9E1C  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805A9E20  38 A0 00 01 */	li r5, 1
/* 805A9E24  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 805A9E28  90 01 00 40 */	stw r0, 0x40(r1)
/* 805A9E2C  4B DF DA 05 */	bl mFI_SetFG_common
/* 805A9E30  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A9E34  38 61 00 2C */	addi r3, r1, 0x2c
/* 805A9E38  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805A9E3C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A9E40  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 805A9E44  90 81 00 30 */	stw r4, 0x30(r1)
/* 805A9E48  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A9E4C  4B DF F1 DD */	bl mFI_Wpos2DepositOFF
/* 805A9E50  48 00 00 88 */	b lbl_805A9ED8
lbl_805A9E54:
/* 805A9E54  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A9E58  38 61 00 20 */	addi r3, r1, 0x20
/* 805A9E5C  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805A9E60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A9E64  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805A9E68  90 81 00 24 */	stw r4, 0x24(r1)
/* 805A9E6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805A9E70  4B DF F1 B9 */	bl mFI_Wpos2DepositOFF
/* 805A9E74  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805A9E78  4B E3 49 D9 */	bl mPB_keep_item
/* 805A9E7C  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A9E80  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A9E84  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A9E88  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A9E8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A9E90  38 81 00 14 */	addi r4, r1, 0x14
/* 805A9E94  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805A9E98  38 A0 00 01 */	li r5, 1
/* 805A9E9C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805A9EA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A9EA4  4B DF D9 8D */	bl mFI_SetFG_common
/* 805A9EA8  48 00 00 30 */	b lbl_805A9ED8
lbl_805A9EAC:
/* 805A9EAC  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A9EB0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A9EB4  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A9EB8  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A9EBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A9EC0  38 81 00 08 */	addi r4, r1, 8
/* 805A9EC4  90 A1 00 08 */	stw r5, 8(r1)
/* 805A9EC8  38 A0 00 01 */	li r5, 1
/* 805A9ECC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805A9ED0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A9ED4  4B DF D9 5D */	bl mFI_SetFG_common
lbl_805A9ED8:
/* 805A9ED8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805A9EDC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805A9EE0  7C 08 03 A6 */	mtlr r0
/* 805A9EE4  38 21 00 70 */	addi r1, r1, 0x70
/* 805A9EE8  4E 80 00 20 */	blr 
