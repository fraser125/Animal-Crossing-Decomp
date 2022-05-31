lbl_805F3444:
/* 805F3444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F3448  7C 08 02 A6 */	mflr r0
/* 805F344C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F3450  39 61 00 30 */	addi r11, r1, 0x30
/* 805F3454  4B AA 7A 7D */	bl func_8009AED0
/* 805F3458  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805F345C  3B C0 FF FF */	li r30, -1
/* 805F3460  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805F3464  3F E5 00 02 */	addis r31, r5, 2
/* 805F3468  80 1F 60 8C */	lwz r0, 0x608c(r31)
/* 805F346C  28 00 00 00 */	cmplwi r0, 0
/* 805F3470  41 82 00 78 */	beq lbl_805F34E8
/* 805F3474  7C 7D 1B 78 */	mr r29, r3
/* 805F3478  7C 83 23 78 */	mr r3, r4
/* 805F347C  4B DF 43 15 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805F3480  80 9F 60 8C */	lwz r4, 0x608c(r31)
/* 805F3484  54 7C 04 3E */	clrlwi r28, r3, 0x10
/* 805F3488  7F A3 EB 78 */	mr r3, r29
/* 805F348C  38 A1 00 10 */	addi r5, r1, 0x10
/* 805F3490  81 84 00 04 */	lwz r12, 4(r4)
/* 805F3494  7F 84 E3 78 */	mr r4, r28
/* 805F3498  38 C1 00 0C */	addi r6, r1, 0xc
/* 805F349C  38 E1 00 08 */	addi r7, r1, 8
/* 805F34A0  39 01 00 18 */	addi r8, r1, 0x18
/* 805F34A4  39 21 00 14 */	addi r9, r1, 0x14
/* 805F34A8  7D 89 03 A6 */	mtctr r12
/* 805F34AC  4E 80 04 21 */	bctrl 
/* 805F34B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 805F34B4  41 80 00 34 */	blt lbl_805F34E8
/* 805F34B8  80 DF 60 8C */	lwz r6, 0x608c(r31)
/* 805F34BC  7F A3 EB 78 */	mr r3, r29
/* 805F34C0  7F 84 E3 78 */	mr r4, r28
/* 805F34C4  7F C5 F3 78 */	mr r5, r30
/* 805F34C8  81 86 00 28 */	lwz r12, 0x28(r6)
/* 805F34CC  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 805F34D0  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 805F34D4  A1 01 00 08 */	lhz r8, 8(r1)
/* 805F34D8  81 21 00 18 */	lwz r9, 0x18(r1)
/* 805F34DC  81 41 00 14 */	lwz r10, 0x14(r1)
/* 805F34E0  7D 89 03 A6 */	mtctr r12
/* 805F34E4  4E 80 04 21 */	bctrl 
lbl_805F34E8:
/* 805F34E8  7F C3 F3 78 */	mr r3, r30
/* 805F34EC  39 61 00 30 */	addi r11, r1, 0x30
/* 805F34F0  4B AA 7A 2D */	bl func_8009AF1C
/* 805F34F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F34F8  7C 08 03 A6 */	mtlr r0
/* 805F34FC  38 21 00 30 */	addi r1, r1, 0x30
/* 805F3500  4E 80 00 20 */	blr 
