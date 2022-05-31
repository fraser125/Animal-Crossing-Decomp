lbl_805C54DC:
/* 805C54DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C54E0  7C 08 02 A6 */	mflr r0
/* 805C54E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C54E8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805C54EC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805C54F0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805C54F4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805C54F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C54FC  4B AD 59 D9 */	bl func_8009AED4
/* 805C5500  3C C0 80 65 */	lis r6, lit_505@ha /* 0x8064ADFC@ha */
/* 805C5504  FF C0 08 90 */	fmr f30, f1
/* 805C5508  C0 26 AD FC */	lfs f1, lit_505@l(r6)  /* 0x8064ADFC@l */
/* 805C550C  3C 80 80 65 */	lis r4, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5510  FF E0 10 90 */	fmr f31, f2
/* 805C5514  7C 7F 1B 78 */	mr r31, r3
/* 805C5518  FC 40 08 90 */	fmr f2, f1
/* 805C551C  8B C5 00 39 */	lbz r30, 0x39(r5)
/* 805C5520  38 60 00 00 */	li r3, 0
/* 805C5524  C0 64 AD CC */	lfs f3, data_8064ADCC@l(r4)  /* 0x8064ADCC@l */
/* 805C5528  4B E4 6E C5 */	bl Matrix_scale
/* 805C552C  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064AE04@ha */
/* 805C5530  FC 20 F0 90 */	fmr f1, f30
/* 805C5534  C0 63 AE 04 */	lfs f3, lit_609@l(r3)  /* 0x8064AE04@l */
/* 805C5538  FC 40 F8 90 */	fmr f2, f31
/* 805C553C  38 60 00 01 */	li r3, 1
/* 805C5540  4B E4 6D C1 */	bl Matrix_translate
/* 805C5544  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C5548  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805C554C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C5550  7F E3 FB 78 */	mr r3, r31
/* 805C5554  90 1D 00 00 */	stw r0, 0(r29)
/* 805C5558  4B E4 7E 7D */	bl _Matrix_to_Mtx_new
/* 805C555C  90 7D 00 04 */	stw r3, 4(r29)
/* 805C5560  3C C0 DE 00 */	lis r6, 0xde00
/* 805C5564  3C 60 80 A1 */	lis r3, data_80A0DC70@ha /* 0x80A0DC70@ha */
/* 805C5568  3C 80 80 6C */	lis r4, data_806C7B60@ha /* 0x806C7B60@ha */
/* 805C556C  90 DD 00 08 */	stw r6, 8(r29)
/* 805C5570  38 03 DC 70 */	addi r0, r3, data_80A0DC70@l /* 0x80A0DC70@l */
/* 805C5574  57 C7 10 3A */	slwi r7, r30, 2
/* 805C5578  38 A4 7B 60 */	addi r5, r4, data_806C7B60@l /* 0x806C7B60@l */
/* 805C557C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805C5580  3C 60 80 6C */	lis r3, paper_disp_sen_model@ha /* 0x806C7F60@ha */
/* 805C5584  38 83 7F 60 */	addi r4, r3, paper_disp_sen_model@l /* 0x806C7F60@l */
/* 805C5588  90 DD 00 10 */	stw r6, 0x10(r29)
/* 805C558C  7C 05 38 2E */	lwzx r0, r5, r7
/* 805C5590  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805C5594  3B BD 00 18 */	addi r29, r29, 0x18
/* 805C5598  7C 04 38 2E */	lwzx r0, r4, r7
/* 805C559C  28 00 00 00 */	cmplwi r0, 0
/* 805C55A0  41 82 00 24 */	beq lbl_805C55C4
/* 805C55A4  3C 60 80 A1 */	lis r3, lat_letter_sen_mode@ha /* 0x80A0DCA8@ha */
/* 805C55A8  90 DD 00 00 */	stw r6, 0(r29)
/* 805C55AC  38 03 DC A8 */	addi r0, r3, lat_letter_sen_mode@l /* 0x80A0DCA8@l */
/* 805C55B0  90 1D 00 04 */	stw r0, 4(r29)
/* 805C55B4  90 DD 00 08 */	stw r6, 8(r29)
/* 805C55B8  7C 04 38 2E */	lwzx r0, r4, r7
/* 805C55BC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805C55C0  3B BD 00 10 */	addi r29, r29, 0x10
lbl_805C55C4:
/* 805C55C4  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805C55C8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805C55CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805C55D0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805C55D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C55D8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805C55DC  4B AD 59 45 */	bl func_8009AF20
/* 805C55E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C55E4  7C 08 03 A6 */	mtlr r0
/* 805C55E8  38 21 00 40 */	addi r1, r1, 0x40
/* 805C55EC  4E 80 00 20 */	blr 
