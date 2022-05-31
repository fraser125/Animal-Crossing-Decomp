lbl_80384FB0:
/* 80384FB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80384FB4  7C 08 02 A6 */	mflr r0
/* 80384FB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80384FBC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80384FC0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80384FC4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80384FC8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80384FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384FD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80384FD4  83 C4 00 00 */	lwz r30, 0(r4)
/* 80384FD8  7C BF 2B 78 */	mr r31, r5
/* 80384FDC  C3 E3 00 2C */	lfs f31, 0x2c(r3)
/* 80384FE0  C3 C3 00 30 */	lfs f30, 0x30(r3)
/* 80384FE4  48 08 71 F1 */	bl Matrix_push
/* 80384FE8  3C 60 80 64 */	lis r3, lit_399@ha /* 0x80641744@ha */
/* 80384FEC  FC 20 F8 90 */	fmr f1, f31
/* 80384FF0  C0 63 17 44 */	lfs f3, lit_399@l(r3)  /* 0x80641744@l */
/* 80384FF4  FC 40 F0 90 */	fmr f2, f30
/* 80384FF8  38 60 00 01 */	li r3, 1
/* 80384FFC  48 08 73 F1 */	bl Matrix_scale
/* 80385000  2C 1F 00 01 */	cmpwi r31, 1
/* 80385004  40 82 00 2C */	bne lbl_80385030
/* 80385008  83 FE 02 F0 */	lwz r31, 0x2f0(r30)
/* 8038500C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80385010  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80385014  7F C3 F3 78 */	mr r3, r30
/* 80385018  38 9F 00 08 */	addi r4, r31, 8
/* 8038501C  90 9E 02 F0 */	stw r4, 0x2f0(r30)
/* 80385020  90 1F 00 00 */	stw r0, 0(r31)
/* 80385024  48 08 83 B1 */	bl _Matrix_to_Mtx_new
/* 80385028  90 7F 00 04 */	stw r3, 4(r31)
/* 8038502C  48 00 00 28 */	b lbl_80385054
lbl_80385030:
/* 80385030  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80385034  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80385038  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8038503C  7F C3 F3 78 */	mr r3, r30
/* 80385040  38 9F 00 08 */	addi r4, r31, 8
/* 80385044  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 80385048  90 1F 00 00 */	stw r0, 0(r31)
/* 8038504C  48 08 83 89 */	bl _Matrix_to_Mtx_new
/* 80385050  90 7F 00 04 */	stw r3, 4(r31)
lbl_80385054:
/* 80385054  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80385058  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8038505C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80385060  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80385064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80385068  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038506C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80385070  7C 08 03 A6 */	mtlr r0
/* 80385074  38 21 00 30 */	addi r1, r1, 0x30
/* 80385078  4E 80 00 20 */	blr 