lbl_804B783C:
/* 804B783C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B7840  7C 08 02 A6 */	mflr r0
/* 804B7844  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B7848  39 61 00 30 */	addi r11, r1, 0x30
/* 804B784C  4B BE 36 79 */	bl func_8009AEC4
/* 804B7850  3C E0 80 66 */	lis r7, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804B7854  3C C0 80 69 */	lis r6, d_size_682@ha /* 0x80695714@ha */
/* 804B7858  7C 79 1B 78 */	mr r25, r3
/* 804B785C  7C 9A 23 78 */	mr r26, r4
/* 804B7860  7C BB 2B 78 */	mr r27, r5
/* 804B7864  3B C7 F0 5C */	addi r30, r7, ZeroSVec@l /* 0x8065F05C@l */
/* 804B7868  3B E6 57 14 */	addi r31, r6, d_size_682@l /* 0x80695714@l */
/* 804B786C  3B 80 00 00 */	li r28, 0
/* 804B7870  3B A0 00 00 */	li r29, 0
lbl_804B7874:
/* 804B7874  88 1B 00 0F */	lbz r0, 0xf(r27)
/* 804B7878  28 00 00 00 */	cmplwi r0, 0
/* 804B787C  41 82 00 30 */	beq lbl_804B78AC
/* 804B7880  93 A1 00 08 */	stw r29, 8(r1)
/* 804B7884  7F 23 CB 78 */	mr r3, r25
/* 804B7888  7F 44 D3 78 */	mr r4, r26
/* 804B788C  7F 66 DB 78 */	mr r6, r27
/* 804B7890  93 A1 00 0C */	stw r29, 0xc(r1)
/* 804B7894  7F C7 F3 78 */	mr r7, r30
/* 804B7898  7F E8 FB 78 */	mr r8, r31
/* 804B789C  39 40 00 00 */	li r10, 0
/* 804B78A0  A0 BB 00 0C */	lhz r5, 0xc(r27)
/* 804B78A4  89 3B 00 0E */	lbz r9, 0xe(r27)
/* 804B78A8  48 00 44 C9 */	bl bit_cmn_single_drawS
lbl_804B78AC:
/* 804B78AC  3B 9C 00 01 */	addi r28, r28, 1
/* 804B78B0  3B 7B 00 14 */	addi r27, r27, 0x14
/* 804B78B4  2C 1C 00 03 */	cmpwi r28, 3
/* 804B78B8  41 80 FF BC */	blt lbl_804B7874
/* 804B78BC  39 61 00 30 */	addi r11, r1, 0x30
/* 804B78C0  4B BE 36 51 */	bl func_8009AF10
/* 804B78C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B78C8  7C 08 03 A6 */	mtlr r0
/* 804B78CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804B78D0  4E 80 00 20 */	blr 
