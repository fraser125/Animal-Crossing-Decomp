lbl_805EB748:
/* 805EB748  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EB74C  7C 08 02 A6 */	mflr r0
/* 805EB750  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EB754  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805EB758  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805EB75C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805EB760  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805EB764  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB768  4B AA F7 6D */	bl func_8009AED4
/* 805EB76C  3C A0 80 65 */	lis r5, lit_491@ha /* 0x8064B6EC@ha */
/* 805EB770  FF C0 08 90 */	fmr f30, f1
/* 805EB774  C0 25 B6 EC */	lfs f1, lit_491@l(r5)  /* 0x8064B6EC@l */
/* 805EB778  3C 80 80 65 */	lis r4, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EB77C  FF E0 10 90 */	fmr f31, f2
/* 805EB780  7C 7D 1B 78 */	mr r29, r3
/* 805EB784  FC 40 08 90 */	fmr f2, f1
/* 805EB788  C0 64 B6 BC */	lfs f3, data_8064B6BC@l(r4)  /* 0x8064B6BC@l */
/* 805EB78C  38 60 00 00 */	li r3, 0
/* 805EB790  4B E2 0C 5D */	bl Matrix_scale
/* 805EB794  3C 60 80 65 */	lis r3, lit_719@ha /* 0x8064B710@ha */
/* 805EB798  FC 20 F0 90 */	fmr f1, f30
/* 805EB79C  C0 63 B7 10 */	lfs f3, lit_719@l(r3)  /* 0x8064B710@l */
/* 805EB7A0  FC 40 F8 90 */	fmr f2, f31
/* 805EB7A4  38 60 00 01 */	li r3, 1
/* 805EB7A8  4B E2 0B 59 */	bl Matrix_translate
/* 805EB7AC  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 805EB7B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805EB7B4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805EB7B8  7F A3 EB 78 */	mr r3, r29
/* 805EB7BC  90 1F 00 00 */	stw r0, 0(r31)
/* 805EB7C0  7F FE FB 78 */	mr r30, r31
/* 805EB7C4  3B FF 00 08 */	addi r31, r31, 8
/* 805EB7C8  4B E2 1C 0D */	bl _Matrix_to_Mtx_new
/* 805EB7CC  90 7E 00 04 */	stw r3, 4(r30)
/* 805EB7D0  7F E4 FB 78 */	mr r4, r31
/* 805EB7D4  3C 00 DE 00 */	lis r0, 0xde00
/* 805EB7D8  3C 60 80 B2 */	lis r3, kei_win_model@ha /* 0x80B1D918@ha */
/* 805EB7DC  90 1F 00 00 */	stw r0, 0(r31)
/* 805EB7E0  38 03 D9 18 */	addi r0, r3, kei_win_model@l /* 0x80B1D918@l */
/* 805EB7E4  3B FF 00 08 */	addi r31, r31, 8
/* 805EB7E8  90 04 00 04 */	stw r0, 4(r4)
/* 805EB7EC  93 FD 02 D0 */	stw r31, 0x2d0(r29)
/* 805EB7F0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805EB7F4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805EB7F8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805EB7FC  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB800  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805EB804  4B AA F7 1D */	bl func_8009AF20
/* 805EB808  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EB80C  7C 08 03 A6 */	mtlr r0
/* 805EB810  38 21 00 40 */	addi r1, r1, 0x40
/* 805EB814  4E 80 00 20 */	blr 
