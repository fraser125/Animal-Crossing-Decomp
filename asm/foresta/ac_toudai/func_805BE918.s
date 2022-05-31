lbl_805BE918:
/* 805BE918  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805BE91C  7C 08 02 A6 */	mflr r0
/* 805BE920  90 01 00 84 */	stw r0, 0x84(r1)
/* 805BE924  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805BE928  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805BE92C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805BE930  93 C1 00 68 */	stw r30, 0x68(r1)
/* 805BE934  7C 64 1B 78 */	mr r4, r3
/* 805BE938  38 61 00 50 */	addi r3, r1, 0x50
/* 805BE93C  38 84 00 0C */	addi r4, r4, 0xc
/* 805BE940  4B DF C5 7D */	bl xyz_t_move
/* 805BE944  3C 80 80 65 */	lis r4, data_8064ABC4@ha /* 0x8064ABC4@ha */
/* 805BE948  3C 60 80 65 */	lis r3, lit_478@ha /* 0x8064ABC8@ha */
/* 805BE94C  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 805BE950  3B E0 00 00 */	li r31, 0
/* 805BE954  C3 E4 AB C4 */	lfs f31, data_8064ABC4@l(r4)  /* 0x8064ABC4@l */
/* 805BE958  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 805BE95C  C0 03 AB C8 */	lfs f0, lit_478@l(r3)  /* 0x8064ABC8@l */
/* 805BE960  EC 42 F8 28 */	fsubs f2, f2, f31
/* 805BE964  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BE968  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 805BE96C  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_805BE970:
/* 805BE970  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 805BE974  38 61 00 44 */	addi r3, r1, 0x44
/* 805BE978  80 81 00 54 */	lwz r4, 0x54(r1)
/* 805BE97C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 805BE980  90 A1 00 44 */	stw r5, 0x44(r1)
/* 805BE984  90 81 00 48 */	stw r4, 0x48(r1)
/* 805BE988  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805BE98C  4B DE 8A A5 */	bl mFI_GetUnitFG
/* 805BE990  7C 7E 1B 79 */	or. r30, r3, r3
/* 805BE994  41 82 01 08 */	beq lbl_805BEA9C
/* 805BE998  4B E3 31 D5 */	bl mSN_ClearSnowman
/* 805BE99C  2C 03 00 00 */	cmpwi r3, 0
/* 805BE9A0  40 82 00 D0 */	bne lbl_805BEA70
/* 805BE9A4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 805BE9A8  28 03 00 2A */	cmplwi r3, 0x2a
/* 805BE9AC  41 80 00 0C */	blt lbl_805BE9B8
/* 805BE9B0  28 03 00 42 */	cmplwi r3, 0x42
/* 805BE9B4  40 81 00 0C */	ble lbl_805BE9C0
lbl_805BE9B8:
/* 805BE9B8  28 03 00 5C */	cmplwi r3, 0x5c
/* 805BE9BC  40 82 00 5C */	bne lbl_805BEA18
lbl_805BE9C0:
/* 805BE9C0  4B E0 AA B5 */	bl bg_item_fg_sub_dig2take_conv
/* 805BE9C4  4B E1 FE 8D */	bl mPB_keep_item
/* 805BE9C8  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 805BE9CC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BE9D0  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 805BE9D4  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BE9D8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 805BE9DC  38 81 00 38 */	addi r4, r1, 0x38
/* 805BE9E0  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805BE9E4  38 A0 00 01 */	li r5, 1
/* 805BE9E8  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 805BE9EC  90 01 00 40 */	stw r0, 0x40(r1)
/* 805BE9F0  4B DE 8E 41 */	bl mFI_SetFG_common
/* 805BE9F4  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 805BE9F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 805BE9FC  80 81 00 54 */	lwz r4, 0x54(r1)
/* 805BEA00  80 01 00 58 */	lwz r0, 0x58(r1)
/* 805BEA04  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 805BEA08  90 81 00 30 */	stw r4, 0x30(r1)
/* 805BEA0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BEA10  4B DE A6 19 */	bl mFI_Wpos2DepositOFF
/* 805BEA14  48 00 00 88 */	b lbl_805BEA9C
lbl_805BEA18:
/* 805BEA18  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 805BEA1C  38 61 00 20 */	addi r3, r1, 0x20
/* 805BEA20  80 81 00 54 */	lwz r4, 0x54(r1)
/* 805BEA24  80 01 00 58 */	lwz r0, 0x58(r1)
/* 805BEA28  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805BEA2C  90 81 00 24 */	stw r4, 0x24(r1)
/* 805BEA30  90 01 00 28 */	stw r0, 0x28(r1)
/* 805BEA34  4B DE A5 F5 */	bl mFI_Wpos2DepositOFF
/* 805BEA38  A0 7E 00 00 */	lhz r3, 0(r30)
/* 805BEA3C  4B E1 FE 15 */	bl mPB_keep_item
/* 805BEA40  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 805BEA44  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BEA48  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 805BEA4C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BEA50  80 01 00 58 */	lwz r0, 0x58(r1)
/* 805BEA54  38 81 00 14 */	addi r4, r1, 0x14
/* 805BEA58  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805BEA5C  38 A0 00 01 */	li r5, 1
/* 805BEA60  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805BEA64  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BEA68  4B DE 8D C9 */	bl mFI_SetFG_common
/* 805BEA6C  48 00 00 30 */	b lbl_805BEA9C
lbl_805BEA70:
/* 805BEA70  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 805BEA74  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BEA78  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 805BEA7C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BEA80  80 01 00 58 */	lwz r0, 0x58(r1)
/* 805BEA84  38 81 00 08 */	addi r4, r1, 8
/* 805BEA88  90 A1 00 08 */	stw r5, 8(r1)
/* 805BEA8C  38 A0 00 01 */	li r5, 1
/* 805BEA90  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805BEA94  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BEA98  4B DE 8D 99 */	bl mFI_SetFG_common
lbl_805BEA9C:
/* 805BEA9C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805BEAA0  3B FF 00 01 */	addi r31, r31, 1
/* 805BEAA4  2C 1F 00 02 */	cmpwi r31, 2
/* 805BEAA8  EC 00 F8 2A */	fadds f0, f0, f31
/* 805BEAAC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805BEAB0  41 80 FE C0 */	blt lbl_805BE970
/* 805BEAB4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805BEAB8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805BEABC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805BEAC0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805BEAC4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 805BEAC8  7C 08 03 A6 */	mtlr r0
/* 805BEACC  38 21 00 80 */	addi r1, r1, 0x80
/* 805BEAD0  4E 80 00 20 */	blr 
