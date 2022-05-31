lbl_8048B3C8:
/* 8048B3C8  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 8048B3CC  7C 08 02 A6 */	mflr r0
/* 8048B3D0  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 8048B3D4  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 8048B3D8  4B C0 FA F5 */	bl func_8009AECC
/* 8048B3DC  7C 7E 1B 78 */	mr r30, r3
/* 8048B3E0  38 00 00 00 */	li r0, 0
/* 8048B3E4  80 63 01 78 */	lwz r3, 0x178(r3)
/* 8048B3E8  80 9E 01 F8 */	lwz r4, 0x1f8(r30)
/* 8048B3EC  80 63 00 00 */	lwz r3, 0(r3)
/* 8048B3F0  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 8048B3F4  90 01 00 08 */	stw r0, 8(r1)
/* 8048B3F8  88 1E 01 C8 */	lbz r0, 0x1c8(r30)
/* 8048B3FC  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048B400  28 00 00 01 */	cmplwi r0, 1
/* 8048B404  40 82 00 2C */	bne lbl_8048B430
/* 8048B408  80 1E 09 30 */	lwz r0, 0x930(r30)
/* 8048B40C  38 61 00 0C */	addi r3, r1, 0xc
/* 8048B410  38 81 00 08 */	addi r4, r1, 8
/* 8048B414  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8048B418  7C BE 02 14 */	add r5, r30, r0
/* 8048B41C  80 A5 02 1C */	lwz r5, 0x21c(r5)
/* 8048B420  88 A5 00 56 */	lbz r5, 0x56(r5)
/* 8048B424  4B FF FE D1 */	bl aQMgr_actor_get_errand_reward
/* 8048B428  3B 81 00 0C */	addi r28, r1, 0xc
/* 8048B42C  48 00 00 10 */	b lbl_8048B43C
lbl_8048B430:
/* 8048B430  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8048B434  3B 84 00 06 */	addi r28, r4, 6
/* 8048B438  90 01 00 08 */	stw r0, 8(r1)
lbl_8048B43C:
/* 8048B43C  38 61 00 14 */	addi r3, r1, 0x14
/* 8048B440  3B 60 00 00 */	li r27, 0
/* 8048B444  3B A0 00 00 */	li r29, 0
/* 8048B448  38 80 01 90 */	li r4, 0x190
/* 8048B44C  4B BD 1C 1D */	bl bzero
/* 8048B450  7F 83 E3 78 */	mr r3, r28
/* 8048B454  38 81 00 14 */	addi r4, r1, 0x14
/* 8048B458  38 C0 00 00 */	li r6, 0
lbl_8048B45C:
/* 8048B45C  88 A3 00 00 */	lbz r5, 0(r3)
/* 8048B460  7C A9 03 A6 */	mtctr r5
/* 8048B464  2C 05 00 00 */	cmpwi r5, 0
/* 8048B468  41 82 00 20 */	beq lbl_8048B488
lbl_8048B46C:
/* 8048B46C  2C 1B 00 64 */	cmpwi r27, 0x64
/* 8048B470  40 80 00 18 */	bge lbl_8048B488
/* 8048B474  7C C4 E9 2E */	stwx r6, r4, r29
/* 8048B478  3B 7B 00 01 */	addi r27, r27, 1
/* 8048B47C  3B BD 00 04 */	addi r29, r29, 4
/* 8048B480  38 A5 FF FF */	addi r5, r5, -1
/* 8048B484  42 00 FF E8 */	bdnz lbl_8048B46C
lbl_8048B488:
/* 8048B488  38 C6 00 01 */	addi r6, r6, 1
/* 8048B48C  38 63 00 01 */	addi r3, r3, 1
/* 8048B490  2C 06 00 08 */	cmpwi r6, 8
/* 8048B494  41 80 FF C8 */	blt lbl_8048B45C
/* 8048B498  4B BD 18 5D */	bl fqrand
/* 8048B49C  3C 80 80 64 */	lis r4, lit_969@ha /* 0x80644BCC@ha */
/* 8048B4A0  38 61 00 14 */	addi r3, r1, 0x14
/* 8048B4A4  C0 04 4B CC */	lfs f0, lit_969@l(r4)  /* 0x80644BCC@l */
/* 8048B4A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B4AC  FC 00 00 1E */	fctiwz f0, f0
/* 8048B4B0  D8 01 01 A8 */	stfd f0, 0x1a8(r1)
/* 8048B4B4  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 8048B4B8  54 00 10 3A */	slwi r0, r0, 2
/* 8048B4BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048B4C0  90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 8048B4C4  80 BE 01 E4 */	lwz r5, 0x1e4(r30)
/* 8048B4C8  2C 05 00 05 */	cmpwi r5, 5
/* 8048B4CC  40 82 00 20 */	bne lbl_8048B4EC
/* 8048B4D0  80 61 00 08 */	lwz r3, 8(r1)
/* 8048B4D4  4B FF FB 91 */	bl aQMgr_actor_get_pay
/* 8048B4D8  90 61 00 08 */	stw r3, 8(r1)
/* 8048B4DC  38 00 21 00 */	li r0, 0x2100
/* 8048B4E0  90 7E 01 EC */	stw r3, 0x1ec(r30)
/* 8048B4E4  B0 1E 01 E8 */	sth r0, 0x1e8(r30)
/* 8048B4E8  48 00 00 60 */	b lbl_8048B548
lbl_8048B4EC:
/* 8048B4EC  2C 05 00 06 */	cmpwi r5, 6
/* 8048B4F0  40 82 00 40 */	bne lbl_8048B530
/* 8048B4F4  28 1F 00 00 */	cmplwi r31, 0
/* 8048B4F8  41 82 00 2C */	beq lbl_8048B524
/* 8048B4FC  A0 1E 09 58 */	lhz r0, 0x958(r30)
/* 8048B500  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8048B504  40 82 00 18 */	bne lbl_8048B51C
/* 8048B508  4B FF FE 75 */	bl aQMgr_actor_get_other_pl_cloth
/* 8048B50C  B0 7E 01 E8 */	sth r3, 0x1e8(r30)
/* 8048B510  38 00 00 02 */	li r0, 2
/* 8048B514  90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 8048B518  48 00 00 30 */	b lbl_8048B548
lbl_8048B51C:
/* 8048B51C  B0 1E 01 E8 */	sth r0, 0x1e8(r30)
/* 8048B520  48 00 00 28 */	b lbl_8048B548
lbl_8048B524:
/* 8048B524  38 00 24 01 */	li r0, 0x2401
/* 8048B528  B0 1E 01 E8 */	sth r0, 0x1e8(r30)
/* 8048B52C  48 00 00 1C */	b lbl_8048B548
lbl_8048B530:
/* 8048B530  7F E4 FB 78 */	mr r4, r31
/* 8048B534  38 7E 01 E8 */	addi r3, r30, 0x1e8
/* 8048B538  38 C0 00 00 */	li r6, 0
/* 8048B53C  38 E0 00 00 */	li r7, 0
/* 8048B540  39 00 00 08 */	li r8, 8
/* 8048B544  4B F5 8E E9 */	bl mQst_GetGoods_common
lbl_8048B548:
/* 8048B548  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 8048B54C  4B C0 F9 CD */	bl func_8009AF18
/* 8048B550  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 8048B554  7C 08 03 A6 */	mtlr r0
/* 8048B558  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8048B55C  4E 80 00 20 */	blr 
