lbl_8054E0D0:
/* 8054E0D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054E0D4  7C 08 02 A6 */	mflr r0
/* 8054E0D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054E0DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054E0E0  4B B4 CD F5 */	bl func_8009AED4
/* 8054E0E4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054E0E8  7C 9E 23 78 */	mr r30, r4
/* 8054E0EC  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8054E0F0  7C 7D 1B 78 */	mr r29, r3
/* 8054E0F4  3C 64 00 02 */	addis r3, r4, 2
/* 8054E0F8  3B E0 00 00 */	li r31, 0
/* 8054E0FC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054E100  38 80 00 00 */	li r4, 0
/* 8054E104  4B E9 28 8D */	bl mPr_GetPossessionItemSum
/* 8054E108  3C A0 00 02 */	lis r5, 0x0002 /* 0x0001869F@ha */
/* 8054E10C  38 9D 75 30 */	addi r4, r29, 0x7530
/* 8054E110  38 A5 86 9F */	addi r5, r5, 0x869F /* 0x0001869F@l */
/* 8054E114  38 00 75 30 */	li r0, 0x7530
/* 8054E118  7C 85 20 50 */	subf r4, r5, r4
/* 8054E11C  38 C0 00 00 */	li r6, 0
/* 8054E120  7C 84 03 96 */	divwu r4, r4, r0
/* 8054E124  7C 89 03 A6 */	mtctr r4
/* 8054E128  7C 1D 28 40 */	cmplw r29, r5
/* 8054E12C  41 80 00 0C */	blt lbl_8054E138
lbl_8054E130:
/* 8054E130  38 C6 00 01 */	addi r6, r6, 1
/* 8054E134  42 00 FF FC */	bdnz lbl_8054E130
lbl_8054E138:
/* 8054E138  7C 03 F2 14 */	add r0, r3, r30
/* 8054E13C  7C 06 00 40 */	cmplw r6, r0
/* 8054E140  41 81 00 08 */	bgt lbl_8054E148
/* 8054E144  3B E0 00 01 */	li r31, 1
lbl_8054E148:
/* 8054E148  7F E3 FB 78 */	mr r3, r31
/* 8054E14C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054E150  4B B4 CD D1 */	bl func_8009AF20
/* 8054E154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054E158  7C 08 03 A6 */	mtlr r0
/* 8054E15C  38 21 00 20 */	addi r1, r1, 0x20
/* 8054E160  4E 80 00 20 */	blr 
