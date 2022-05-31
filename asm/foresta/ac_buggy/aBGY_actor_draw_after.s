lbl_805AA818:
/* 805AA818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AA81C  7C 08 02 A6 */	mflr r0
/* 805AA820  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AA824  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA828  4B AF 06 9D */	bl func_8009AEC4
/* 805AA82C  2C 05 00 07 */	cmpwi r5, 7
/* 805AA830  83 C3 00 00 */	lwz r30, 0(r3)
/* 805AA834  7D 1D 43 78 */	mr r29, r8
/* 805AA838  40 82 00 E0 */	bne lbl_805AA918
/* 805AA83C  7F C3 F3 78 */	mr r3, r30
/* 805AA840  4B E6 2B 95 */	bl _Matrix_to_Mtx_new
/* 805AA844  7C 7F 1B 79 */	or. r31, r3, r3
/* 805AA848  41 82 00 D0 */	beq lbl_805AA918
/* 805AA84C  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A5F0@ha */
/* 805AA850  C0 5D 02 C8 */	lfs f2, 0x2c8(r29)
/* 805AA854  C0 03 A5 F0 */	lfs f0, lit_466@l(r3)  /* 0x8064A5F0@l */
/* 805AA858  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805AA85C  40 81 00 38 */	ble lbl_805AA894
/* 805AA860  3C 60 80 65 */	lis r3, lit_769@ha /* 0x8064A614@ha */
/* 805AA864  3C 80 80 65 */	lis r4, lit_727@ha /* 0x8064A608@ha */
/* 805AA868  C0 03 A6 14 */	lfs f0, lit_769@l(r3)  /* 0x8064A614@l */
/* 805AA86C  3B 60 00 FF */	li r27, 0xff
/* 805AA870  C0 24 A6 08 */	lfs f1, lit_727@l(r4)  /* 0x8064A608@l */
/* 805AA874  3B 40 00 FF */	li r26, 0xff
/* 805AA878  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805AA87C  3B 20 00 96 */	li r25, 0x96
/* 805AA880  EC 01 00 2A */	fadds f0, f1, f0
/* 805AA884  FC 00 00 1E */	fctiwz f0, f0
/* 805AA888  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AA88C  83 81 00 0C */	lwz r28, 0xc(r1)
/* 805AA890  48 00 00 14 */	b lbl_805AA8A4
lbl_805AA894:
/* 805AA894  3B 80 00 00 */	li r28, 0
/* 805AA898  3B 60 00 00 */	li r27, 0
/* 805AA89C  3B 40 00 00 */	li r26, 0
/* 805AA8A0  3B 20 00 00 */	li r25, 0
lbl_805AA8A4:
/* 805AA8A4  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805AA8A8  7F C3 F3 78 */	mr r3, r30
/* 805AA8AC  20 00 00 03 */	subfic r0, r0, 3
/* 805AA8B0  7C 00 00 34 */	cntlzw r0, r0
/* 805AA8B4  54 1D D9 7E */	srwi r29, r0, 5
/* 805AA8B8  4B E3 A8 79 */	bl _texture_z_light_fog_prim_shadow
/* 805AA8BC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805AA8C0  80 DE 03 00 */	lwz r6, 0x300(r30)
/* 805AA8C4  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 805AA8C8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805AA8CC  90 66 00 00 */	stw r3, 0(r6)
/* 805AA8D0  57 40 82 1E */	rlwinm r0, r26, 0x10, 8, 0xf
/* 805AA8D4  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 805AA8D8  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805AA8DC  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 805AA8E0  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C4750@ha */
/* 805AA8E4  90 06 00 04 */	stw r0, 4(r6)
/* 805AA8E8  3C 80 DE 00 */	lis r4, 0xde00
/* 805AA8EC  57 A0 10 3A */	slwi r0, r29, 2
/* 805AA8F0  38 63 47 50 */	addi r3, r3, mdl@l /* 0x806C4750@l */
/* 805AA8F4  90 A6 00 08 */	stw r5, 8(r6)
/* 805AA8F8  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805AA8FC  38 C6 00 10 */	addi r6, r6, 0x10
/* 805AA900  7C C5 33 78 */	mr r5, r6
/* 805AA904  90 86 00 00 */	stw r4, 0(r6)
/* 805AA908  38 C6 00 08 */	addi r6, r6, 8
/* 805AA90C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805AA910  90 05 00 04 */	stw r0, 4(r5)
/* 805AA914  90 DE 03 00 */	stw r6, 0x300(r30)
lbl_805AA918:
/* 805AA918  38 60 00 01 */	li r3, 1
/* 805AA91C  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA920  4B AF 05 F1 */	bl func_8009AF10
/* 805AA924  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AA928  7C 08 03 A6 */	mtlr r0
/* 805AA92C  38 21 00 30 */	addi r1, r1, 0x30
/* 805AA930  4E 80 00 20 */	blr 
