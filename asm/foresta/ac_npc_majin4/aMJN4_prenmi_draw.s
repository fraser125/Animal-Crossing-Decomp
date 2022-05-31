lbl_80558DDC:
/* 80558DDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80558DE0  7C 08 02 A6 */	mflr r0
/* 80558DE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80558DE8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80558DEC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80558DF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80558DF4  4B B4 20 E1 */	bl func_8009AED4
/* 80558DF8  3C 60 81 1F */	lis r3, data_811EC1F8@ha /* 0x811EC1F8@ha */
/* 80558DFC  83 E4 00 00 */	lwz r31, 0(r4)
/* 80558E00  88 83 C1 F8 */	lbz r4, data_811EC1F8@l(r3)  /* 0x811EC1F8@l */
/* 80558E04  28 04 00 00 */	cmplwi r4, 0
/* 80558E08  41 82 01 B8 */	beq lbl_80558FC0
/* 80558E0C  80 1F 02 C0 */	lwz r0, 0x2c0(r31)
/* 80558E10  38 61 00 10 */	addi r3, r1, 0x10
/* 80558E14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80558E18  4B E8 CB 81 */	bl fade_black_draw
/* 80558E1C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80558E20  3C 60 81 1F */	lis r3, l_ResetTime@ha /* 0x811EC200@ha */
/* 80558E24  38 83 C2 00 */	addi r4, r3, l_ResetTime@l /* 0x811EC200@l */
/* 80558E28  90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 80558E2C  38 60 00 00 */	li r3, 0
/* 80558E30  80 04 00 00 */	lwz r0, 0(r4)
/* 80558E34  80 84 00 04 */	lwz r4, 4(r4)
/* 80558E38  7C 00 1A 78 */	xor r0, r0, r3
/* 80558E3C  7C 83 1A 78 */	xor r3, r4, r3
/* 80558E40  7C 60 03 79 */	or. r0, r3, r0
/* 80558E44  41 82 01 7C */	beq lbl_80558FC0
/* 80558E48  83 DF 02 C0 */	lwz r30, 0x2c0(r31)
/* 80558E4C  4B B0 72 15 */	bl osGetTime
/* 80558E50  3C C0 80 00 */	lis r6, 0x8000 /* 0x800000F8@ha */
/* 80558E54  3C A0 00 02 */	lis r5, 0x0002 /* 0x0001E848@ha */
/* 80558E58  80 C6 00 F8 */	lwz r6, 0x00F8(r6)  /* 0x800000F8@l */
/* 80558E5C  38 05 E8 48 */	addi r0, r5, 0xE848 /* 0x0001E848@l */
/* 80558E60  3C E0 81 1F */	lis r7, l_ResetTime@ha /* 0x811EC200@ha */
/* 80558E64  54 C5 F0 BE */	srwi r5, r6, 2
/* 80558E68  7C C5 03 96 */	divwu r6, r5, r0
/* 80558E6C  39 07 C2 00 */	addi r8, r7, l_ResetTime@l /* 0x811EC200@l */
/* 80558E70  80 E8 00 04 */	lwz r7, 4(r8)
/* 80558E74  80 08 00 00 */	lwz r0, 0(r8)
/* 80558E78  7C A7 20 10 */	subfc r5, r7, r4
/* 80558E7C  7C 00 19 10 */	subfe r0, r0, r3
/* 80558E80  54 03 18 38 */	slwi r3, r0, 3
/* 80558E84  54 A4 18 38 */	slwi r4, r5, 3
/* 80558E88  50 A3 1F 7E */	rlwimi r3, r5, 3, 0x1d, 0x1f
/* 80558E8C  38 A0 00 00 */	li r5, 0
/* 80558E90  4B B4 20 A1 */	bl __div2u
/* 80558E94  4B B4 25 21 */	bl __cvt_ull_flt
/* 80558E98  3C 60 80 65 */	lis r3, lit_681@ha /* 0x80649684@ha */
/* 80558E9C  C0 03 96 84 */	lfs f0, lit_681@l(r3)  /* 0x80649684@l */
/* 80558EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80558EA4  40 80 01 18 */	bge lbl_80558FBC
/* 80558EA8  EC 41 00 24 */	fdivs f2, f1, f0
/* 80558EAC  3C 60 80 65 */	lis r3, lit_685@ha /* 0x80649694@ha */
/* 80558EB0  C0 03 96 94 */	lfs f0, lit_685@l(r3)  /* 0x80649694@l */
/* 80558EB4  3C 80 80 65 */	lis r4, lit_684@ha /* 0x80649690@ha */
/* 80558EB8  C0 24 96 90 */	lfs f1, lit_684@l(r4)  /* 0x80649690@l */
/* 80558EBC  3C 00 E7 00 */	lis r0, 0xe700
/* 80558EC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80558EC4  3D 00 00 50 */	lis r8, 0x0050 /* 0x00504244@ha */
/* 80558EC8  90 1E 00 00 */	stw r0, 0(r30)
/* 80558ECC  39 40 00 00 */	li r10, 0
/* 80558ED0  3D 20 EF 00 */	lis r9, 0xEF00 /* 0xEF000C30@ha */
/* 80558ED4  3C 60 80 65 */	lis r3, lit_683@ha /* 0x8064968C@ha */
/* 80558ED8  EC 01 00 2A */	fadds f0, f1, f0
/* 80558EDC  C0 23 96 8C */	lfs f1, lit_683@l(r3)  /* 0x8064968C@l */
/* 80558EE0  3C 60 80 65 */	lis r3, lit_682@ha /* 0x80649688@ha */
/* 80558EE4  91 5E 00 04 */	stw r10, 4(r30)
/* 80558EE8  38 09 0C 30 */	addi r0, r9, 0x0C30 /* 0xEF000C30@l */
/* 80558EEC  39 08 42 44 */	addi r8, r8, 0x4244 /* 0x00504244@l */
/* 80558EF0  FC 00 00 1E */	fctiwz f0, f0
/* 80558EF4  38 A3 96 88 */	addi r5, r3, lit_682@l /* 0x80649688@l */
/* 80558EF8  90 1E 00 08 */	stw r0, 8(r30)
/* 80558EFC  3C E0 FD 00 */	lis r7, 0xFD00 /* 0xFCFFFFFF@ha */
/* 80558F00  3C 60 80 65 */	lis r3, lit_687@ha /* 0x8064969C@ha */
/* 80558F04  3C C0 FF FE */	lis r6, 0xFFFE /* 0xFFFDF6FB@ha */
/* 80558F08  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80558F0C  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80558F10  C0 25 00 00 */	lfs f1, 0(r5)
/* 80558F14  38 A7 FF FF */	addi r5, r7, 0xFFFF /* 0xFCFFFFFF@l */
/* 80558F18  91 1E 00 0C */	stw r8, 0xc(r30)
/* 80558F1C  3C 80 80 65 */	lis r4, lit_686@ha /* 0x80649698@ha */
/* 80558F20  EF E1 00 2A */	fadds f31, f1, f0
/* 80558F24  C0 03 96 9C */	lfs f0, lit_687@l(r3)  /* 0x8064969C@l */
/* 80558F28  38 66 F6 FB */	addi r3, r6, 0xF6FB /* 0xFFFDF6FB@l */
/* 80558F2C  90 BE 00 10 */	stw r5, 0x10(r30)
/* 80558F30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80558F34  EC 00 F8 2A */	fadds f0, f0, f31
/* 80558F38  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80558F3C  3C 60 FA 00 */	lis r3, 0xfa00
/* 80558F40  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80558F44  C0 24 96 98 */	lfs f1, lit_686@l(r4)  /* 0x80649698@l */
/* 80558F48  64 00 FF FF */	oris r0, r0, 0xffff
/* 80558F4C  90 7E 00 18 */	stw r3, 0x18(r30)
/* 80558F50  60 00 FF 00 */	ori r0, r0, 0xff00
/* 80558F54  EC 21 00 32 */	fmuls f1, f1, f0
/* 80558F58  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80558F5C  3B DE 00 20 */	addi r30, r30, 0x20
/* 80558F60  4B B4 1E 45 */	bl func_8009ADA4
/* 80558F64  3C 80 80 65 */	lis r4, lit_686@ha /* 0x80649698@ha */
/* 80558F68  7C 7D 1B 78 */	mr r29, r3
/* 80558F6C  C0 04 96 98 */	lfs f0, lit_686@l(r4)  /* 0x80649698@l */
/* 80558F70  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80558F74  4B B4 1E 31 */	bl func_8009ADA4
/* 80558F78  38 00 00 00 */	li r0, 0
/* 80558F7C  7C 65 1B 78 */	mr r5, r3
/* 80558F80  90 01 00 08 */	stw r0, 8(r1)
/* 80558F84  7F C3 F3 78 */	mr r3, r30
/* 80558F88  7F A7 EB 78 */	mr r7, r29
/* 80558F8C  38 80 00 00 */	li r4, 0
/* 80558F90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80558F94  38 C0 05 00 */	li r6, 0x500
/* 80558F98  39 00 00 00 */	li r8, 0
/* 80558F9C  39 20 00 00 */	li r9, 0
/* 80558FA0  39 40 00 00 */	li r10, 0
/* 80558FA4  4B E8 CA 7D */	bl gfx_gSPTextureRectangle1
/* 80558FA8  3C 80 E7 00 */	lis r4, 0xe700
/* 80558FAC  38 00 00 00 */	li r0, 0
/* 80558FB0  90 83 00 00 */	stw r4, 0(r3)
/* 80558FB4  3B C3 00 08 */	addi r30, r3, 8
/* 80558FB8  90 03 00 04 */	stw r0, 4(r3)
lbl_80558FBC:
/* 80558FBC  93 DF 02 C0 */	stw r30, 0x2c0(r31)
lbl_80558FC0:
/* 80558FC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80558FC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80558FC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80558FCC  4B B4 1F 55 */	bl func_8009AF20
/* 80558FD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80558FD4  7C 08 03 A6 */	mtlr r0
/* 80558FD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80558FDC  4E 80 00 20 */	blr 
