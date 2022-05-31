lbl_804F63BC:
/* 804F63BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F63C0  7C 08 02 A6 */	mflr r0
/* 804F63C4  2C 05 00 00 */	cmpwi r5, 0
/* 804F63C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F63CC  7C 80 23 78 */	mr r0, r4
/* 804F63D0  41 82 00 1C */	beq lbl_804F63EC
/* 804F63D4  2C 06 00 00 */	cmpwi r6, 0
/* 804F63D8  41 82 00 14 */	beq lbl_804F63EC
/* 804F63DC  A8 83 00 DE */	lha r4, 0xde(r3)
/* 804F63E0  7C 03 03 78 */	mr r3, r0
/* 804F63E4  38 A0 00 1C */	li r5, 0x1c
/* 804F63E8  48 00 00 CD */	bl func_804F64B4
lbl_804F63EC:
/* 804F63EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F63F0  7C 08 03 A6 */	mtlr r0
/* 804F63F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F63F8  4E 80 00 20 */	blr 
