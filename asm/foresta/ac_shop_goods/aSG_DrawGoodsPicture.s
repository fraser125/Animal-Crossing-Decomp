lbl_8049E3F8:
/* 8049E3F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049E3FC  7C 08 02 A6 */	mflr r0
/* 8049E400  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049E404  39 61 00 40 */	addi r11, r1, 0x40
/* 8049E408  4B BF CA A9 */	bl func_8009AEB0
/* 8049E40C  7C 7D 1B 78 */	mr r29, r3
/* 8049E410  7C 94 23 78 */	mr r20, r4
/* 8049E414  83 5D 01 7C */	lwz r26, 0x17c(r29)
/* 8049E418  3C 60 80 64 */	lis r3, data_80644D3C@ha /* 0x80644D3C@ha */
/* 8049E41C  83 7D 01 78 */	lwz r27, 0x178(r29)
/* 8049E420  3B E3 4D 3C */	addi r31, r3, data_80644D3C@l /* 0x80644D3C@l */
/* 8049E424  83 9D 01 74 */	lwz r28, 0x174(r29)
/* 8049E428  3B D4 1D 90 */	addi r30, r20, 0x1d90
/* 8049E42C  7F 63 DB 78 */	mr r3, r27
/* 8049E430  7F 44 D3 78 */	mr r4, r26
/* 8049E434  4B F0 8D 21 */	bl mFI_BkNumtoUtFGTop
/* 8049E438  7C 60 1B 78 */	mr r0, r3
/* 8049E43C  7F 63 DB 78 */	mr r3, r27
/* 8049E440  7C 19 03 78 */	mr r25, r0
/* 8049E444  7F 44 D3 78 */	mr r4, r26
/* 8049E448  38 A0 00 01 */	li r5, 1
/* 8049E44C  4B F0 8D 8D */	bl mFI_BkNum2UtFGTop_layer
/* 8049E450  28 19 00 00 */	cmplwi r25, 0
/* 8049E454  AA FD 01 88 */	lha r23, 0x188(r29)
/* 8049E458  7C 78 1B 78 */	mr r24, r3
/* 8049E45C  41 82 00 94 */	beq lbl_8049E4F0
/* 8049E460  3A A0 00 00 */	li r21, 0
lbl_8049E464:
/* 8049E464  3A C0 00 00 */	li r22, 0
lbl_8049E468:
/* 8049E468  A0 99 00 00 */	lhz r4, 0(r25)
/* 8049E46C  28 04 FF FF */	cmplwi r4, 0xffff
/* 8049E470  41 82 00 64 */	beq lbl_8049E4D4
/* 8049E474  38 60 00 00 */	li r3, 0
/* 8049E478  7F 89 03 A6 */	mtctr r28
/* 8049E47C  2C 1C 00 00 */	cmpwi r28, 0
/* 8049E480  40 81 00 54 */	ble lbl_8049E4D4
lbl_8049E484:
/* 8049E484  7D 5F 1A 14 */	add r10, r31, r3
/* 8049E488  A0 0A 00 00 */	lhz r0, 0(r10)
/* 8049E48C  7C 04 00 40 */	cmplw r4, r0
/* 8049E490  41 80 00 3C */	blt lbl_8049E4CC
/* 8049E494  A0 0A 00 02 */	lhz r0, 2(r10)
/* 8049E498  7C 04 00 40 */	cmplw r4, r0
/* 8049E49C  41 81 00 30 */	bgt lbl_8049E4CC
/* 8049E4A0  38 00 00 00 */	li r0, 0
/* 8049E4A4  7F C4 F3 78 */	mr r4, r30
/* 8049E4A8  90 01 00 08 */	stw r0, 8(r1)
/* 8049E4AC  7F A5 EB 78 */	mr r5, r29
/* 8049E4B0  7F 66 DB 78 */	mr r6, r27
/* 8049E4B4  7F 47 D3 78 */	mr r7, r26
/* 8049E4B8  80 74 00 00 */	lwz r3, 0(r20)
/* 8049E4BC  7E C8 B3 78 */	mr r8, r22
/* 8049E4C0  7E A9 AB 78 */	mr r9, r21
/* 8049E4C4  4B FF FC E5 */	bl aSG_DrawGoods
/* 8049E4C8  48 00 00 0C */	b lbl_8049E4D4
lbl_8049E4CC:
/* 8049E4CC  38 63 00 28 */	addi r3, r3, 0x28
/* 8049E4D0  42 00 FF B4 */	bdnz lbl_8049E484
lbl_8049E4D4:
/* 8049E4D4  3A D6 00 01 */	addi r22, r22, 1
/* 8049E4D8  3B 39 00 02 */	addi r25, r25, 2
/* 8049E4DC  2C 16 00 10 */	cmpwi r22, 0x10
/* 8049E4E0  41 80 FF 88 */	blt lbl_8049E468
/* 8049E4E4  3A B5 00 01 */	addi r21, r21, 1
/* 8049E4E8  2C 15 00 10 */	cmpwi r21, 0x10
/* 8049E4EC  41 80 FF 78 */	blt lbl_8049E464
lbl_8049E4F0:
/* 8049E4F0  2C 17 00 01 */	cmpwi r23, 1
/* 8049E4F4  40 82 00 9C */	bne lbl_8049E590
/* 8049E4F8  28 18 00 00 */	cmplwi r24, 0
/* 8049E4FC  41 82 00 94 */	beq lbl_8049E590
/* 8049E500  3A A0 00 00 */	li r21, 0
lbl_8049E504:
/* 8049E504  3A C0 00 00 */	li r22, 0
lbl_8049E508:
/* 8049E508  A0 98 00 00 */	lhz r4, 0(r24)
/* 8049E50C  28 04 FF FF */	cmplwi r4, 0xffff
/* 8049E510  41 82 00 64 */	beq lbl_8049E574
/* 8049E514  38 60 00 00 */	li r3, 0
/* 8049E518  7F 89 03 A6 */	mtctr r28
/* 8049E51C  2C 1C 00 00 */	cmpwi r28, 0
/* 8049E520  40 81 00 54 */	ble lbl_8049E574
lbl_8049E524:
/* 8049E524  7D 5F 1A 14 */	add r10, r31, r3
/* 8049E528  A0 0A 00 00 */	lhz r0, 0(r10)
/* 8049E52C  7C 04 00 40 */	cmplw r4, r0
/* 8049E530  41 80 00 3C */	blt lbl_8049E56C
/* 8049E534  A0 0A 00 02 */	lhz r0, 2(r10)
/* 8049E538  7C 04 00 40 */	cmplw r4, r0
/* 8049E53C  41 81 00 30 */	bgt lbl_8049E56C
/* 8049E540  38 00 00 01 */	li r0, 1
/* 8049E544  7F C4 F3 78 */	mr r4, r30
/* 8049E548  90 01 00 08 */	stw r0, 8(r1)
/* 8049E54C  7F A5 EB 78 */	mr r5, r29
/* 8049E550  7F 66 DB 78 */	mr r6, r27
/* 8049E554  7F 47 D3 78 */	mr r7, r26
/* 8049E558  80 74 00 00 */	lwz r3, 0(r20)
/* 8049E55C  7E C8 B3 78 */	mr r8, r22
/* 8049E560  7E A9 AB 78 */	mr r9, r21
/* 8049E564  4B FF FC 45 */	bl aSG_DrawGoods
/* 8049E568  48 00 00 0C */	b lbl_8049E574
lbl_8049E56C:
/* 8049E56C  38 63 00 28 */	addi r3, r3, 0x28
/* 8049E570  42 00 FF B4 */	bdnz lbl_8049E524
lbl_8049E574:
/* 8049E574  3A D6 00 01 */	addi r22, r22, 1
/* 8049E578  3B 18 00 02 */	addi r24, r24, 2
/* 8049E57C  2C 16 00 10 */	cmpwi r22, 0x10
/* 8049E580  41 80 FF 88 */	blt lbl_8049E508
/* 8049E584  3A B5 00 01 */	addi r21, r21, 1
/* 8049E588  2C 15 00 10 */	cmpwi r21, 0x10
/* 8049E58C  41 80 FF 78 */	blt lbl_8049E504
lbl_8049E590:
/* 8049E590  39 61 00 40 */	addi r11, r1, 0x40
/* 8049E594  4B BF C9 69 */	bl func_8009AEFC
/* 8049E598  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049E59C  7C 08 03 A6 */	mtlr r0
/* 8049E5A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8049E5A4  4E 80 00 20 */	blr 
