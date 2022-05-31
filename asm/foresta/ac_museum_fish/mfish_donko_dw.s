lbl_8044E448:
/* 8044E448  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044E44C  7C 08 02 A6 */	mflr r0
/* 8044E450  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044E454  39 61 00 20 */	addi r11, r1, 0x20
/* 8044E458  4B C4 CA 71 */	bl func_8009AEC8
/* 8044E45C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8044E460  7C 7D 1B 78 */	mr r29, r3
/* 8044E464  7C 9E 23 78 */	mr r30, r4
/* 8044E468  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8044E46C  3B FD 00 38 */	addi r31, r29, 0x38
/* 8044E470  41 82 00 0C */	beq lbl_8044E47C
/* 8044E474  3B 7F 00 70 */	addi r27, r31, 0x70
/* 8044E478  48 00 00 08 */	b lbl_8044E480
lbl_8044E47C:
/* 8044E47C  3B 7F 02 B0 */	addi r27, r31, 0x2b0
lbl_8044E480:
/* 8044E480  83 5E 00 00 */	lwz r26, 0(r30)
/* 8044E484  38 60 00 00 */	li r3, 0
/* 8044E488  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 8044E48C  C0 5D 05 A4 */	lfs f2, 0x5a4(r29)
/* 8044E490  C0 7D 05 A8 */	lfs f3, 0x5a8(r29)
/* 8044E494  4B FB DE 6D */	bl Matrix_translate
/* 8044E498  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 8044E49C  38 80 00 01 */	li r4, 1
/* 8044E4A0  4B FB E1 BD */	bl Matrix_RotateY
/* 8044E4A4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044E4A8  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 8044E4AC  C0 24 42 48 */	lfs f1, lit_468@l(r4)  /* 0x80644248@l */
/* 8044E4B0  C0 63 43 34 */	lfs f3, lit_1315@l(r3)  /* 0x80644334@l */
/* 8044E4B4  38 60 00 01 */	li r3, 1
/* 8044E4B8  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8044E4BC  FC 40 08 90 */	fmr f2, f1
/* 8044E4C0  EC 63 00 32 */	fmuls f3, f3, f0
/* 8044E4C4  4B FB DE 3D */	bl Matrix_translate
/* 8044E4C8  A8 7D 06 0C */	lha r3, 0x60c(r29)
/* 8044E4CC  38 80 00 01 */	li r4, 1
/* 8044E4D0  4B FB DF E9 */	bl Matrix_RotateX
/* 8044E4D4  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8044E4D8  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8044E4DC  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8044E4E0  C0 25 42 48 */	lfs f1, lit_468@l(r5)  /* 0x80644248@l */
/* 8044E4E4  FC 00 00 50 */	fneg f0, f0
/* 8044E4E8  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 8044E4EC  FC 40 08 90 */	fmr f2, f1
/* 8044E4F0  38 60 00 01 */	li r3, 1
/* 8044E4F4  EC 63 00 32 */	fmuls f3, f3, f0
/* 8044E4F8  4B FB DE 09 */	bl Matrix_translate
/* 8044E4FC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8044E500  38 60 00 01 */	li r3, 1
/* 8044E504  FC 40 08 90 */	fmr f2, f1
/* 8044E508  FC 60 08 90 */	fmr f3, f1
/* 8044E50C  4B FB DE E1 */	bl Matrix_scale
/* 8044E510  83 9A 02 D0 */	lwz r28, 0x2d0(r26)
/* 8044E514  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8044E518  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8044E51C  38 7C 00 08 */	addi r3, r28, 8
/* 8044E520  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 8044E524  90 1C 00 00 */	stw r0, 0(r28)
/* 8044E528  80 7E 00 00 */	lwz r3, 0(r30)
/* 8044E52C  4B FB EE A9 */	bl _Matrix_to_Mtx_new
/* 8044E530  3C 80 80 45 */	lis r4, mfish_donko_before_disp@ha /* 0x8044E360@ha */
/* 8044E534  90 7C 00 04 */	stw r3, 4(r28)
/* 8044E538  38 C4 E3 60 */	addi r6, r4, mfish_donko_before_disp@l /* 0x8044E360@l */
/* 8044E53C  7F C3 F3 78 */	mr r3, r30
/* 8044E540  7F E4 FB 78 */	mr r4, r31
/* 8044E544  7F 65 DB 78 */	mr r5, r27
/* 8044E548  7F A8 EB 78 */	mr r8, r29
/* 8044E54C  38 E0 00 00 */	li r7, 0
/* 8044E550  4B F2 31 E9 */	bl cKF_Si3_draw_R_SV
/* 8044E554  39 61 00 20 */	addi r11, r1, 0x20
/* 8044E558  4B C4 C9 BD */	bl func_8009AF14
/* 8044E55C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044E560  7C 08 03 A6 */	mtlr r0
/* 8044E564  38 21 00 20 */	addi r1, r1, 0x20
/* 8044E568  4E 80 00 20 */	blr 
