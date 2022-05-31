lbl_8037EFB0:
/* 8037EFB0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8037EFB4  7C 08 02 A6 */	mflr r0
/* 8037EFB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8037EFBC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8037EFC0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8037EFC4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8037EFC8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8037EFCC  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8037EFD0  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8037EFD4  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 8037EFD8  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 8037EFDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037EFE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8037EFE4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8037EFE8  FF 80 08 90 */	fmr f28, f1
/* 8037EFEC  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8037EFF0  FF A0 10 90 */	fmr f29, f2
/* 8037EFF4  FF C0 18 90 */	fmr f30, f3
/* 8037EFF8  83 DF 1B E8 */	lwz r30, 0x1be8(r31)
/* 8037EFFC  C3 FF 1B 9C */	lfs f31, 0x1b9c(r31)
/* 8037F000  2C 1E 00 08 */	cmpwi r30, 8
/* 8037F004  40 82 00 24 */	bne lbl_8037F028
/* 8037F008  3C 60 80 64 */	lis r3, lit_877@ha /* 0x80641464@ha */
/* 8037F00C  3C 80 80 64 */	lis r4, lit_878@ha /* 0x80641468@ha */
/* 8037F010  38 A3 14 64 */	addi r5, r3, lit_877@l /* 0x80641464@l */
/* 8037F014  C0 A4 14 68 */	lfs f5, lit_878@l(r4)  /* 0x80641468@l */
/* 8037F018  C0 85 00 00 */	lfs f4, 0(r5)
/* 8037F01C  38 7F 1C 00 */	addi r3, r31, 0x1c00
/* 8037F020  4B FF FF 15 */	bl pos_cull_check
/* 8037F024  48 00 00 F4 */	b lbl_8037F118
lbl_8037F028:
/* 8037F028  2C 1E 00 03 */	cmpwi r30, 3
/* 8037F02C  40 82 00 10 */	bne lbl_8037F03C
/* 8037F030  80 9F 1C 00 */	lwz r4, 0x1c00(r31)
/* 8037F034  80 7F 1C 04 */	lwz r3, 0x1c04(r31)
/* 8037F038  48 00 00 10 */	b lbl_8037F048
lbl_8037F03C:
/* 8037F03C  7F E3 FB 78 */	mr r3, r31
/* 8037F040  48 05 A6 01 */	bl get_player_actor_withoutCheck
/* 8037F044  7C 64 1B 78 */	mr r4, r3
lbl_8037F048:
/* 8037F048  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 8037F04C  4C 40 13 82 */	cror 2, 0, 2
/* 8037F050  40 82 00 C4 */	bne lbl_8037F114
/* 8037F054  28 04 00 00 */	cmplwi r4, 0
/* 8037F058  40 82 00 0C */	bne lbl_8037F064
/* 8037F05C  28 03 00 00 */	cmplwi r3, 0
/* 8037F060  41 82 00 B4 */	beq lbl_8037F114
lbl_8037F064:
/* 8037F064  C0 1F 1B 88 */	lfs f0, 0x1b88(r31)
/* 8037F068  28 04 00 00 */	cmplwi r4, 0
/* 8037F06C  EC 60 F0 28 */	fsubs f3, f0, f30
/* 8037F070  EC 80 F0 2A */	fadds f4, f0, f30
/* 8037F074  40 82 00 10 */	bne lbl_8037F084
/* 8037F078  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8037F07C  FC 20 00 90 */	fmr f1, f0
/* 8037F080  48 00 00 20 */	b lbl_8037F0A0
lbl_8037F084:
/* 8037F084  28 03 00 00 */	cmplwi r3, 0
/* 8037F088  40 82 00 10 */	bne lbl_8037F098
/* 8037F08C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8037F090  FC 00 08 90 */	fmr f0, f1
/* 8037F094  48 00 00 0C */	b lbl_8037F0A0
lbl_8037F098:
/* 8037F098  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8037F09C  C0 23 00 28 */	lfs f1, 0x28(r3)
lbl_8037F0A0:
/* 8037F0A0  2C 1E 00 03 */	cmpwi r30, 3
/* 8037F0A4  40 82 00 18 */	bne lbl_8037F0BC
/* 8037F0A8  80 1F 1C 18 */	lwz r0, 0x1c18(r31)
/* 8037F0AC  38 7F 1C 00 */	addi r3, r31, 0x1c00
/* 8037F0B0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8037F0B4  41 82 00 08 */	beq lbl_8037F0BC
/* 8037F0B8  C0 23 00 08 */	lfs f1, 8(r3)
lbl_8037F0BC:
/* 8037F0BC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037F0C0  40 81 00 0C */	ble lbl_8037F0CC
/* 8037F0C4  FC 40 08 90 */	fmr f2, f1
/* 8037F0C8  48 00 00 0C */	b lbl_8037F0D4
lbl_8037F0CC:
/* 8037F0CC  FC 40 00 90 */	fmr f2, f0
/* 8037F0D0  FC 00 08 90 */	fmr f0, f1
lbl_8037F0D4:
/* 8037F0D4  EC 42 F0 28 */	fsubs f2, f2, f30
/* 8037F0D8  EC 00 F0 2A */	fadds f0, f0, f30
/* 8037F0DC  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8037F0E0  40 81 00 08 */	ble lbl_8037F0E8
/* 8037F0E4  FC 40 18 90 */	fmr f2, f3
lbl_8037F0E8:
/* 8037F0E8  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8037F0EC  40 80 00 08 */	bge lbl_8037F0F4
/* 8037F0F0  FC 00 20 90 */	fmr f0, f4
lbl_8037F0F4:
/* 8037F0F4  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 8037F0F8  4C 40 13 82 */	cror 2, 0, 2
/* 8037F0FC  40 82 00 18 */	bne lbl_8037F114
/* 8037F100  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8037F104  4C 40 13 82 */	cror 2, 0, 2
/* 8037F108  40 82 00 0C */	bne lbl_8037F114
/* 8037F10C  38 60 00 01 */	li r3, 1
/* 8037F110  48 00 00 08 */	b lbl_8037F118
lbl_8037F114:
/* 8037F114  38 60 00 00 */	li r3, 0
lbl_8037F118:
/* 8037F118  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8037F11C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8037F120  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8037F124  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8037F128  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8037F12C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8037F130  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 8037F134  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 8037F138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F13C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037F140  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037F144  7C 08 03 A6 */	mtlr r0
/* 8037F148  38 21 00 50 */	addi r1, r1, 0x50
/* 8037F14C  4E 80 00 20 */	blr 
