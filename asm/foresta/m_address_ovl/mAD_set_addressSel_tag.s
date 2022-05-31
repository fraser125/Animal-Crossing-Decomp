lbl_805C3300:
/* 805C3300  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805C3304  7C 08 02 A6 */	mflr r0
/* 805C3308  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C330C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805C3310  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805C3314  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805C3318  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805C331C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805C3320  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805C3324  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 805C3328  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 805C332C  39 61 00 30 */	addi r11, r1, 0x30
/* 805C3330  4B AD 7B 91 */	bl func_8009AEC0
/* 805C3334  7C 78 1B 78 */	mr r24, r3
/* 805C3338  7C 99 23 78 */	mr r25, r4
/* 805C333C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C3340  7C BA 2B 78 */	mr r26, r5
/* 805C3344  3B 60 00 02 */	li r27, 2
/* 805C3348  80 A3 09 90 */	lwz r5, 0x990(r3)
/* 805C334C  83 E3 09 94 */	lwz r31, 0x994(r3)
/* 805C3350  28 05 00 00 */	cmplwi r5, 0
/* 805C3354  8B DF 00 00 */	lbz r30, 0(r31)
/* 805C3358  8B BF 00 03 */	lbz r29, 3(r31)
/* 805C335C  41 82 00 28 */	beq lbl_805C3384
/* 805C3360  3C 80 80 65 */	lis r4, lit_861@ha /* 0x8064AD60@ha */
/* 805C3364  3C 60 80 65 */	lis r3, lit_862@ha /* 0x8064AD64@ha */
/* 805C3368  C0 45 01 38 */	lfs f2, 0x138(r5)
/* 805C336C  C0 64 AD 60 */	lfs f3, lit_861@l(r4)  /* 0x8064AD60@l */
/* 805C3370  C0 25 01 3C */	lfs f1, 0x13c(r5)
/* 805C3374  C0 03 AD 64 */	lfs f0, lit_862@l(r3)  /* 0x8064AD64@l */
/* 805C3378  EF E3 10 2A */	fadds f31, f3, f2
/* 805C337C  EF C1 00 28 */	fsubs f30, f1, f0
/* 805C3380  48 00 00 10 */	b lbl_805C3390
lbl_805C3384:
/* 805C3384  3C 60 80 65 */	lis r3, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C3388  C3 E3 AC DC */	lfs f31, data_8064ACDC@l(r3)  /* 0x8064ACDC@l */
/* 805C338C  FF C0 F8 90 */	fmr f30, f31
lbl_805C3390:
/* 805C3390  3B 80 00 00 */	li r28, 0
lbl_805C3394:
/* 805C3394  2C 1D 00 00 */	cmpwi r29, 0
/* 805C3398  40 82 00 0C */	bne lbl_805C33A4
/* 805C339C  3B A0 00 02 */	li r29, 2
/* 805C33A0  48 00 00 08 */	b lbl_805C33A8
lbl_805C33A4:
/* 805C33A4  3B BD FF FF */	addi r29, r29, -1
lbl_805C33A8:
/* 805C33A8  7F C0 EE 30 */	sraw r0, r30, r29
/* 805C33AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C33B0  41 82 00 DC */	beq lbl_805C348C
/* 805C33B4  88 1F 00 03 */	lbz r0, 3(r31)
/* 805C33B8  7C 1D 00 00 */	cmpw r29, r0
/* 805C33BC  40 82 00 10 */	bne lbl_805C33CC
/* 805C33C0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805C33C4  EF BF 00 2A */	fadds f29, f31, f0
/* 805C33C8  48 00 00 6C */	b lbl_805C3434
lbl_805C33CC:
/* 805C33CC  88 1F 00 04 */	lbz r0, 4(r31)
/* 805C33D0  7C 1D 00 00 */	cmpw r29, r0
/* 805C33D4  40 82 00 10 */	bne lbl_805C33E4
/* 805C33D8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805C33DC  EF BF 00 28 */	fsubs f29, f31, f0
/* 805C33E0  48 00 00 54 */	b lbl_805C3434
lbl_805C33E4:
/* 805C33E4  88 1F 00 02 */	lbz r0, 2(r31)
/* 805C33E8  28 00 00 03 */	cmplwi r0, 3
/* 805C33EC  40 82 00 18 */	bne lbl_805C3404
/* 805C33F0  3C 60 80 65 */	lis r3, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C33F4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C33F8  C0 03 AC DC */	lfs f0, data_8064ACDC@l(r3)  /* 0x8064ACDC@l */
/* 805C33FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C3400  41 80 00 20 */	blt lbl_805C3420
lbl_805C3404:
/* 805C3404  28 00 00 04 */	cmplwi r0, 4
/* 805C3408  40 82 00 24 */	bne lbl_805C342C
/* 805C340C  3C 60 80 65 */	lis r3, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C3410  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C3414  C0 03 AC DC */	lfs f0, data_8064ACDC@l(r3)  /* 0x8064ACDC@l */
/* 805C3418  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C341C  40 81 00 10 */	ble lbl_805C342C
lbl_805C3420:
/* 805C3420  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805C3424  EF BF 00 28 */	fsubs f29, f31, f0
/* 805C3428  48 00 00 0C */	b lbl_805C3434
lbl_805C342C:
/* 805C342C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805C3430  EF BF 00 2A */	fadds f29, f31, f0
lbl_805C3434:
/* 805C3434  57 A4 10 3A */	slwi r4, r29, 2
/* 805C3438  7F 23 CB 78 */	mr r3, r25
/* 805C343C  38 04 00 14 */	addi r0, r4, 0x14
/* 805C3440  7F A4 EB 78 */	mr r4, r29
/* 805C3444  7C 1F 04 2E */	lfsx f0, r31, r0
/* 805C3448  7F 65 DB 78 */	mr r5, r27
/* 805C344C  EF BD 00 2A */	fadds f29, f29, f0
/* 805C3450  EF 9E 00 28 */	fsubs f28, f30, f0
/* 805C3454  FC 20 E8 90 */	fmr f1, f29
/* 805C3458  FC 40 E0 90 */	fmr f2, f28
/* 805C345C  4B FF FA E1 */	bl mAD_set_addressSel_tag_field
/* 805C3460  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 805C3464  7F 23 CB 78 */	mr r3, r25
/* 805C3468  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805C346C  7D 89 03 A6 */	mtctr r12
/* 805C3470  4E 80 04 21 */	bctrl 
/* 805C3474  FC 20 E8 90 */	fmr f1, f29
/* 805C3478  7F 03 C3 78 */	mr r3, r24
/* 805C347C  FC 40 E0 90 */	fmr f2, f28
/* 805C3480  7F 44 D3 78 */	mr r4, r26
/* 805C3484  7F A5 EB 78 */	mr r5, r29
/* 805C3488  4B FF FC 15 */	bl mAD_set_addressSel_tag_character
lbl_805C348C:
/* 805C348C  3B 9C 00 01 */	addi r28, r28, 1
/* 805C3490  3B 7B FF FF */	addi r27, r27, -1
/* 805C3494  2C 1C 00 03 */	cmpwi r28, 3
/* 805C3498  41 80 FE FC */	blt lbl_805C3394
/* 805C349C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805C34A0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805C34A4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805C34A8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805C34AC  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805C34B0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805C34B4  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 805C34B8  39 61 00 30 */	addi r11, r1, 0x30
/* 805C34BC  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 805C34C0  4B AD 7A 4D */	bl func_8009AF0C
/* 805C34C4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805C34C8  7C 08 03 A6 */	mtlr r0
/* 805C34CC  38 21 00 70 */	addi r1, r1, 0x70
/* 805C34D0  4E 80 00 20 */	blr 
