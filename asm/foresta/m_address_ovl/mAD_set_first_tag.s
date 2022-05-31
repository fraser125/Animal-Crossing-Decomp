lbl_805C2DA8:
/* 805C2DA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C2DAC  7C 08 02 A6 */	mflr r0
/* 805C2DB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C2DB4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C2DB8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C2DBC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805C2DC0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805C2DC4  39 61 00 30 */	addi r11, r1, 0x30
/* 805C2DC8  4B AD 80 FD */	bl func_8009AEC4
/* 805C2DCC  3C E0 80 65 */	lis r7, lit_740@ha /* 0x8064AD2C@ha */
/* 805C2DD0  FF C0 08 90 */	fmr f30, f1
/* 805C2DD4  C0 27 AD 2C */	lfs f1, lit_740@l(r7)  /* 0x8064AD2C@l */
/* 805C2DD8  3C C0 80 65 */	lis r6, lit_741@ha /* 0x8064AD30@ha */
/* 805C2DDC  FF E0 10 90 */	fmr f31, f2
/* 805C2DE0  3C E0 80 6C */	lis r7, data_806C76E0@ha /* 0x806C76E0@ha */
/* 805C2DE4  FC 40 08 90 */	fmr f2, f1
/* 805C2DE8  C0 66 AD 30 */	lfs f3, lit_741@l(r6)  /* 0x8064AD30@l */
/* 805C2DEC  7C 79 1B 78 */	mr r25, r3
/* 805C2DF0  7C 9D 23 78 */	mr r29, r4
/* 805C2DF4  7C BA 2B 78 */	mr r26, r5
/* 805C2DF8  3B E7 76 E0 */	addi r31, r7, data_806C76E0@l /* 0x806C76E0@l */
/* 805C2DFC  3B C0 00 00 */	li r30, 0
/* 805C2E00  38 60 00 00 */	li r3, 0
/* 805C2E04  4B E4 95 E9 */	bl Matrix_scale
/* 805C2E08  3C 60 80 65 */	lis r3, lit_742@ha /* 0x8064AD34@ha */
/* 805C2E0C  FC 20 F0 90 */	fmr f1, f30
/* 805C2E10  C0 63 AD 34 */	lfs f3, lit_742@l(r3)  /* 0x8064AD34@l */
/* 805C2E14  FC 40 F8 90 */	fmr f2, f31
/* 805C2E18  38 60 00 01 */	li r3, 1
/* 805C2E1C  4B E4 94 E5 */	bl Matrix_translate
/* 805C2E20  83 9A 02 D0 */	lwz r28, 0x2d0(r26)
/* 805C2E24  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C2E28  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C2E2C  7F 43 D3 78 */	mr r3, r26
/* 805C2E30  90 1C 00 00 */	stw r0, 0(r28)
/* 805C2E34  7F 9B E3 78 */	mr r27, r28
/* 805C2E38  3B 9C 00 08 */	addi r28, r28, 8
/* 805C2E3C  4B E4 A5 99 */	bl _Matrix_to_Mtx_new
/* 805C2E40  90 7B 00 04 */	stw r3, 4(r27)
/* 805C2E44  7F 84 E3 78 */	mr r4, r28
/* 805C2E48  3C 00 DE 00 */	lis r0, 0xde00
/* 805C2E4C  3C 60 80 A0 */	lis r3, lat_mes_winT_model@ha /* 0x80A035A0@ha */
/* 805C2E50  90 1C 00 00 */	stw r0, 0(r28)
/* 805C2E54  38 03 35 A0 */	addi r0, r3, lat_mes_winT_model@l /* 0x80A035A0@l */
/* 805C2E58  3B 9C 00 08 */	addi r28, r28, 8
/* 805C2E5C  7F 43 D3 78 */	mr r3, r26
/* 805C2E60  90 04 00 04 */	stw r0, 4(r4)
/* 805C2E64  93 9A 02 D0 */	stw r28, 0x2d0(r26)
/* 805C2E68  80 99 00 2C */	lwz r4, 0x2c(r25)
/* 805C2E6C  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805C2E70  7D 89 03 A6 */	mtctr r12
/* 805C2E74  4E 80 04 21 */	bctrl 
/* 805C2E78  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 805C2E7C  80 63 09 94 */	lwz r3, 0x994(r3)
/* 805C2E80  88 03 00 02 */	lbz r0, 2(r3)
/* 805C2E84  28 00 00 00 */	cmplwi r0, 0
/* 805C2E88  40 82 00 08 */	bne lbl_805C2E90
/* 805C2E8C  3B C0 00 01 */	li r30, 1
lbl_805C2E90:
/* 805C2E90  38 00 00 01 */	li r0, 1
/* 805C2E94  3C 80 80 65 */	lis r4, lit_743@ha /* 0x8064AD38@ha */
/* 805C2E98  90 01 00 08 */	stw r0, 8(r1)
/* 805C2E9C  38 00 00 00 */	li r0, 0
/* 805C2EA0  38 E4 AD 38 */	addi r7, r4, lit_743@l /* 0x8064AD38@l */
/* 805C2EA4  3C A0 80 65 */	lis r5, lit_744@ha /* 0x8064AD3C@ha */
/* 805C2EA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C2EAC  57 C0 18 38 */	slwi r0, r30, 3
/* 805C2EB0  38 DF 03 70 */	addi r6, r31, 0x370
/* 805C2EB4  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064AD30@ha */
/* 805C2EB8  7C 86 02 14 */	add r4, r6, r0
/* 805C2EBC  7C 26 04 2E */	lfsx f1, r6, r0
/* 805C2EC0  C0 04 00 04 */	lfs f0, 4(r4)
/* 805C2EC4  57 C0 10 3A */	slwi r0, r30, 2
/* 805C2EC8  EC 3E 08 2A */	fadds f1, f30, f1
/* 805C2ECC  C0 A7 00 00 */	lfs f5, 0(r7)
/* 805C2ED0  C0 63 AD 30 */	lfs f3, lit_741@l(r3)  /* 0x8064AD30@l */
/* 805C2ED4  EC 1F 00 2A */	fadds f0, f31, f0
/* 805C2ED8  C0 45 AD 3C */	lfs f2, lit_744@l(r5)  /* 0x8064AD3C@l */
/* 805C2EDC  38 9F 03 60 */	addi r4, r31, 0x360
/* 805C2EE0  38 7F 03 68 */	addi r3, r31, 0x368
/* 805C2EE4  FC 80 18 90 */	fmr f4, f3
/* 805C2EE8  7C A3 00 2E */	lwzx r5, r3, r0
/* 805C2EEC  EC 25 08 2A */	fadds f1, f5, f1
/* 805C2EF0  EC 42 00 28 */	fsubs f2, f2, f0
/* 805C2EF4  7C 84 00 2E */	lwzx r4, r4, r0
/* 805C2EF8  7F A3 EB 78 */	mr r3, r29
/* 805C2EFC  38 C0 00 50 */	li r6, 0x50
/* 805C2F00  38 E0 00 50 */	li r7, 0x50
/* 805C2F04  39 00 00 E6 */	li r8, 0xe6
/* 805C2F08  39 20 00 FF */	li r9, 0xff
/* 805C2F0C  39 40 00 00 */	li r10, 0
/* 805C2F10  4B DE D1 99 */	bl mFont_SetLineStrings
/* 805C2F14  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C2F18  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C2F1C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805C2F20  39 61 00 30 */	addi r11, r1, 0x30
/* 805C2F24  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805C2F28  4B AD 7F E9 */	bl func_8009AF10
/* 805C2F2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C2F30  7C 08 03 A6 */	mtlr r0
/* 805C2F34  38 21 00 50 */	addi r1, r1, 0x50
/* 805C2F38  4E 80 00 20 */	blr 
