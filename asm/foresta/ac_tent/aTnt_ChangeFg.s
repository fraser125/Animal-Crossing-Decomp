lbl_805BE018:
/* 805BE018  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805BE01C  7C 08 02 A6 */	mflr r0
/* 805BE020  3C A0 80 65 */	lis r5, lit_482@ha /* 0x8064AB9C@ha */
/* 805BE024  2C 04 00 00 */	cmpwi r4, 0
/* 805BE028  90 01 00 74 */	stw r0, 0x74(r1)
/* 805BE02C  C0 05 AB 9C */	lfs f0, lit_482@l(r5)  /* 0x8064AB9C@l */
/* 805BE030  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805BE034  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805BE038  80 E3 00 28 */	lwz r7, 0x28(r3)
/* 805BE03C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805BE040  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805BE044  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 805BE048  90 E1 00 5C */	stw r7, 0x5c(r1)
/* 805BE04C  EC 01 00 2A */	fadds f0, f1, f0
/* 805BE050  90 C1 00 60 */	stw r6, 0x60(r1)
/* 805BE054  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805BE058  40 82 00 28 */	bne lbl_805BE080
/* 805BE05C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BE060  38 81 00 50 */	addi r4, r1, 0x50
/* 805BE064  90 E1 00 50 */	stw r7, 0x50(r1)
/* 805BE068  38 60 00 00 */	li r3, 0
/* 805BE06C  38 A0 00 01 */	li r5, 1
/* 805BE070  90 C1 00 54 */	stw r6, 0x54(r1)
/* 805BE074  90 01 00 58 */	stw r0, 0x58(r1)
/* 805BE078  4B DE 97 B9 */	bl mFI_SetFG_common
/* 805BE07C  48 00 01 38 */	b lbl_805BE1B4
lbl_805BE080:
/* 805BE080  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BE084  38 61 00 44 */	addi r3, r1, 0x44
/* 805BE088  90 E1 00 44 */	stw r7, 0x44(r1)
/* 805BE08C  90 C1 00 48 */	stw r6, 0x48(r1)
/* 805BE090  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805BE094  4B DE 93 9D */	bl mFI_GetUnitFG
/* 805BE098  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BE09C  41 82 01 18 */	beq lbl_805BE1B4
/* 805BE0A0  4B E3 3A CD */	bl mSN_ClearSnowman
/* 805BE0A4  2C 03 00 00 */	cmpwi r3, 0
/* 805BE0A8  40 82 00 E0 */	bne lbl_805BE188
/* 805BE0AC  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805BE0B0  38 00 00 00 */	li r0, 0
/* 805BE0B4  28 03 00 2A */	cmplwi r3, 0x2a
/* 805BE0B8  41 80 00 0C */	blt lbl_805BE0C4
/* 805BE0BC  28 03 00 42 */	cmplwi r3, 0x42
/* 805BE0C0  40 81 00 0C */	ble lbl_805BE0CC
lbl_805BE0C4:
/* 805BE0C4  28 03 00 5C */	cmplwi r3, 0x5c
/* 805BE0C8  40 82 00 08 */	bne lbl_805BE0D0
lbl_805BE0CC:
/* 805BE0CC  38 00 00 01 */	li r0, 1
lbl_805BE0D0:
/* 805BE0D0  2C 00 00 01 */	cmpwi r0, 1
/* 805BE0D4  40 82 00 5C */	bne lbl_805BE130
/* 805BE0D8  4B E0 B3 9D */	bl bg_item_fg_sub_dig2take_conv
/* 805BE0DC  4B E2 07 75 */	bl mPB_keep_item
/* 805BE0E0  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805BE0E4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BE0E8  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805BE0EC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BE0F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BE0F4  38 81 00 38 */	addi r4, r1, 0x38
/* 805BE0F8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805BE0FC  38 A0 00 01 */	li r5, 1
/* 805BE100  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 805BE104  90 01 00 40 */	stw r0, 0x40(r1)
/* 805BE108  4B DE 97 29 */	bl mFI_SetFG_common
/* 805BE10C  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805BE110  38 61 00 2C */	addi r3, r1, 0x2c
/* 805BE114  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805BE118  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BE11C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 805BE120  90 81 00 30 */	stw r4, 0x30(r1)
/* 805BE124  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BE128  4B DE AF 01 */	bl mFI_Wpos2DepositOFF
/* 805BE12C  48 00 00 88 */	b lbl_805BE1B4
lbl_805BE130:
/* 805BE130  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805BE134  38 61 00 20 */	addi r3, r1, 0x20
/* 805BE138  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805BE13C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BE140  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805BE144  90 81 00 24 */	stw r4, 0x24(r1)
/* 805BE148  90 01 00 28 */	stw r0, 0x28(r1)
/* 805BE14C  4B DE AE DD */	bl mFI_Wpos2DepositOFF
/* 805BE150  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805BE154  4B E2 06 FD */	bl mPB_keep_item
/* 805BE158  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805BE15C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BE160  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805BE164  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BE168  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BE16C  38 81 00 14 */	addi r4, r1, 0x14
/* 805BE170  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805BE174  38 A0 00 01 */	li r5, 1
/* 805BE178  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805BE17C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BE180  4B DE 96 B1 */	bl mFI_SetFG_common
/* 805BE184  48 00 00 30 */	b lbl_805BE1B4
lbl_805BE188:
/* 805BE188  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805BE18C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BE190  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805BE194  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BE198  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BE19C  38 81 00 08 */	addi r4, r1, 8
/* 805BE1A0  90 A1 00 08 */	stw r5, 8(r1)
/* 805BE1A4  38 A0 00 01 */	li r5, 1
/* 805BE1A8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805BE1AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BE1B0  4B DE 96 81 */	bl mFI_SetFG_common
lbl_805BE1B4:
/* 805BE1B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805BE1B8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805BE1BC  7C 08 03 A6 */	mtlr r0
/* 805BE1C0  38 21 00 70 */	addi r1, r1, 0x70
/* 805BE1C4  4E 80 00 20 */	blr 
