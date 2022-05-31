lbl_805C8FA0:
/* 805C8FA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C8FA4  7C 08 02 A6 */	mflr r0
/* 805C8FA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C8FAC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805C8FB0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805C8FB4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805C8FB8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 805C8FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C8FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 805C8FC4  3C A0 80 65 */	lis r5, lit_1174@ha /* 0x8064AE78@ha */
/* 805C8FC8  FF C0 08 90 */	fmr f30, f1
/* 805C8FCC  C0 25 AE 78 */	lfs f1, lit_1174@l(r5)  /* 0x8064AE78@l */
/* 805C8FD0  3C 60 80 65 */	lis r3, lit_928@ha /* 0x8064AE64@ha */
/* 805C8FD4  FF E0 10 90 */	fmr f31, f2
/* 805C8FD8  C0 63 AE 64 */	lfs f3, lit_928@l(r3)  /* 0x8064AE64@l */
/* 805C8FDC  FC 40 08 90 */	fmr f2, f1
/* 805C8FE0  83 E4 00 00 */	lwz r31, 0(r4)
/* 805C8FE4  38 60 00 00 */	li r3, 0
/* 805C8FE8  4B E4 34 05 */	bl Matrix_scale
/* 805C8FEC  3C 60 80 65 */	lis r3, lit_1175@ha /* 0x8064AE7C@ha */
/* 805C8FF0  FC 20 F0 90 */	fmr f1, f30
/* 805C8FF4  C0 63 AE 7C */	lfs f3, lit_1175@l(r3)  /* 0x8064AE7C@l */
/* 805C8FF8  FC 40 F8 90 */	fmr f2, f31
/* 805C8FFC  38 60 00 01 */	li r3, 1
/* 805C9000  4B E4 33 01 */	bl Matrix_translate
/* 805C9004  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C9008  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805C900C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C9010  7F E3 FB 78 */	mr r3, r31
/* 805C9014  90 1E 00 00 */	stw r0, 0(r30)
/* 805C9018  4B E4 43 BD */	bl _Matrix_to_Mtx_new
/* 805C901C  90 7E 00 04 */	stw r3, 4(r30)
/* 805C9020  3C E0 DE 00 */	lis r7, 0xde00
/* 805C9024  3C 60 80 A2 */	lis r3, cal_hyouji2_shitaT_model@ha /* 0x80A1E630@ha */
/* 805C9028  3C C0 80 A2 */	lis r6, cal_hyouji2_bt_model@ha /* 0x80A1E580@ha */
/* 805C902C  90 FE 00 08 */	stw r7, 8(r30)
/* 805C9030  38 03 E6 30 */	addi r0, r3, cal_hyouji2_shitaT_model@l /* 0x80A1E630@l */
/* 805C9034  3C A0 80 A2 */	lis r5, cal_hyouji2_b2_model@ha /* 0x80A1E5D8@ha */
/* 805C9038  3C 80 80 A2 */	lis r4, cal_hyouji2_bmojiT_model@ha /* 0x80A1E680@ha */
/* 805C903C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805C9040  3C 60 80 A2 */	lis r3, cal_hyouji2_amojiT_model@ha /* 0x80A1E6D0@ha */
/* 805C9044  38 C6 E5 80 */	addi r6, r6, cal_hyouji2_bt_model@l /* 0x80A1E580@l */
/* 805C9048  38 A5 E5 D8 */	addi r5, r5, cal_hyouji2_b2_model@l /* 0x80A1E5D8@l */
/* 805C904C  90 FE 00 10 */	stw r7, 0x10(r30)
/* 805C9050  38 84 E6 80 */	addi r4, r4, cal_hyouji2_bmojiT_model@l /* 0x80A1E680@l */
/* 805C9054  38 03 E6 D0 */	addi r0, r3, cal_hyouji2_amojiT_model@l /* 0x80A1E6D0@l */
/* 805C9058  90 DE 00 14 */	stw r6, 0x14(r30)
/* 805C905C  90 FE 00 18 */	stw r7, 0x18(r30)
/* 805C9060  90 BE 00 1C */	stw r5, 0x1c(r30)
/* 805C9064  90 FE 00 20 */	stw r7, 0x20(r30)
/* 805C9068  90 9E 00 24 */	stw r4, 0x24(r30)
/* 805C906C  3B DE 00 28 */	addi r30, r30, 0x28
/* 805C9070  7F C3 F3 78 */	mr r3, r30
/* 805C9074  90 FE 00 00 */	stw r7, 0(r30)
/* 805C9078  3B DE 00 08 */	addi r30, r30, 8
/* 805C907C  90 03 00 04 */	stw r0, 4(r3)
/* 805C9080  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805C9084  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805C9088  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805C908C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805C9090  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805C9094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C9098  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C909C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C90A0  7C 08 03 A6 */	mtlr r0
/* 805C90A4  38 21 00 30 */	addi r1, r1, 0x30
/* 805C90A8  4E 80 00 20 */	blr 
