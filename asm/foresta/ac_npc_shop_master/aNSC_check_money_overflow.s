lbl_80577D50:
/* 80577D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80577D54  7C 08 02 A6 */	mflr r0
/* 80577D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80577D5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80577D60  4B B2 31 75 */	bl func_8009AED4
/* 80577D64  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80577D68  7C 9E 23 78 */	mr r30, r4
/* 80577D6C  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80577D70  7C 7D 1B 78 */	mr r29, r3
/* 80577D74  3C 64 00 02 */	addis r3, r4, 2
/* 80577D78  3B E0 00 00 */	li r31, 0
/* 80577D7C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80577D80  38 80 00 00 */	li r4, 0
/* 80577D84  4B E6 8C 0D */	bl mPr_GetPossessionItemSum
/* 80577D88  3C A0 00 02 */	lis r5, 0x0002 /* 0x0001869F@ha */
/* 80577D8C  38 9D 75 30 */	addi r4, r29, 0x7530
/* 80577D90  38 A5 86 9F */	addi r5, r5, 0x869F /* 0x0001869F@l */
/* 80577D94  38 00 75 30 */	li r0, 0x7530
/* 80577D98  7C 85 20 50 */	subf r4, r5, r4
/* 80577D9C  38 C0 00 00 */	li r6, 0
/* 80577DA0  7C 84 03 96 */	divwu r4, r4, r0
/* 80577DA4  7C 89 03 A6 */	mtctr r4
/* 80577DA8  7C 1D 28 40 */	cmplw r29, r5
/* 80577DAC  41 80 00 0C */	blt lbl_80577DB8
lbl_80577DB0:
/* 80577DB0  38 C6 00 01 */	addi r6, r6, 1
/* 80577DB4  42 00 FF FC */	bdnz lbl_80577DB0
lbl_80577DB8:
/* 80577DB8  7C 03 F2 14 */	add r0, r3, r30
/* 80577DBC  7C 06 00 40 */	cmplw r6, r0
/* 80577DC0  41 81 00 08 */	bgt lbl_80577DC8
/* 80577DC4  3B E0 00 01 */	li r31, 1
lbl_80577DC8:
/* 80577DC8  7F E3 FB 78 */	mr r3, r31
/* 80577DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80577DD0  4B B2 31 51 */	bl func_8009AF20
/* 80577DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80577DD8  7C 08 03 A6 */	mtlr r0
/* 80577DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80577DE0  4E 80 00 20 */	blr 
