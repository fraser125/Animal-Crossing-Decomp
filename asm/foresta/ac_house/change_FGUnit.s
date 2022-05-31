lbl_805AFA44:
/* 805AFA44  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805AFA48  7C 08 02 A6 */	mflr r0
/* 805AFA4C  7C 65 1B 78 */	mr r5, r3
/* 805AFA50  90 01 00 74 */	stw r0, 0x74(r1)
/* 805AFA54  38 61 00 5C */	addi r3, r1, 0x5c
/* 805AFA58  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805AFA5C  7C 9F 23 78 */	mr r31, r4
/* 805AFA60  38 85 00 28 */	addi r4, r5, 0x28
/* 805AFA64  4B E0 B4 59 */	bl xyz_t_move
/* 805AFA68  3C 60 80 65 */	lis r3, lit_509@ha /* 0x8064A790@ha */
/* 805AFA6C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 805AFA70  C0 03 A7 90 */	lfs f0, lit_509@l(r3)  /* 0x8064A790@l */
/* 805AFA74  2C 1F 00 00 */	cmpwi r31, 0
/* 805AFA78  EC 01 00 2A */	fadds f0, f1, f0
/* 805AFA7C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805AFA80  40 82 00 30 */	bne lbl_805AFAB0
/* 805AFA84  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 805AFA88  38 81 00 50 */	addi r4, r1, 0x50
/* 805AFA8C  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805AFA90  38 60 00 00 */	li r3, 0
/* 805AFA94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFA98  38 A0 00 01 */	li r5, 1
/* 805AFA9C  90 E1 00 50 */	stw r7, 0x50(r1)
/* 805AFAA0  90 C1 00 54 */	stw r6, 0x54(r1)
/* 805AFAA4  90 01 00 58 */	stw r0, 0x58(r1)
/* 805AFAA8  4B DF 7D 89 */	bl mFI_SetFG_common
/* 805AFAAC  48 00 01 40 */	b lbl_805AFBEC
lbl_805AFAB0:
/* 805AFAB0  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805AFAB4  38 61 00 44 */	addi r3, r1, 0x44
/* 805AFAB8  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805AFABC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFAC0  90 A1 00 44 */	stw r5, 0x44(r1)
/* 805AFAC4  90 81 00 48 */	stw r4, 0x48(r1)
/* 805AFAC8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805AFACC  4B DF 79 65 */	bl mFI_GetUnitFG
/* 805AFAD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805AFAD4  41 82 01 18 */	beq lbl_805AFBEC
/* 805AFAD8  4B E4 20 95 */	bl mSN_ClearSnowman
/* 805AFADC  2C 03 00 00 */	cmpwi r3, 0
/* 805AFAE0  40 82 00 E0 */	bne lbl_805AFBC0
/* 805AFAE4  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805AFAE8  38 00 00 00 */	li r0, 0
/* 805AFAEC  28 03 00 2A */	cmplwi r3, 0x2a
/* 805AFAF0  41 80 00 0C */	blt lbl_805AFAFC
/* 805AFAF4  28 03 00 42 */	cmplwi r3, 0x42
/* 805AFAF8  40 81 00 0C */	ble lbl_805AFB04
lbl_805AFAFC:
/* 805AFAFC  28 03 00 5C */	cmplwi r3, 0x5c
/* 805AFB00  40 82 00 08 */	bne lbl_805AFB08
lbl_805AFB04:
/* 805AFB04  38 00 00 01 */	li r0, 1
lbl_805AFB08:
/* 805AFB08  2C 00 00 01 */	cmpwi r0, 1
/* 805AFB0C  40 82 00 5C */	bne lbl_805AFB68
/* 805AFB10  4B E1 99 65 */	bl bg_item_fg_sub_dig2take_conv
/* 805AFB14  4B E2 ED 3D */	bl mPB_keep_item
/* 805AFB18  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805AFB1C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805AFB20  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805AFB24  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805AFB28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFB2C  38 81 00 38 */	addi r4, r1, 0x38
/* 805AFB30  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805AFB34  38 A0 00 01 */	li r5, 1
/* 805AFB38  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 805AFB3C  90 01 00 40 */	stw r0, 0x40(r1)
/* 805AFB40  4B DF 7C F1 */	bl mFI_SetFG_common
/* 805AFB44  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805AFB48  38 61 00 2C */	addi r3, r1, 0x2c
/* 805AFB4C  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805AFB50  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFB54  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 805AFB58  90 81 00 30 */	stw r4, 0x30(r1)
/* 805AFB5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AFB60  4B DF 94 C9 */	bl mFI_Wpos2DepositOFF
/* 805AFB64  48 00 00 88 */	b lbl_805AFBEC
lbl_805AFB68:
/* 805AFB68  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805AFB6C  38 61 00 20 */	addi r3, r1, 0x20
/* 805AFB70  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805AFB74  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFB78  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805AFB7C  90 81 00 24 */	stw r4, 0x24(r1)
/* 805AFB80  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AFB84  4B DF 94 A5 */	bl mFI_Wpos2DepositOFF
/* 805AFB88  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805AFB8C  4B E2 EC C5 */	bl mPB_keep_item
/* 805AFB90  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805AFB94  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805AFB98  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805AFB9C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805AFBA0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFBA4  38 81 00 14 */	addi r4, r1, 0x14
/* 805AFBA8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805AFBAC  38 A0 00 01 */	li r5, 1
/* 805AFBB0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805AFBB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AFBB8  4B DF 7C 79 */	bl mFI_SetFG_common
/* 805AFBBC  48 00 00 30 */	b lbl_805AFBEC
lbl_805AFBC0:
/* 805AFBC0  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805AFBC4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805AFBC8  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805AFBCC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805AFBD0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFBD4  38 81 00 08 */	addi r4, r1, 8
/* 805AFBD8  90 A1 00 08 */	stw r5, 8(r1)
/* 805AFBDC  38 A0 00 01 */	li r5, 1
/* 805AFBE0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805AFBE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AFBE8  4B DF 7C 49 */	bl mFI_SetFG_common
lbl_805AFBEC:
/* 805AFBEC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805AFBF0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805AFBF4  7C 08 03 A6 */	mtlr r0
/* 805AFBF8  38 21 00 70 */	addi r1, r1, 0x70
/* 805AFBFC  4E 80 00 20 */	blr 
