lbl_803BD524:
/* 803BD524  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BD528  7C 08 02 A6 */	mflr r0
/* 803BD52C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BD530  39 61 00 20 */	addi r11, r1, 0x20
/* 803BD534  4B CD D9 99 */	bl func_8009AECC
/* 803BD538  2C 04 00 02 */	cmpwi r4, 2
/* 803BD53C  7C 7D 1B 78 */	mr r29, r3
/* 803BD540  7C DB 33 78 */	mr r27, r6
/* 803BD544  7C FE 3B 78 */	mr r30, r7
/* 803BD548  7D 1C 43 78 */	mr r28, r8
/* 803BD54C  7D 5F 53 78 */	mr r31, r10
/* 803BD550  41 82 00 54 */	beq lbl_803BD5A4
/* 803BD554  40 80 00 14 */	bge lbl_803BD568
/* 803BD558  2C 04 00 00 */	cmpwi r4, 0
/* 803BD55C  41 82 00 20 */	beq lbl_803BD57C
/* 803BD560  40 80 00 28 */	bge lbl_803BD588
/* 803BD564  48 00 00 3C */	b lbl_803BD5A0
lbl_803BD568:
/* 803BD568  2C 04 00 06 */	cmpwi r4, 6
/* 803BD56C  40 80 00 34 */	bge lbl_803BD5A0
/* 803BD570  2C 04 00 04 */	cmpwi r4, 4
/* 803BD574  40 80 00 08 */	bge lbl_803BD57C
/* 803BD578  48 00 00 18 */	b lbl_803BD590
lbl_803BD57C:
/* 803BD57C  38 A0 00 01 */	li r5, 1
/* 803BD580  3B E0 00 FF */	li r31, 0xff
/* 803BD584  48 00 00 20 */	b lbl_803BD5A4
lbl_803BD588:
/* 803BD588  38 A0 00 04 */	li r5, 4
/* 803BD58C  48 00 00 18 */	b lbl_803BD5A4
lbl_803BD590:
/* 803BD590  54 A9 F7 FE */	rlwinm r9, r5, 0x1e, 0x1f, 0x1f
/* 803BD594  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 803BD598  3B E0 00 FF */	li r31, 0xff
/* 803BD59C  48 00 00 08 */	b lbl_803BD5A4
lbl_803BD5A0:
/* 803BD5A0  38 80 00 04 */	li r4, 4
lbl_803BD5A4:
/* 803BD5A4  54 80 2E 34 */	rlwinm r0, r4, 5, 0x18, 0x1a
/* 803BD5A8  54 A6 08 3C */	slwi r6, r5, 1
/* 803BD5AC  98 1D 00 00 */	stb r0, 0(r29)
/* 803BD5B0  55 20 07 FE */	clrlwi r0, r9, 0x1f
/* 803BD5B4  7F 64 DB 78 */	mr r4, r27
/* 803BD5B8  38 7D 00 02 */	addi r3, r29, 2
/* 803BD5BC  88 FD 00 00 */	lbz r7, 0(r29)
/* 803BD5C0  38 A0 00 08 */	li r5, 8
/* 803BD5C4  7C E6 33 78 */	or r6, r7, r6
/* 803BD5C8  98 DD 00 00 */	stb r6, 0(r29)
/* 803BD5CC  88 DD 00 00 */	lbz r6, 0(r29)
/* 803BD5D0  7C C0 03 78 */	or r0, r6, r0
/* 803BD5D4  98 1D 00 00 */	stb r0, 0(r29)
/* 803BD5D8  9B FD 00 01 */	stb r31, 1(r29)
/* 803BD5DC  4B C4 5E B5 */	bl memcpy
/* 803BD5E0  7F C4 F3 78 */	mr r4, r30
/* 803BD5E4  38 7D 00 0A */	addi r3, r29, 0xa
/* 803BD5E8  38 A0 00 08 */	li r5, 8
/* 803BD5EC  4B C4 5E A5 */	bl memcpy
/* 803BD5F0  57 83 C6 3E */	rlwinm r3, r28, 0x18, 0x18, 0x1f
/* 803BD5F4  38 00 00 08 */	li r0, 8
/* 803BD5F8  98 7D 00 12 */	stb r3, 0x12(r29)
/* 803BD5FC  7F 63 DB 78 */	mr r3, r27
/* 803BD600  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 803BD604  38 A0 00 00 */	li r5, 0
/* 803BD608  9B 9D 00 13 */	stb r28, 0x13(r29)
/* 803BD60C  7C 09 03 A6 */	mtctr r0
lbl_803BD610:
/* 803BD610  88 03 00 00 */	lbz r0, 0(r3)
/* 803BD614  38 63 00 01 */	addi r3, r3, 1
/* 803BD618  7C A5 02 14 */	add r5, r5, r0
/* 803BD61C  42 00 FF F4 */	bdnz lbl_803BD610
/* 803BD620  38 00 00 08 */	li r0, 8
/* 803BD624  7F C3 F3 78 */	mr r3, r30
/* 803BD628  7C 09 03 A6 */	mtctr r0
lbl_803BD62C:
/* 803BD62C  88 03 00 00 */	lbz r0, 0(r3)
/* 803BD630  38 63 00 01 */	addi r3, r3, 1
/* 803BD634  7C A5 02 14 */	add r5, r5, r0
/* 803BD638  42 00 FF F4 */	bdnz lbl_803BD62C
/* 803BD63C  7C A5 22 14 */	add r5, r5, r4
/* 803BD640  88 7D 00 00 */	lbz r3, 0(r29)
/* 803BD644  7C A5 FA 14 */	add r5, r5, r31
/* 803BD648  39 61 00 20 */	addi r11, r1, 0x20
/* 803BD64C  54 A0 1E F8 */	rlwinm r0, r5, 3, 0x1b, 0x1c
/* 803BD650  7C 60 03 78 */	or r0, r3, r0
/* 803BD654  98 1D 00 00 */	stb r0, 0(r29)
/* 803BD658  4B CD D8 C1 */	bl func_8009AF18
/* 803BD65C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BD660  7C 08 03 A6 */	mtlr r0
/* 803BD664  38 21 00 20 */	addi r1, r1, 0x20
/* 803BD668  4E 80 00 20 */	blr 
