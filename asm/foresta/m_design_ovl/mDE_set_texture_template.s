lbl_805D2528:
/* 805D2528  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D252C  7C 08 02 A6 */	mflr r0
/* 805D2530  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D2534  39 61 00 30 */	addi r11, r1, 0x30
/* 805D2538  4B AC 89 81 */	bl func_8009AEB8
/* 805D253C  7C FA 3B 78 */	mr r26, r7
/* 805D2540  7D 1B 43 78 */	mr r27, r8
/* 805D2544  7F FA D9 D6 */	mullw r31, r26, r27
/* 805D2548  7C 77 1B 78 */	mr r23, r3
/* 805D254C  7C B8 2B 78 */	mr r24, r5
/* 805D2550  7C D9 33 78 */	mr r25, r6
/* 805D2554  7D 3C 4B 78 */	mr r28, r9
/* 805D2558  7D 5D 53 78 */	mr r29, r10
/* 805D255C  7C 96 23 78 */	mr r22, r4
/* 805D2560  3B C0 00 00 */	li r30, 0
/* 805D2564  48 00 00 44 */	b lbl_805D25A8
lbl_805D2568:
/* 805D2568  7C 7E DB D6 */	divw r3, r30, r27
/* 805D256C  88 16 00 00 */	lbz r0, 0(r22)
/* 805D2570  28 00 00 00 */	cmplwi r0, 0
/* 805D2574  7C 9E D3 D6 */	divw r4, r30, r26
/* 805D2578  7C 03 D9 D6 */	mullw r0, r3, r27
/* 805D257C  7C 79 22 14 */	add r3, r25, r4
/* 805D2580  7C BD 18 50 */	subf r5, r29, r3
/* 805D2584  7C 00 F0 50 */	subf r0, r0, r30
/* 805D2588  7C 18 02 14 */	add r0, r24, r0
/* 805D258C  7C 9C 00 50 */	subf r4, r28, r0
/* 805D2590  41 82 00 10 */	beq lbl_805D25A0
/* 805D2594  88 D7 06 A4 */	lbz r6, 0x6a4(r23)
/* 805D2598  7E E3 BB 78 */	mr r3, r23
/* 805D259C  4B FF F9 85 */	bl mDE_set_pal_on_cursor
lbl_805D25A0:
/* 805D25A0  3B DE 00 01 */	addi r30, r30, 1
/* 805D25A4  3A D6 00 01 */	addi r22, r22, 1
lbl_805D25A8:
/* 805D25A8  7C 1E F8 00 */	cmpw r30, r31
/* 805D25AC  41 80 FF BC */	blt lbl_805D2568
/* 805D25B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805D25B4  4B AC 89 51 */	bl func_8009AF04
/* 805D25B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D25BC  7C 08 03 A6 */	mtlr r0
/* 805D25C0  38 21 00 30 */	addi r1, r1, 0x30
/* 805D25C4  4E 80 00 20 */	blr 
