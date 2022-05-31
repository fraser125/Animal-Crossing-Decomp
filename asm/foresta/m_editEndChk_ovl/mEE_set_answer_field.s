lbl_805D7DA8:
/* 805D7DA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805D7DAC  7C 08 02 A6 */	mflr r0
/* 805D7DB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805D7DB4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805D7DB8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805D7DBC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805D7DC0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805D7DC4  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 805D7DC8  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 805D7DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D7DD0  4B AC 31 01 */	bl func_8009AED0
/* 805D7DD4  7C 7C 1B 78 */	mr r28, r3
/* 805D7DD8  3C 60 80 65 */	lis r3, lit_485@ha /* 0x8064B1F4@ha */
/* 805D7DDC  80 DC 00 2C */	lwz r6, 0x2c(r28)
/* 805D7DE0  FF A0 08 90 */	fmr f29, f1
/* 805D7DE4  C0 23 B1 F4 */	lfs f1, lit_485@l(r3)  /* 0x8064B1F4@l */
/* 805D7DE8  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064B1D8@ha */
/* 805D7DEC  80 C6 09 A4 */	lwz r6, 0x9a4(r6)
/* 805D7DF0  FF C0 10 90 */	fmr f30, f2
/* 805D7DF4  FC 40 08 90 */	fmr f2, f1
/* 805D7DF8  C0 63 B1 D8 */	lfs f3, lit_439@l(r3)  /* 0x8064B1D8@l */
/* 805D7DFC  7C 9D 23 78 */	mr r29, r4
/* 805D7E00  C3 E6 00 04 */	lfs f31, 4(r6)
/* 805D7E04  7C BE 2B 78 */	mr r30, r5
/* 805D7E08  38 60 00 00 */	li r3, 0
/* 805D7E0C  4B E3 45 E1 */	bl Matrix_scale
/* 805D7E10  3C 60 80 65 */	lis r3, lit_486@ha /* 0x8064B1F8@ha */
/* 805D7E14  FC 20 E8 90 */	fmr f1, f29
/* 805D7E18  C0 63 B1 F8 */	lfs f3, lit_486@l(r3)  /* 0x8064B1F8@l */
/* 805D7E1C  FC 40 F0 90 */	fmr f2, f30
/* 805D7E20  38 60 00 01 */	li r3, 1
/* 805D7E24  4B E3 44 DD */	bl Matrix_translate
/* 805D7E28  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064B1D8@ha */
/* 805D7E2C  FC 20 F8 90 */	fmr f1, f31
/* 805D7E30  C0 63 B1 D8 */	lfs f3, lit_439@l(r3)  /* 0x8064B1D8@l */
/* 805D7E34  FC 40 F8 90 */	fmr f2, f31
/* 805D7E38  38 60 00 01 */	li r3, 1
/* 805D7E3C  4B E3 45 B1 */	bl Matrix_scale
/* 805D7E40  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D7E44  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 805D7E48  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D7E4C  7F A3 EB 78 */	mr r3, r29
/* 805D7E50  90 1F 00 00 */	stw r0, 0(r31)
/* 805D7E54  4B E3 55 81 */	bl _Matrix_to_Mtx_new
/* 805D7E58  90 7F 00 04 */	stw r3, 4(r31)
/* 805D7E5C  3C A0 DE 00 */	lis r5, 0xde00
/* 805D7E60  3C 80 80 A6 */	lis r4, lat_kakunin_DL_mode@ha /* 0x80A58970@ha */
/* 805D7E64  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064B1D8@ha */
/* 805D7E68  90 BF 00 08 */	stw r5, 8(r31)
/* 805D7E6C  38 04 89 70 */	addi r0, r4, lat_kakunin_DL_mode@l /* 0x80A58970@l */
/* 805D7E70  C0 63 B1 D8 */	lfs f3, lit_439@l(r3)  /* 0x8064B1D8@l */
/* 805D7E74  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805D7E78  FC 03 F8 00 */	fcmpu cr0, f3, f31
/* 805D7E7C  90 BF 00 10 */	stw r5, 0x10(r31)
/* 805D7E80  80 1E 00 04 */	lwz r0, 4(r30)
/* 805D7E84  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805D7E88  3B FF 00 18 */	addi r31, r31, 0x18
/* 805D7E8C  40 82 00 A0 */	bne lbl_805D7F2C
/* 805D7E90  3C 60 80 65 */	lis r3, lit_485@ha /* 0x8064B1F4@ha */
/* 805D7E94  38 83 B1 F4 */	addi r4, r3, lit_485@l /* 0x8064B1F4@l */
/* 805D7E98  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D7E9C  38 60 00 00 */	li r3, 0
/* 805D7EA0  FC 40 08 90 */	fmr f2, f1
/* 805D7EA4  4B E3 45 49 */	bl Matrix_scale
/* 805D7EA8  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805D7EAC  3C 00 43 30 */	lis r0, 0x4330
/* 805D7EB0  3C 60 80 65 */	lis r3, lit_520@ha /* 0x8064B1FC@ha */
/* 805D7EB4  3C C0 80 65 */	lis r6, lit_485@ha /* 0x8064B1F4@ha */
/* 805D7EB8  80 84 09 A4 */	lwz r4, 0x9a4(r4)
/* 805D7EBC  38 A3 B1 FC */	addi r5, r3, lit_520@l /* 0x8064B1FC@l */
/* 805D7EC0  38 E6 B1 F4 */	addi r7, r6, lit_485@l /* 0x8064B1F4@l */
/* 805D7EC4  3C 60 80 65 */	lis r3, lit_486@ha /* 0x8064B1F8@ha */
/* 805D7EC8  88 C4 00 01 */	lbz r6, 1(r4)
/* 805D7ECC  38 83 B1 F8 */	addi r4, r3, lit_486@l /* 0x8064B1F8@l */
/* 805D7ED0  90 01 00 08 */	stw r0, 8(r1)
/* 805D7ED4  FC 20 E8 90 */	fmr f1, f29
/* 805D7ED8  C8 45 00 00 */	lfd f2, 0(r5)
/* 805D7EDC  38 60 00 01 */	li r3, 1
/* 805D7EE0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805D7EE4  C0 87 00 00 */	lfs f4, 0(r7)
/* 805D7EE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D7EEC  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D7EF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D7EF4  EC 04 00 32 */	fmuls f0, f4, f0
/* 805D7EF8  EC 5E 00 28 */	fsubs f2, f30, f0
/* 805D7EFC  4B E3 44 05 */	bl Matrix_translate
/* 805D7F00  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D7F04  7F A3 EB 78 */	mr r3, r29
/* 805D7F08  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D7F0C  90 1F 00 00 */	stw r0, 0(r31)
/* 805D7F10  4B E3 54 C5 */	bl _Matrix_to_Mtx_new
/* 805D7F14  90 7F 00 04 */	stw r3, 4(r31)
/* 805D7F18  3C 00 DE 00 */	lis r0, 0xde00
/* 805D7F1C  90 1F 00 08 */	stw r0, 8(r31)
/* 805D7F20  80 1E 00 08 */	lwz r0, 8(r30)
/* 805D7F24  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805D7F28  3B FF 00 10 */	addi r31, r31, 0x10
lbl_805D7F2C:
/* 805D7F2C  93 FD 02 D0 */	stw r31, 0x2d0(r29)
/* 805D7F30  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805D7F34  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805D7F38  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805D7F3C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805D7F40  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 805D7F44  39 61 00 20 */	addi r11, r1, 0x20
/* 805D7F48  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 805D7F4C  4B AC 2F D1 */	bl func_8009AF1C
/* 805D7F50  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805D7F54  7C 08 03 A6 */	mtlr r0
/* 805D7F58  38 21 00 50 */	addi r1, r1, 0x50
/* 805D7F5C  4E 80 00 20 */	blr 
