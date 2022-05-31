lbl_80559C8C:
/* 80559C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559C90  7C 08 02 A6 */	mflr r0
/* 80559C94  2C 05 00 01 */	cmpwi r5, 1
/* 80559C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559C9C  41 82 00 1C */	beq lbl_80559CB8
/* 80559CA0  40 80 00 1C */	bge lbl_80559CBC
/* 80559CA4  2C 05 00 00 */	cmpwi r5, 0
/* 80559CA8  40 80 00 08 */	bge lbl_80559CB0
/* 80559CAC  48 00 00 10 */	b lbl_80559CBC
lbl_80559CB0:
/* 80559CB0  4B FF FF 55 */	bl aNMJ5_think_init_proc
/* 80559CB4  48 00 00 08 */	b lbl_80559CBC
lbl_80559CB8:
/* 80559CB8  4B FF FF 49 */	bl func_80559C00
lbl_80559CBC:
/* 80559CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559CC0  7C 08 03 A6 */	mtlr r0
/* 80559CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80559CC8  4E 80 00 20 */	blr 
