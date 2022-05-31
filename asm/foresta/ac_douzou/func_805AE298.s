lbl_805AE298:
/* 805AE298  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AE29C  7C 08 02 A6 */	mflr r0
/* 805AE2A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AE2A4  39 61 00 30 */	addi r11, r1, 0x30
/* 805AE2A8  4B AE CC 1D */	bl func_8009AEC4
/* 805AE2AC  7C B9 2B 78 */	mr r25, r5
/* 805AE2B0  7D 1B 43 78 */	mr r27, r8
/* 805AE2B4  2C 19 00 02 */	cmpwi r25, 2
/* 805AE2B8  3C 80 80 6C */	lis r4, data_806C4CF0@ha /* 0x806C4CF0@ha */
/* 805AE2BC  83 E3 00 00 */	lwz r31, 0(r3)
/* 805AE2C0  7C DA 33 78 */	mr r26, r6
/* 805AE2C4  83 88 02 BC */	lwz r28, 0x2bc(r8)
/* 805AE2C8  3B C4 4C F0 */	addi r30, r4, data_806C4CF0@l /* 0x806C4CF0@l */
/* 805AE2CC  3B A0 00 00 */	li r29, 0
/* 805AE2D0  40 82 00 20 */	bne lbl_805AE2F0
/* 805AE2D4  57 80 10 3A */	slwi r0, r28, 2
/* 805AE2D8  38 7E 02 14 */	addi r3, r30, 0x214
/* 805AE2DC  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AE2E0  38 60 00 01 */	li r3, 1
/* 805AE2E4  FC 40 08 90 */	fmr f2, f1
/* 805AE2E8  FC 60 08 90 */	fmr f3, f1
/* 805AE2EC  4B E5 E1 01 */	bl Matrix_scale
lbl_805AE2F0:
/* 805AE2F0  38 19 FF FE */	addi r0, r25, -2
/* 805AE2F4  28 00 00 01 */	cmplwi r0, 1
/* 805AE2F8  40 81 00 0C */	ble lbl_805AE304
/* 805AE2FC  2C 19 00 04 */	cmpwi r25, 4
/* 805AE300  40 82 00 24 */	bne lbl_805AE324
lbl_805AE304:
/* 805AE304  80 1B 02 B8 */	lwz r0, 0x2b8(r27)
/* 805AE308  2C 00 00 08 */	cmpwi r0, 8
/* 805AE30C  41 80 00 10 */	blt lbl_805AE31C
/* 805AE310  38 00 00 00 */	li r0, 0
/* 805AE314  90 1A 00 00 */	stw r0, 0(r26)
/* 805AE318  48 00 00 3C */	b lbl_805AE354
lbl_805AE31C:
/* 805AE31C  3B A0 00 01 */	li r29, 1
/* 805AE320  48 00 00 34 */	b lbl_805AE354
lbl_805AE324:
/* 805AE324  38 19 FF FB */	addi r0, r25, -5
/* 805AE328  28 00 00 01 */	cmplwi r0, 1
/* 805AE32C  40 81 00 0C */	ble lbl_805AE338
/* 805AE330  2C 19 00 07 */	cmpwi r25, 7
/* 805AE334  40 82 00 20 */	bne lbl_805AE354
lbl_805AE338:
/* 805AE338  80 1B 02 B8 */	lwz r0, 0x2b8(r27)
/* 805AE33C  2C 00 00 07 */	cmpwi r0, 7
/* 805AE340  41 81 00 10 */	bgt lbl_805AE350
/* 805AE344  38 00 00 00 */	li r0, 0
/* 805AE348  90 1A 00 00 */	stw r0, 0(r26)
/* 805AE34C  48 00 00 08 */	b lbl_805AE354
lbl_805AE350:
/* 805AE350  3B A0 00 01 */	li r29, 1
lbl_805AE354:
/* 805AE354  2C 1D 00 00 */	cmpwi r29, 0
/* 805AE358  40 82 00 0C */	bne lbl_805AE364
/* 805AE35C  2C 19 00 08 */	cmpwi r25, 8
/* 805AE360  40 82 00 94 */	bne lbl_805AE3F4
lbl_805AE364:
/* 805AE364  80 7F 02 D0 */	lwz r3, 0x2d0(r31)
/* 805AE368  3C 80 E7 00 */	lis r4, 0xe700
/* 805AE36C  38 00 00 00 */	li r0, 0
/* 805AE370  3C C0 FB 00 */	lis r6, 0xfb00
/* 805AE374  90 83 00 00 */	stw r4, 0(r3)
/* 805AE378  57 89 10 3A */	slwi r9, r28, 2
/* 805AE37C  38 FE 02 04 */	addi r7, r30, 0x204
/* 805AE380  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 805AE384  90 03 00 04 */	stw r0, 4(r3)
/* 805AE388  7D 07 4A 14 */	add r8, r7, r9
/* 805AE38C  38 05 00 FF */	addi r0, r5, 0x00FF /* 0xFA0000FF@l */
/* 805AE390  38 9E 01 F4 */	addi r4, r30, 0x1f4
/* 805AE394  90 C3 00 08 */	stw r6, 8(r3)
/* 805AE398  7C C4 4A 14 */	add r6, r4, r9
/* 805AE39C  88 A8 00 01 */	lbz r5, 1(r8)
/* 805AE3A0  7C E7 48 AE */	lbzx r7, r7, r9
/* 805AE3A4  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 805AE3A8  89 08 00 02 */	lbz r8, 2(r8)
/* 805AE3AC  50 E5 C0 0E */	rlwimi r5, r7, 0x18, 0, 7
/* 805AE3B0  51 05 44 2E */	rlwimi r5, r8, 8, 0x10, 0x17
/* 805AE3B4  60 A5 00 FF */	ori r5, r5, 0xff
/* 805AE3B8  90 A3 00 0C */	stw r5, 0xc(r3)
/* 805AE3BC  38 63 00 10 */	addi r3, r3, 0x10
/* 805AE3C0  7C 67 1B 78 */	mr r7, r3
/* 805AE3C4  90 03 00 00 */	stw r0, 0(r3)
/* 805AE3C8  38 63 00 08 */	addi r3, r3, 8
/* 805AE3CC  88 06 00 01 */	lbz r0, 1(r6)
/* 805AE3D0  88 A6 00 02 */	lbz r5, 2(r6)
/* 805AE3D4  7C 84 48 AE */	lbzx r4, r4, r9
/* 805AE3D8  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805AE3DC  88 C6 00 03 */	lbz r6, 3(r6)
/* 805AE3E0  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 805AE3E4  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 805AE3E8  50 C0 06 3E */	rlwimi r0, r6, 0, 0x18, 0x1f
/* 805AE3EC  90 07 00 04 */	stw r0, 4(r7)
/* 805AE3F0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
lbl_805AE3F4:
/* 805AE3F4  38 60 00 01 */	li r3, 1
/* 805AE3F8  39 61 00 30 */	addi r11, r1, 0x30
/* 805AE3FC  4B AE CB 15 */	bl func_8009AF10
/* 805AE400  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AE404  7C 08 03 A6 */	mtlr r0
/* 805AE408  38 21 00 30 */	addi r1, r1, 0x30
/* 805AE40C  4E 80 00 20 */	blr 
