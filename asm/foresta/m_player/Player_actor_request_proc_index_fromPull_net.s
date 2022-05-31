lbl_804F3C84:
/* 804F3C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3C88  7C 08 02 A6 */	mflr r0
/* 804F3C8C  2C 05 00 00 */	cmpwi r5, 0
/* 804F3C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3C94  7C 80 23 78 */	mr r0, r4
/* 804F3C98  41 82 00 1C */	beq lbl_804F3CB4
/* 804F3C9C  2C 06 00 00 */	cmpwi r6, 0
/* 804F3CA0  41 82 00 14 */	beq lbl_804F3CB4
/* 804F3CA4  80 83 0D 1C */	lwz r4, 0xd1c(r3)
/* 804F3CA8  7C 03 03 78 */	mr r3, r0
/* 804F3CAC  38 A0 00 1B */	li r5, 0x1b
/* 804F3CB0  48 00 03 1D */	bl func_804F3FCC
lbl_804F3CB4:
/* 804F3CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3CB8  7C 08 03 A6 */	mtlr r0
/* 804F3CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3CC0  4E 80 00 20 */	blr 
