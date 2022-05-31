lbl_805A9178:
/* 805A9178  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A917C  7C 08 02 A6 */	mflr r0
/* 805A9180  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A9184  39 61 00 30 */	addi r11, r1, 0x30
/* 805A9188  4B AF 1D 3D */	bl func_8009AEC4
/* 805A918C  2C 05 00 05 */	cmpwi r5, 5
/* 805A9190  83 C3 00 00 */	lwz r30, 0(r3)
/* 805A9194  7D 1D 43 78 */	mr r29, r8
/* 805A9198  40 82 00 E0 */	bne lbl_805A9278
/* 805A919C  7F C3 F3 78 */	mr r3, r30
/* 805A91A0  4B E6 42 35 */	bl _Matrix_to_Mtx_new
/* 805A91A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A91A8  41 82 00 D0 */	beq lbl_805A9278
/* 805A91AC  3C 60 80 65 */	lis r3, lit_472@ha /* 0x8064A550@ha */
/* 805A91B0  C0 5D 02 C8 */	lfs f2, 0x2c8(r29)
/* 805A91B4  C0 03 A5 50 */	lfs f0, lit_472@l(r3)  /* 0x8064A550@l */
/* 805A91B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A91BC  40 81 00 38 */	ble lbl_805A91F4
/* 805A91C0  3C 60 80 65 */	lis r3, lit_768@ha /* 0x8064A570@ha */
/* 805A91C4  3C 80 80 65 */	lis r4, lit_726@ha /* 0x8064A564@ha */
/* 805A91C8  C0 03 A5 70 */	lfs f0, lit_768@l(r3)  /* 0x8064A570@l */
/* 805A91CC  3B 60 00 FF */	li r27, 0xff
/* 805A91D0  C0 24 A5 64 */	lfs f1, lit_726@l(r4)  /* 0x8064A564@l */
/* 805A91D4  3B 40 00 FF */	li r26, 0xff
/* 805A91D8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805A91DC  3B 20 00 96 */	li r25, 0x96
/* 805A91E0  EC 01 00 2A */	fadds f0, f1, f0
/* 805A91E4  FC 00 00 1E */	fctiwz f0, f0
/* 805A91E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A91EC  83 81 00 0C */	lwz r28, 0xc(r1)
/* 805A91F0  48 00 00 14 */	b lbl_805A9204
lbl_805A91F4:
/* 805A91F4  3B 80 00 00 */	li r28, 0
/* 805A91F8  3B 60 00 00 */	li r27, 0
/* 805A91FC  3B 40 00 00 */	li r26, 0
/* 805A9200  3B 20 00 00 */	li r25, 0
lbl_805A9204:
/* 805A9204  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805A9208  7F C3 F3 78 */	mr r3, r30
/* 805A920C  20 00 00 03 */	subfic r0, r0, 3
/* 805A9210  7C 00 00 34 */	cntlzw r0, r0
/* 805A9214  54 1D D9 7E */	srwi r29, r0, 5
/* 805A9218  4B E3 BF 19 */	bl _texture_z_light_fog_prim_shadow
/* 805A921C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805A9220  80 DE 03 00 */	lwz r6, 0x300(r30)
/* 805A9224  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 805A9228  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805A922C  90 66 00 00 */	stw r3, 0(r6)
/* 805A9230  57 40 82 1E */	rlwinm r0, r26, 0x10, 8, 0xf
/* 805A9234  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 805A9238  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805A923C  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 805A9240  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C457C@ha */
/* 805A9244  90 06 00 04 */	stw r0, 4(r6)
/* 805A9248  3C 80 DE 00 */	lis r4, 0xde00
/* 805A924C  57 A0 10 3A */	slwi r0, r29, 2
/* 805A9250  38 63 45 7C */	addi r3, r3, mdl@l /* 0x806C457C@l */
/* 805A9254  90 A6 00 08 */	stw r5, 8(r6)
/* 805A9258  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805A925C  38 C6 00 10 */	addi r6, r6, 0x10
/* 805A9260  7C C5 33 78 */	mr r5, r6
/* 805A9264  90 86 00 00 */	stw r4, 0(r6)
/* 805A9268  38 C6 00 08 */	addi r6, r6, 8
/* 805A926C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A9270  90 05 00 04 */	stw r0, 4(r5)
/* 805A9274  90 DE 03 00 */	stw r6, 0x300(r30)
lbl_805A9278:
/* 805A9278  38 60 00 01 */	li r3, 1
/* 805A927C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A9280  4B AF 1C 91 */	bl func_8009AF10
/* 805A9284  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A9288  7C 08 03 A6 */	mtlr r0
/* 805A928C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A9290  4E 80 00 20 */	blr 
