lbl_805B84C0:
/* 805B84C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B84C4  7C 08 02 A6 */	mflr r0
/* 805B84C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B84CC  39 61 00 40 */	addi r11, r1, 0x40
/* 805B84D0  4B AE 29 F5 */	bl func_8009AEC4
/* 805B84D4  2C 05 00 07 */	cmpwi r5, 7
/* 805B84D8  83 C3 00 00 */	lwz r30, 0(r3)
/* 805B84DC  7D 1D 43 78 */	mr r29, r8
/* 805B84E0  40 82 01 18 */	bne lbl_805B85F8
/* 805B84E4  7F C3 F3 78 */	mr r3, r30
/* 805B84E8  4B E5 4E ED */	bl _Matrix_to_Mtx_new
/* 805B84EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B84F0  41 82 01 08 */	beq lbl_805B85F8
/* 805B84F4  80 1D 02 B4 */	lwz r0, 0x2b4(r29)
/* 805B84F8  2C 00 3F FF */	cmpwi r0, 0x3fff
/* 805B84FC  40 82 00 18 */	bne lbl_805B8514
/* 805B8500  3B 80 00 78 */	li r28, 0x78
/* 805B8504  3B 60 00 FF */	li r27, 0xff
/* 805B8508  3B 40 00 FF */	li r26, 0xff
/* 805B850C  3B 20 00 96 */	li r25, 0x96
/* 805B8510  48 00 00 74 */	b lbl_805B8584
lbl_805B8514:
/* 805B8514  2C 00 00 00 */	cmpwi r0, 0
/* 805B8518  40 82 00 18 */	bne lbl_805B8530
/* 805B851C  3B 80 00 00 */	li r28, 0
/* 805B8520  3B 60 00 00 */	li r27, 0
/* 805B8524  3B 40 00 00 */	li r26, 0
/* 805B8528  3B 20 00 00 */	li r25, 0
/* 805B852C  48 00 00 58 */	b lbl_805B8584
lbl_805B8530:
/* 805B8530  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 805B8534  3C 00 43 30 */	lis r0, 0x4330
/* 805B8538  3C 80 80 65 */	lis r4, lit_658@ha /* 0x8064AA5C@ha */
/* 805B853C  90 61 00 0C */	stw r3, 0xc(r1)
/* 805B8540  38 64 AA 5C */	addi r3, r4, lit_658@l /* 0x8064AA5C@l */
/* 805B8544  3B 60 00 FF */	li r27, 0xff
/* 805B8548  90 01 00 08 */	stw r0, 8(r1)
/* 805B854C  3C 80 80 65 */	lis r4, lit_654@ha /* 0x8064AA50@ha */
/* 805B8550  C8 23 00 00 */	lfd f1, 0(r3)
/* 805B8554  3C 60 80 65 */	lis r3, lit_701@ha /* 0x8064AA64@ha */
/* 805B8558  C8 01 00 08 */	lfd f0, 8(r1)
/* 805B855C  3B 40 00 FF */	li r26, 0xff
/* 805B8560  C0 44 AA 50 */	lfs f2, lit_654@l(r4)  /* 0x8064AA50@l */
/* 805B8564  3B 20 00 96 */	li r25, 0x96
/* 805B8568  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B856C  C0 23 AA 64 */	lfs f1, lit_701@l(r3)  /* 0x8064AA64@l */
/* 805B8570  EC 02 00 32 */	fmuls f0, f2, f0
/* 805B8574  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B8578  FC 00 00 1E */	fctiwz f0, f0
/* 805B857C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B8580  83 81 00 14 */	lwz r28, 0x14(r1)
lbl_805B8584:
/* 805B8584  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805B8588  7F C3 F3 78 */	mr r3, r30
/* 805B858C  20 00 00 03 */	subfic r0, r0, 3
/* 805B8590  7C 00 00 34 */	cntlzw r0, r0
/* 805B8594  54 1D D9 7E */	srwi r29, r0, 5
/* 805B8598  4B E2 CB 99 */	bl _texture_z_light_fog_prim_shadow
/* 805B859C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805B85A0  80 DE 03 00 */	lwz r6, 0x300(r30)
/* 805B85A4  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 805B85A8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805B85AC  90 66 00 00 */	stw r3, 0(r6)
/* 805B85B0  57 40 82 1E */	rlwinm r0, r26, 0x10, 8, 0xf
/* 805B85B4  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 805B85B8  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805B85BC  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 805B85C0  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C6450@ha */
/* 805B85C4  90 06 00 04 */	stw r0, 4(r6)
/* 805B85C8  3C 80 DE 00 */	lis r4, 0xde00
/* 805B85CC  57 A0 10 3A */	slwi r0, r29, 2
/* 805B85D0  38 63 64 50 */	addi r3, r3, mdl@l /* 0x806C6450@l */
/* 805B85D4  90 A6 00 08 */	stw r5, 8(r6)
/* 805B85D8  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805B85DC  38 C6 00 10 */	addi r6, r6, 0x10
/* 805B85E0  7C C5 33 78 */	mr r5, r6
/* 805B85E4  90 86 00 00 */	stw r4, 0(r6)
/* 805B85E8  38 C6 00 08 */	addi r6, r6, 8
/* 805B85EC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805B85F0  90 05 00 04 */	stw r0, 4(r5)
/* 805B85F4  90 DE 03 00 */	stw r6, 0x300(r30)
lbl_805B85F8:
/* 805B85F8  38 60 00 01 */	li r3, 1
/* 805B85FC  39 61 00 40 */	addi r11, r1, 0x40
/* 805B8600  4B AE 29 11 */	bl func_8009AF10
/* 805B8604  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B8608  7C 08 03 A6 */	mtlr r0
/* 805B860C  38 21 00 40 */	addi r1, r1, 0x40
/* 805B8610  4E 80 00 20 */	blr 
