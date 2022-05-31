lbl_8056E218:
/* 8056E218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056E21C  7C 08 02 A6 */	mflr r0
/* 8056E220  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056E224  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8056E228  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8056E22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056E230  93 C1 00 08 */	stw r30, 8(r1)
/* 8056E234  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8056E238  7C 7E 1B 78 */	mr r30, r3
/* 8056E23C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8056E240  80 63 00 00 */	lwz r3, 0(r3)
/* 8056E244  83 E3 1D 8C */	lwz r31, 0x1d8c(r3)
/* 8056E248  7C 1E F8 40 */	cmplw r30, r31
/* 8056E24C  41 82 00 8C */	beq lbl_8056E2D8
/* 8056E250  88 1E 00 B4 */	lbz r0, 0xb4(r30)
/* 8056E254  28 00 00 01 */	cmplwi r0, 1
/* 8056E258  40 82 00 80 */	bne lbl_8056E2D8
/* 8056E25C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8056E260  38 9E 00 28 */	addi r4, r30, 0x28
/* 8056E264  4B E4 CE 29 */	bl search_position_distanceXZ
/* 8056E268  3C 60 80 65 */	lis r3, lit_616@ha /* 0x80649884@ha */
/* 8056E26C  FF E0 08 90 */	fmr f31, f1
/* 8056E270  C0 03 98 84 */	lfs f0, lit_616@l(r3)  /* 0x80649884@l */
/* 8056E274  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8056E278  40 80 00 60 */	bge lbl_8056E2D8
/* 8056E27C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8056E280  38 9E 00 28 */	addi r4, r30, 0x28
/* 8056E284  4B E4 CE AD */	bl search_position_angleY
/* 8056E288  3C A0 80 65 */	lis r5, lit_616@ha /* 0x80649884@ha */
/* 8056E28C  3C 80 80 65 */	lis r4, lit_617@ha /* 0x80649888@ha */
/* 8056E290  C0 45 98 84 */	lfs f2, lit_616@l(r5)  /* 0x80649884@l */
/* 8056E294  7C 7F 1B 78 */	mr r31, r3
/* 8056E298  C0 04 98 88 */	lfs f0, lit_617@l(r4)  /* 0x80649888@l */
/* 8056E29C  EC 22 F8 28 */	fsubs f1, f2, f31
/* 8056E2A0  EF E1 10 24 */	fdivs f31, f1, f2
/* 8056E2A4  EF FF 07 F2 */	fmuls f31, f31, f31
/* 8056E2A8  EF FF 00 32 */	fmuls f31, f31, f0
/* 8056E2AC  4B E4 C8 45 */	bl sin_s
/* 8056E2B0  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8056E2B4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8056E2B8  7F E3 FB 78 */	mr r3, r31
/* 8056E2BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8056E2C0  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8056E2C4  4B E4 C7 D9 */	bl cos_s
/* 8056E2C8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8056E2CC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8056E2D0  EC 00 08 2A */	fadds f0, f0, f1
/* 8056E2D4  D0 1E 00 70 */	stfs f0, 0x70(r30)
lbl_8056E2D8:
/* 8056E2D8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8056E2DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056E2E0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8056E2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056E2E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056E2EC  7C 08 03 A6 */	mtlr r0
/* 8056E2F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8056E2F4  4E 80 00 20 */	blr 
