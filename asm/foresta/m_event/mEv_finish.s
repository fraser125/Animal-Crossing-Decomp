lbl_8039D808:
/* 8039D808  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8039D80C  7C 08 02 A6 */	mflr r0
/* 8039D810  90 01 00 44 */	stw r0, 0x44(r1)
/* 8039D814  39 61 00 40 */	addi r11, r1, 0x40
/* 8039D818  4B CF D6 A1 */	bl func_8009AEB8
/* 8039D81C  48 00 75 75 */	bl mFI_GetBlockXMax
/* 8039D820  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8039D824  3B 23 FF FF */	addi r25, r3, -1
/* 8039D828  48 00 75 B1 */	bl mFI_GetBlockZMax
/* 8039D82C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8039D830  3B 03 FF FF */	addi r24, r3, -1
/* 8039D834  48 00 74 99 */	bl mFI_GetFieldId
/* 8039D838  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8039D83C  40 82 00 B0 */	bne lbl_8039D8EC
/* 8039D840  3C 80 80 65 */	lis r4, l_ev_structure_table@ha /* 0x80652198@ha */
/* 8039D844  3C 60 80 65 */	lis r3, num_of_l_ev_structure@ha /* 0x806521C4@ha */
/* 8039D848  3B A4 21 98 */	addi r29, r4, l_ev_structure_table@l /* 0x80652198@l */
/* 8039D84C  3B 40 00 00 */	li r26, 0
/* 8039D850  3B C3 21 C4 */	addi r30, r3, num_of_l_ev_structure@l /* 0x806521C4@l */
/* 8039D854  3B E0 00 00 */	li r31, 0
/* 8039D858  48 00 00 88 */	b lbl_8039D8E0
lbl_8039D85C:
/* 8039D85C  3B 80 00 01 */	li r28, 1
/* 8039D860  48 00 00 70 */	b lbl_8039D8D0
lbl_8039D864:
/* 8039D864  3B 60 00 01 */	li r27, 1
/* 8039D868  48 00 00 5C */	b lbl_8039D8C4
lbl_8039D86C:
/* 8039D86C  7E DD FA 2E */	lhzx r22, r29, r31
/* 8039D870  3A E0 00 00 */	li r23, 0
/* 8039D874  48 00 00 2C */	b lbl_8039D8A0
lbl_8039D878:
/* 8039D878  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8039D87C  7E C3 B3 78 */	mr r3, r22
/* 8039D880  80 E1 00 08 */	lwz r7, 8(r1)
/* 8039D884  7F 84 E3 78 */	mr r4, r28
/* 8039D888  7F 65 DB 78 */	mr r5, r27
/* 8039D88C  39 00 00 01 */	li r8, 1
/* 8039D890  48 00 C4 0D */	bl mFI_SetFGStructure_common
/* 8039D894  3A F7 00 01 */	addi r23, r23, 1
/* 8039D898  2C 17 01 00 */	cmpwi r23, 0x100
/* 8039D89C  41 81 00 24 */	bgt lbl_8039D8C0
lbl_8039D8A0:
/* 8039D8A0  7E C5 B3 78 */	mr r5, r22
/* 8039D8A4  7F 86 E3 78 */	mr r6, r28
/* 8039D8A8  7F 67 DB 78 */	mr r7, r27
/* 8039D8AC  38 61 00 0C */	addi r3, r1, 0xc
/* 8039D8B0  38 81 00 08 */	addi r4, r1, 8
/* 8039D8B4  48 00 A9 ED */	bl mFI_SearchFGInBlock
/* 8039D8B8  2C 03 00 00 */	cmpwi r3, 0
/* 8039D8BC  40 82 FF BC */	bne lbl_8039D878
lbl_8039D8C0:
/* 8039D8C0  3B 7B 00 01 */	addi r27, r27, 1
lbl_8039D8C4:
/* 8039D8C4  7C 1B C0 00 */	cmpw r27, r24
/* 8039D8C8  41 80 FF A4 */	blt lbl_8039D86C
/* 8039D8CC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8039D8D0:
/* 8039D8D0  7C 1C C8 00 */	cmpw r28, r25
/* 8039D8D4  41 80 FF 90 */	blt lbl_8039D864
/* 8039D8D8  3B 5A 00 01 */	addi r26, r26, 1
/* 8039D8DC  3B FF 00 02 */	addi r31, r31, 2
lbl_8039D8E0:
/* 8039D8E0  80 1E 00 00 */	lwz r0, 0(r30)
/* 8039D8E4  7C 1A 00 00 */	cmpw r26, r0
/* 8039D8E8  41 80 FF 74 */	blt lbl_8039D85C
lbl_8039D8EC:
/* 8039D8EC  39 61 00 40 */	addi r11, r1, 0x40
/* 8039D8F0  4B CF D6 15 */	bl func_8009AF04
/* 8039D8F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8039D8F8  7C 08 03 A6 */	mtlr r0
/* 8039D8FC  38 21 00 40 */	addi r1, r1, 0x40
/* 8039D900  4E 80 00 20 */	blr 
