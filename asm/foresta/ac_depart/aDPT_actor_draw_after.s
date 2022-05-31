lbl_805AD3CC:
/* 805AD3CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AD3D0  7C 08 02 A6 */	mflr r0
/* 805AD3D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AD3D8  39 61 00 30 */	addi r11, r1, 0x30
/* 805AD3DC  4B AE DA E9 */	bl func_8009AEC4
/* 805AD3E0  2C 05 00 08 */	cmpwi r5, 8
/* 805AD3E4  83 C3 00 00 */	lwz r30, 0(r3)
/* 805AD3E8  7D 1D 43 78 */	mr r29, r8
/* 805AD3EC  40 82 00 E0 */	bne lbl_805AD4CC
/* 805AD3F0  7F C3 F3 78 */	mr r3, r30
/* 805AD3F4  4B E5 FF E1 */	bl _Matrix_to_Mtx_new
/* 805AD3F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805AD3FC  41 82 00 D0 */	beq lbl_805AD4CC
/* 805AD400  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064A6A8@ha */
/* 805AD404  C0 5D 02 C8 */	lfs f2, 0x2c8(r29)
/* 805AD408  C0 03 A6 A8 */	lfs f0, lit_488@l(r3)  /* 0x8064A6A8@l */
/* 805AD40C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805AD410  40 81 00 38 */	ble lbl_805AD448
/* 805AD414  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064A698@ha */
/* 805AD418  3C 80 80 65 */	lis r4, lit_689@ha /* 0x8064A6CC@ha */
/* 805AD41C  C0 03 A6 98 */	lfs f0, lit_462@l(r3)  /* 0x8064A698@l */
/* 805AD420  3B 60 00 FF */	li r27, 0xff
/* 805AD424  C0 24 A6 CC */	lfs f1, lit_689@l(r4)  /* 0x8064A6CC@l */
/* 805AD428  3B 40 00 FF */	li r26, 0xff
/* 805AD42C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805AD430  3B 20 00 DC */	li r25, 0xdc
/* 805AD434  EC 01 00 2A */	fadds f0, f1, f0
/* 805AD438  FC 00 00 1E */	fctiwz f0, f0
/* 805AD43C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AD440  83 81 00 0C */	lwz r28, 0xc(r1)
/* 805AD444  48 00 00 14 */	b lbl_805AD458
lbl_805AD448:
/* 805AD448  3B 80 00 00 */	li r28, 0
/* 805AD44C  3B 60 00 00 */	li r27, 0
/* 805AD450  3B 40 00 00 */	li r26, 0
/* 805AD454  3B 20 00 00 */	li r25, 0
lbl_805AD458:
/* 805AD458  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805AD45C  7F C3 F3 78 */	mr r3, r30
/* 805AD460  20 00 00 03 */	subfic r0, r0, 3
/* 805AD464  7C 00 00 34 */	cntlzw r0, r0
/* 805AD468  54 1D D9 7E */	srwi r29, r0, 5
/* 805AD46C  4B E3 7C ED */	bl _texture_z_light_fog_prim_xlu
/* 805AD470  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805AD474  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 805AD478  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 805AD47C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805AD480  90 66 00 00 */	stw r3, 0(r6)
/* 805AD484  57 40 82 1E */	rlwinm r0, r26, 0x10, 8, 0xf
/* 805AD488  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 805AD48C  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805AD490  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 805AD494  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C4CE8@ha */
/* 805AD498  90 06 00 04 */	stw r0, 4(r6)
/* 805AD49C  3C 80 DE 00 */	lis r4, 0xde00
/* 805AD4A0  57 A0 10 3A */	slwi r0, r29, 2
/* 805AD4A4  38 63 4C E8 */	addi r3, r3, mdl@l /* 0x806C4CE8@l */
/* 805AD4A8  90 A6 00 08 */	stw r5, 8(r6)
/* 805AD4AC  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805AD4B0  38 C6 00 10 */	addi r6, r6, 0x10
/* 805AD4B4  7C C5 33 78 */	mr r5, r6
/* 805AD4B8  90 86 00 00 */	stw r4, 0(r6)
/* 805AD4BC  38 C6 00 08 */	addi r6, r6, 8
/* 805AD4C0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805AD4C4  90 05 00 04 */	stw r0, 4(r5)
/* 805AD4C8  90 DE 02 E0 */	stw r6, 0x2e0(r30)
lbl_805AD4CC:
/* 805AD4CC  38 60 00 01 */	li r3, 1
/* 805AD4D0  39 61 00 30 */	addi r11, r1, 0x30
/* 805AD4D4  4B AE DA 3D */	bl func_8009AF10
/* 805AD4D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AD4DC  7C 08 03 A6 */	mtlr r0
/* 805AD4E0  38 21 00 30 */	addi r1, r1, 0x30
/* 805AD4E4  4E 80 00 20 */	blr 
