lbl_803A80D0:
/* 803A80D0  2C 03 00 00 */	cmpwi r3, 0
/* 803A80D4  38 E0 00 00 */	li r7, 0
/* 803A80D8  39 00 00 00 */	li r8, 0
/* 803A80DC  40 81 00 44 */	ble lbl_803A8120
/* 803A80E0  2C 03 00 05 */	cmpwi r3, 5
/* 803A80E4  41 81 00 3C */	bgt lbl_803A8120
/* 803A80E8  2C 04 00 00 */	cmpwi r4, 0
/* 803A80EC  40 81 00 34 */	ble lbl_803A8120
/* 803A80F0  2C 04 00 06 */	cmpwi r4, 6
/* 803A80F4  41 81 00 2C */	bgt lbl_803A8120
/* 803A80F8  38 04 FF FF */	addi r0, r4, -1
/* 803A80FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A8100  1C E0 0A 00 */	mulli r7, r0, 0xa00
/* 803A8104  38 03 FF FF */	addi r0, r3, -1
/* 803A8108  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803A810C  54 00 48 2C */	slwi r0, r0, 9
/* 803A8110  7C 63 3A 14 */	add r3, r3, r7
/* 803A8114  7C 63 02 14 */	add r3, r3, r0
/* 803A8118  3C E3 00 01 */	addis r7, r3, 1
/* 803A811C  38 E7 37 A8 */	addi r7, r7, 0x37a8
lbl_803A8120:
/* 803A8120  28 07 00 00 */	cmplwi r7, 0
/* 803A8124  41 82 00 34 */	beq lbl_803A8158
/* 803A8128  38 00 01 00 */	li r0, 0x100
/* 803A812C  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 803A8130  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 803A8134  7C 09 03 A6 */	mtctr r0
lbl_803A8138:
/* 803A8138  A0 07 00 00 */	lhz r0, 0(r7)
/* 803A813C  7C 00 20 40 */	cmplw r0, r4
/* 803A8140  41 80 00 10 */	blt lbl_803A8150
/* 803A8144  7C 00 18 40 */	cmplw r0, r3
/* 803A8148  41 81 00 08 */	bgt lbl_803A8150
/* 803A814C  39 08 00 01 */	addi r8, r8, 1
lbl_803A8150:
/* 803A8150  38 E7 00 02 */	addi r7, r7, 2
/* 803A8154  42 00 FF E4 */	bdnz lbl_803A8138
lbl_803A8158:
/* 803A8158  7D 03 43 78 */	mr r3, r8
/* 803A815C  4E 80 00 20 */	blr 