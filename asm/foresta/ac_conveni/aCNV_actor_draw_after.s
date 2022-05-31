lbl_805AB5B4:
/* 805AB5B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AB5B8  7C 08 02 A6 */	mflr r0
/* 805AB5BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AB5C0  39 61 00 30 */	addi r11, r1, 0x30
/* 805AB5C4  4B AE F9 01 */	bl func_8009AEC4
/* 805AB5C8  2C 05 00 06 */	cmpwi r5, 6
/* 805AB5CC  83 C3 00 00 */	lwz r30, 0(r3)
/* 805AB5D0  7D 1D 43 78 */	mr r29, r8
/* 805AB5D4  40 82 00 E0 */	bne lbl_805AB6B4
/* 805AB5D8  7F C3 F3 78 */	mr r3, r30
/* 805AB5DC  4B E6 1D F9 */	bl _Matrix_to_Mtx_new
/* 805AB5E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805AB5E4  41 82 00 D0 */	beq lbl_805AB6B4
/* 805AB5E8  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064A630@ha */
/* 805AB5EC  C0 5D 02 C8 */	lfs f2, 0x2c8(r29)
/* 805AB5F0  C0 03 A6 30 */	lfs f0, lit_488@l(r3)  /* 0x8064A630@l */
/* 805AB5F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805AB5F8  40 81 00 38 */	ble lbl_805AB630
/* 805AB5FC  3C 60 80 65 */	lis r3, lit_726@ha /* 0x8064A65C@ha */
/* 805AB600  3C 80 80 65 */	lis r4, lit_686@ha /* 0x8064A654@ha */
/* 805AB604  C0 03 A6 5C */	lfs f0, lit_726@l(r3)  /* 0x8064A65C@l */
/* 805AB608  3B 60 00 FF */	li r27, 0xff
/* 805AB60C  C0 24 A6 54 */	lfs f1, lit_686@l(r4)  /* 0x8064A654@l */
/* 805AB610  3B 40 00 FF */	li r26, 0xff
/* 805AB614  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805AB618  3B 20 00 DC */	li r25, 0xdc
/* 805AB61C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AB620  FC 00 00 1E */	fctiwz f0, f0
/* 805AB624  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AB628  83 81 00 0C */	lwz r28, 0xc(r1)
/* 805AB62C  48 00 00 14 */	b lbl_805AB640
lbl_805AB630:
/* 805AB630  3B 80 00 00 */	li r28, 0
/* 805AB634  3B 60 00 00 */	li r27, 0
/* 805AB638  3B 40 00 00 */	li r26, 0
/* 805AB63C  3B 20 00 00 */	li r25, 0
lbl_805AB640:
/* 805AB640  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805AB644  7F C3 F3 78 */	mr r3, r30
/* 805AB648  20 00 00 03 */	subfic r0, r0, 3
/* 805AB64C  7C 00 00 34 */	cntlzw r0, r0
/* 805AB650  54 1D D9 7E */	srwi r29, r0, 5
/* 805AB654  4B E3 9B 05 */	bl _texture_z_light_fog_prim_xlu
/* 805AB658  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805AB65C  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 805AB660  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 805AB664  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805AB668  90 66 00 00 */	stw r3, 0(r6)
/* 805AB66C  57 40 82 1E */	rlwinm r0, r26, 0x10, 8, 0xf
/* 805AB670  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 805AB674  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805AB678  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 805AB67C  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C4930@ha */
/* 805AB680  90 06 00 04 */	stw r0, 4(r6)
/* 805AB684  3C 80 DE 00 */	lis r4, 0xde00
/* 805AB688  57 A0 10 3A */	slwi r0, r29, 2
/* 805AB68C  38 63 49 30 */	addi r3, r3, mdl@l /* 0x806C4930@l */
/* 805AB690  90 A6 00 08 */	stw r5, 8(r6)
/* 805AB694  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805AB698  38 C6 00 10 */	addi r6, r6, 0x10
/* 805AB69C  7C C5 33 78 */	mr r5, r6
/* 805AB6A0  90 86 00 00 */	stw r4, 0(r6)
/* 805AB6A4  38 C6 00 08 */	addi r6, r6, 8
/* 805AB6A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805AB6AC  90 05 00 04 */	stw r0, 4(r5)
/* 805AB6B0  90 DE 02 E0 */	stw r6, 0x2e0(r30)
lbl_805AB6B4:
/* 805AB6B4  38 60 00 01 */	li r3, 1
/* 805AB6B8  39 61 00 30 */	addi r11, r1, 0x30
/* 805AB6BC  4B AE F8 55 */	bl func_8009AF10
/* 805AB6C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AB6C4  7C 08 03 A6 */	mtlr r0
/* 805AB6C8  38 21 00 30 */	addi r1, r1, 0x30
/* 805AB6CC  4E 80 00 20 */	blr 
