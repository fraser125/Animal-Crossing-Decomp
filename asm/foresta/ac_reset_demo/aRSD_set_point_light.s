lbl_80495D40:
/* 80495D40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80495D44  7C 08 02 A6 */	mflr r0
/* 80495D48  90 01 00 74 */	stw r0, 0x74(r1)
/* 80495D4C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80495D50  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80495D54  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80495D58  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80495D5C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80495D60  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80495D64  39 61 00 40 */	addi r11, r1, 0x40
/* 80495D68  4B C0 51 65 */	bl func_8009AECC
/* 80495D6C  7C 7E 1B 78 */	mr r30, r3
/* 80495D70  7C 9F 23 78 */	mr r31, r4
/* 80495D74  A0 03 01 7C */	lhz r0, 0x17c(r3)
/* 80495D78  28 00 00 01 */	cmplwi r0, 1
/* 80495D7C  40 82 01 54 */	bne lbl_80495ED0
/* 80495D80  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80495D84  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010B30@ha */
/* 80495D88  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80495D8C  3C 84 00 02 */	addis r4, r4, 2
/* 80495D90  38 03 0B 30 */	addi r0, r3, 0x0B30 /* 0x00010B30@l */
/* 80495D94  80 64 61 1C */	lwz r3, 0x611c(r4)
/* 80495D98  7C 03 00 00 */	cmpw r3, r0
/* 80495D9C  41 81 00 0C */	bgt lbl_80495DA8
/* 80495DA0  2C 03 46 50 */	cmpwi r3, 0x4650
/* 80495DA4  40 80 01 10 */	bge lbl_80495EB4
lbl_80495DA8:
/* 80495DA8  83 BE 01 80 */	lwz r29, 0x180(r30)
/* 80495DAC  A8 BD 08 B4 */	lha r5, 0x8b4(r29)
/* 80495DB0  A8 9D 00 DC */	lha r4, 0xdc(r29)
/* 80495DB4  A8 7D 08 B6 */	lha r3, 0x8b6(r29)
/* 80495DB8  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 80495DBC  7C 85 22 14 */	add r4, r5, r4
/* 80495DC0  7C 9C 07 34 */	extsh r28, r4
/* 80495DC4  7C 03 02 14 */	add r0, r3, r0
/* 80495DC8  7F 83 E3 78 */	mr r3, r28
/* 80495DCC  7C 1B 07 34 */	extsh r27, r0
/* 80495DD0  4B F2 4C CD */	bl cos_s
/* 80495DD4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644CA0@ha */
/* 80495DD8  7F 83 E3 78 */	mr r3, r28
/* 80495DDC  C0 04 4C A0 */	lfs f0, lit_472@l(r4)  /* 0x80644CA0@l */
/* 80495DE0  EF E0 00 72 */	fmuls f31, f0, f1
/* 80495DE4  4B F2 4D 0D */	bl sin_s
/* 80495DE8  3C 80 80 64 */	lis r4, data_80644C9C@ha /* 0x80644C9C@ha */
/* 80495DEC  7F 83 E3 78 */	mr r3, r28
/* 80495DF0  C0 04 4C 9C */	lfs f0, data_80644C9C@l(r4)  /* 0x80644C9C@l */
/* 80495DF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80495DF8  EF C0 F8 2A */	fadds f30, f0, f31
/* 80495DFC  4B F2 4C F5 */	bl sin_s
/* 80495E00  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644CA0@ha */
/* 80495E04  7F 83 E3 78 */	mr r3, r28
/* 80495E08  C0 04 4C A0 */	lfs f0, lit_472@l(r4)  /* 0x80644CA0@l */
/* 80495E0C  EF E0 00 72 */	fmuls f31, f0, f1
/* 80495E10  4B F2 4C 8D */	bl cos_s
/* 80495E14  3C 80 80 64 */	lis r4, data_80644C9C@ha /* 0x80644C9C@ha */
/* 80495E18  7F 63 DB 78 */	mr r3, r27
/* 80495E1C  C0 04 4C 9C */	lfs f0, data_80644C9C@l(r4)  /* 0x80644C9C@l */
/* 80495E20  EC 00 00 72 */	fmuls f0, f0, f1
/* 80495E24  EF A0 F8 28 */	fsubs f29, f0, f31
/* 80495E28  4B F2 4C C9 */	bl sin_s
/* 80495E2C  EF FD 00 72 */	fmuls f31, f29, f1
/* 80495E30  7F 63 DB 78 */	mr r3, r27
/* 80495E34  4B F2 4C 69 */	bl cos_s
/* 80495E38  EC 7D 00 72 */	fmuls f3, f29, f1
/* 80495E3C  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80495E40  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80495E44  38 7E 01 84 */	addi r3, r30, 0x184
/* 80495E48  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80495E4C  EC 42 F8 2A */	fadds f2, f2, f31
/* 80495E50  EC 21 F0 2A */	fadds f1, f1, f30
/* 80495E54  38 E0 00 FF */	li r7, 0xff
/* 80495E58  EC 00 18 2A */	fadds f0, f0, f3
/* 80495E5C  39 00 00 C8 */	li r8, 0xc8
/* 80495E60  FC 40 10 1E */	fctiwz f2, f2
/* 80495E64  39 20 00 00 */	li r9, 0
/* 80495E68  FC 20 08 1E */	fctiwz f1, f1
/* 80495E6C  39 40 00 5C */	li r10, 0x5c
/* 80495E70  FC 00 00 1E */	fctiwz f0, f0
/* 80495E74  D8 41 00 08 */	stfd f2, 8(r1)
/* 80495E78  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80495E7C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80495E80  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80495E84  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80495E88  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80495E8C  4B F2 5A 35 */	bl Light_point_ct
/* 80495E90  80 1E 01 94 */	lwz r0, 0x194(r30)
/* 80495E94  28 00 00 00 */	cmplwi r0, 0
/* 80495E98  40 82 00 38 */	bne lbl_80495ED0
/* 80495E9C  7F E3 FB 78 */	mr r3, r31
/* 80495EA0  38 9F 1D 90 */	addi r4, r31, 0x1d90
/* 80495EA4  38 BE 01 84 */	addi r5, r30, 0x184
/* 80495EA8  4B F2 62 D5 */	bl Global_light_list_new
/* 80495EAC  90 7E 01 94 */	stw r3, 0x194(r30)
/* 80495EB0  48 00 00 20 */	b lbl_80495ED0
lbl_80495EB4:
/* 80495EB4  80 9E 01 94 */	lwz r4, 0x194(r30)
/* 80495EB8  28 04 00 00 */	cmplwi r4, 0
/* 80495EBC  41 82 00 14 */	beq lbl_80495ED0
/* 80495EC0  38 7F 1D 90 */	addi r3, r31, 0x1d90
/* 80495EC4  4B F2 63 21 */	bl Global_light_list_delete
/* 80495EC8  38 00 00 00 */	li r0, 0
/* 80495ECC  90 1E 01 94 */	stw r0, 0x194(r30)
lbl_80495ED0:
/* 80495ED0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80495ED4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80495ED8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80495EDC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80495EE0  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80495EE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80495EE8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80495EEC  4B C0 50 2D */	bl func_8009AF18
/* 80495EF0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80495EF4  7C 08 03 A6 */	mtlr r0
/* 80495EF8  38 21 00 70 */	addi r1, r1, 0x70
/* 80495EFC  4E 80 00 20 */	blr 
