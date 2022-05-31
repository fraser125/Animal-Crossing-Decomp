lbl_8049CEB0:
/* 8049CEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CEB4  7C 08 02 A6 */	mflr r0
/* 8049CEB8  38 80 00 01 */	li r4, 1
/* 8049CEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CEC0  4B FF FC F1 */	bl aSD_SetClipProc
/* 8049CEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CEC8  7C 08 03 A6 */	mtlr r0
/* 8049CECC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CED0  4E 80 00 20 */	blr 
