lbl_805EB818:
/* 805EB818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EB81C  7C 08 02 A6 */	mflr r0
/* 805EB820  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EB824  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805EB828  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805EB82C  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB830  4B AA F6 A5 */	bl func_8009AED4
/* 805EB834  3C C0 80 65 */	lis r6, lit_491@ha /* 0x8064B6EC@ha */
/* 805EB838  FF E0 08 90 */	fmr f31, f1
/* 805EB83C  C0 26 B6 EC */	lfs f1, lit_491@l(r6)  /* 0x8064B6EC@l */
/* 805EB840  3C A0 80 65 */	lis r5, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EB844  7C 7D 1B 78 */	mr r29, r3
/* 805EB848  C0 65 B6 BC */	lfs f3, data_8064B6BC@l(r5)  /* 0x8064B6BC@l */
/* 805EB84C  FC 40 08 90 */	fmr f2, f1
/* 805EB850  7C 9E 23 78 */	mr r30, r4
/* 805EB854  38 60 00 00 */	li r3, 0
/* 805EB858  4B E2 0B 95 */	bl Matrix_scale
/* 805EB85C  3C 80 80 65 */	lis r4, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB860  3C 60 80 65 */	lis r3, lit_719@ha /* 0x8064B710@ha */
/* 805EB864  C0 63 B7 10 */	lfs f3, lit_719@l(r3)  /* 0x8064B710@l */
/* 805EB868  FC 40 F8 90 */	fmr f2, f31
/* 805EB86C  C0 24 B6 E4 */	lfs f1, lit_489@l(r4)  /* 0x8064B6E4@l */
/* 805EB870  38 60 00 01 */	li r3, 1
/* 805EB874  4B E2 0A 8D */	bl Matrix_translate
/* 805EB878  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805EB87C  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 805EB880  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805EB884  7F C3 F3 78 */	mr r3, r30
/* 805EB888  90 1F 00 00 */	stw r0, 0(r31)
/* 805EB88C  4B E2 1B 49 */	bl _Matrix_to_Mtx_new
/* 805EB890  90 7F 00 04 */	stw r3, 4(r31)
/* 805EB894  3C A0 DE 00 */	lis r5, 0xde00
/* 805EB898  3C 60 80 B2 */	lis r3, kei_hyouji_model@ha /* 0x80B1A570@ha */
/* 805EB89C  90 BF 00 08 */	stw r5, 8(r31)
/* 805EB8A0  38 03 A5 70 */	addi r0, r3, kei_hyouji_model@l /* 0x80B1A570@l */
/* 805EB8A4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805EB8A8  3B FF 00 10 */	addi r31, r31, 0x10
/* 805EB8AC  88 1D 00 00 */	lbz r0, 0(r29)
/* 805EB8B0  28 00 00 00 */	cmplwi r0, 0
/* 805EB8B4  40 82 00 64 */	bne lbl_805EB918
/* 805EB8B8  3C 60 80 B2 */	lis r3, kei_win_yaji1T_mode@ha /* 0x80B1A4F8@ha */
/* 805EB8BC  90 BF 00 00 */	stw r5, 0(r31)
/* 805EB8C0  38 03 A4 F8 */	addi r0, r3, kei_win_yaji1T_mode@l /* 0x80B1A4F8@l */
/* 805EB8C4  90 1F 00 04 */	stw r0, 4(r31)
/* 805EB8C8  3B FF 00 08 */	addi r31, r31, 8
/* 805EB8CC  88 7D 00 03 */	lbz r3, 3(r29)
/* 805EB8D0  88 9D 00 04 */	lbz r4, 4(r29)
/* 805EB8D4  38 03 FF FF */	addi r0, r3, -1
/* 805EB8D8  7C 04 00 00 */	cmpw r4, r0
/* 805EB8DC  40 80 00 18 */	bge lbl_805EB8F4
/* 805EB8E0  3C 60 80 B2 */	lis r3, kei_win_yaji1T_model@ha /* 0x80B1A528@ha */
/* 805EB8E4  90 BF 00 00 */	stw r5, 0(r31)
/* 805EB8E8  38 03 A5 28 */	addi r0, r3, kei_win_yaji1T_model@l /* 0x80B1A528@l */
/* 805EB8EC  90 1F 00 04 */	stw r0, 4(r31)
/* 805EB8F0  3B FF 00 08 */	addi r31, r31, 8
lbl_805EB8F4:
/* 805EB8F4  88 1D 00 04 */	lbz r0, 4(r29)
/* 805EB8F8  28 00 00 00 */	cmplwi r0, 0
/* 805EB8FC  41 82 00 1C */	beq lbl_805EB918
/* 805EB900  3C 00 DE 00 */	lis r0, 0xde00
/* 805EB904  3C 60 80 B2 */	lis r3, kei_win_yaji2T_model@ha /* 0x80B1A538@ha */
/* 805EB908  90 1F 00 00 */	stw r0, 0(r31)
/* 805EB90C  38 03 A5 38 */	addi r0, r3, kei_win_yaji2T_model@l /* 0x80B1A538@l */
/* 805EB910  90 1F 00 04 */	stw r0, 4(r31)
/* 805EB914  3B FF 00 08 */	addi r31, r31, 8
lbl_805EB918:
/* 805EB918  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB91C  3C A0 80 65 */	lis r5, lit_760@ha /* 0x8064B714@ha */
/* 805EB920  38 83 B6 E4 */	addi r4, r3, lit_489@l /* 0x8064B6E4@l */
/* 805EB924  C0 25 B7 14 */	lfs f1, lit_760@l(r5)  /* 0x8064B714@l */
/* 805EB928  C0 44 00 00 */	lfs f2, 0(r4)
/* 805EB92C  38 60 00 01 */	li r3, 1
/* 805EB930  FC 60 10 90 */	fmr f3, f2
/* 805EB934  4B E2 09 CD */	bl Matrix_translate
/* 805EB938  88 1D 00 01 */	lbz r0, 1(r29)
/* 805EB93C  28 00 00 03 */	cmplwi r0, 3
/* 805EB940  41 80 00 38 */	blt lbl_805EB978
/* 805EB944  28 00 00 05 */	cmplwi r0, 5
/* 805EB948  41 81 00 30 */	bgt lbl_805EB978
/* 805EB94C  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB950  3C A0 80 65 */	lis r5, lit_761@ha /* 0x8064B718@ha */
/* 805EB954  38 83 B6 E4 */	addi r4, r3, lit_489@l /* 0x8064B6E4@l */
/* 805EB958  C0 25 B7 18 */	lfs f1, lit_761@l(r5)  /* 0x8064B718@l */
/* 805EB95C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805EB960  38 60 00 01 */	li r3, 1
/* 805EB964  FC 60 10 90 */	fmr f3, f2
/* 805EB968  4B E2 09 99 */	bl Matrix_translate
/* 805EB96C  38 60 80 00 */	li r3, -32768
/* 805EB970  38 80 00 01 */	li r4, 1
/* 805EB974  4B E2 0C E9 */	bl Matrix_RotateY
lbl_805EB978:
/* 805EB978  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805EB97C  7F C3 F3 78 */	mr r3, r30
/* 805EB980  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805EB984  90 1F 00 00 */	stw r0, 0(r31)
/* 805EB988  4B E2 1A 4D */	bl _Matrix_to_Mtx_new
/* 805EB98C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805EB990  90 7F 00 04 */	stw r3, 4(r31)
/* 805EB994  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805EB998  3C 80 80 6D */	lis r4, data_806CE2C8@ha /* 0x806CE2C8@ha */
/* 805EB99C  90 1F 00 08 */	stw r0, 8(r31)
/* 805EB9A0  3C 60 80 B2 */	lis r3, kei_win_stT_model@ha /* 0x80B1A480@ha */
/* 805EB9A4  38 A4 E2 C8 */	addi r5, r4, data_806CE2C8@l /* 0x806CE2C8@l */
/* 805EB9A8  3C 80 DE 00 */	lis r4, 0xde00
/* 805EB9AC  88 DD 00 01 */	lbz r6, 1(r29)
/* 805EB9B0  38 03 A4 80 */	addi r0, r3, kei_win_stT_model@l /* 0x80B1A480@l */
/* 805EB9B4  54 C3 10 3A */	slwi r3, r6, 2
/* 805EB9B8  7C 65 18 2E */	lwzx r3, r5, r3
/* 805EB9BC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 805EB9C0  3B FF 00 10 */	addi r31, r31, 0x10
/* 805EB9C4  7F E3 FB 78 */	mr r3, r31
/* 805EB9C8  90 9F 00 00 */	stw r4, 0(r31)
/* 805EB9CC  3B FF 00 08 */	addi r31, r31, 8
/* 805EB9D0  90 03 00 04 */	stw r0, 4(r3)
/* 805EB9D4  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 805EB9D8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805EB9DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB9E0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805EB9E4  4B AA F5 3D */	bl func_8009AF20
/* 805EB9E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EB9EC  7C 08 03 A6 */	mtlr r0
/* 805EB9F0  38 21 00 30 */	addi r1, r1, 0x30
/* 805EB9F4  4E 80 00 20 */	blr 
