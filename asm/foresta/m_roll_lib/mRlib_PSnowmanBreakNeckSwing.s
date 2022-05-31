lbl_803F721C:
/* 803F721C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F7220  7C 08 02 A6 */	mflr r0
/* 803F7224  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F7228  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803F722C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803F7230  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803F7234  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 803F7238  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F723C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F7240  3C 80 80 64 */	lis r4, lit_608@ha /* 0x80643438@ha */
/* 803F7244  FF E0 08 90 */	fmr f31, f1
/* 803F7248  C0 04 34 38 */	lfs f0, lit_608@l(r4)  /* 0x80643438@l */
/* 803F724C  FF C0 10 90 */	fmr f30, f2
/* 803F7250  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803F7254  40 81 00 D0 */	ble lbl_803F7324
/* 803F7258  3C 80 80 64 */	lis r4, lit_455@ha /* 0x80643410@ha */
/* 803F725C  3C A0 80 64 */	lis r5, lit_408@ha /* 0x80643404@ha */
/* 803F7260  C0 04 34 10 */	lfs f0, lit_455@l(r4)  /* 0x80643410@l */
/* 803F7264  C0 25 34 04 */	lfs f1, lit_408@l(r5)  /* 0x80643404@l */
/* 803F7268  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803F726C  A8 C3 00 00 */	lha r6, 0(r3)
/* 803F7270  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F7274  FC 00 00 1E */	fctiwz f0, f0
/* 803F7278  D8 01 00 08 */	stfd f0, 8(r1)
/* 803F727C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F7280  7C 06 02 14 */	add r0, r6, r0
/* 803F7284  B0 03 00 00 */	sth r0, 0(r3)
/* 803F7288  A8 03 00 00 */	lha r0, 0(r3)
/* 803F728C  54 03 04 66 */	rlwinm r3, r0, 0, 0x11, 0x13
/* 803F7290  7C 7E 1B 78 */	mr r30, r3
/* 803F7294  4B FC 38 5D */	bl sin_s
/* 803F7298  3C 80 80 64 */	lis r4, lit_609@ha /* 0x8064343C@ha */
/* 803F729C  7F C3 F3 78 */	mr r3, r30
/* 803F72A0  C0 04 34 3C */	lfs f0, lit_609@l(r4)  /* 0x8064343C@l */
/* 803F72A4  EF E0 07 F2 */	fmuls f31, f0, f31
/* 803F72A8  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803F72AC  FC 00 00 1E */	fctiwz f0, f0
/* 803F72B0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803F72B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803F72B8  4B FC 37 E5 */	bl cos_s
/* 803F72BC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803F72C0  3C A0 80 64 */	lis r5, data_806433EC@ha /* 0x806433EC@ha */
/* 803F72C4  C0 25 33 EC */	lfs f1, data_806433EC@l(r5)  /* 0x806433EC@l */
/* 803F72C8  3C 80 80 64 */	lis r4, lit_610@ha /* 0x80643440@ha */
/* 803F72CC  38 60 00 01 */	li r3, 1
/* 803F72D0  FC 40 00 1E */	fctiwz f2, f0
/* 803F72D4  C0 04 34 40 */	lfs f0, lit_610@l(r4)  /* 0x80643440@l */
/* 803F72D8  FC 60 08 90 */	fmr f3, f1
/* 803F72DC  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 803F72E0  EC 40 07 B2 */	fmuls f2, f0, f30
/* 803F72E4  83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 803F72E8  48 01 50 19 */	bl Matrix_translate
/* 803F72EC  7F E3 FB 78 */	mr r3, r31
/* 803F72F0  7F C5 F3 78 */	mr r5, r30
/* 803F72F4  38 80 00 00 */	li r4, 0
/* 803F72F8  38 C0 00 01 */	li r6, 1
/* 803F72FC  48 01 56 99 */	bl Matrix_rotateXYZ
/* 803F7300  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F7304  3C 80 80 64 */	lis r4, lit_611@ha /* 0x80643444@ha */
/* 803F7308  38 A3 33 EC */	addi r5, r3, data_806433EC@l /* 0x806433EC@l */
/* 803F730C  C0 04 34 44 */	lfs f0, lit_611@l(r4)  /* 0x80643444@l */
/* 803F7310  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F7314  38 60 00 01 */	li r3, 1
/* 803F7318  EC 40 07 B2 */	fmuls f2, f0, f30
/* 803F731C  FC 60 08 90 */	fmr f3, f1
/* 803F7320  48 01 4F E1 */	bl Matrix_translate
lbl_803F7324:
/* 803F7324  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803F7328  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803F732C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 803F7330  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803F7334  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F7338  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F733C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F7340  7C 08 03 A6 */	mtlr r0
/* 803F7344  38 21 00 50 */	addi r1, r1, 0x50
/* 803F7348  4E 80 00 20 */	blr 
