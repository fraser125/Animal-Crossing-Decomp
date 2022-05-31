lbl_8046ED90:
/* 8046ED90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046ED94  7C 08 02 A6 */	mflr r0
/* 8046ED98  38 80 00 20 */	li r4, 0x20
/* 8046ED9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046EDA0  4B F4 D6 89 */	bl func_803BC428
/* 8046EDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EDA8  7C 08 03 A6 */	mtlr r0
/* 8046EDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EDB0  4E 80 00 20 */	blr 
