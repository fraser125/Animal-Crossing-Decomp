lbl_804C4FBC:
/* 804C4FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C4FC0  7C 08 02 A6 */	mflr r0
/* 804C4FC4  3C 63 00 01 */	addis r3, r3, 1
/* 804C4FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C4FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C4FD0  3B E0 00 00 */	li r31, 0
/* 804C4FD4  A0 03 39 E0 */	lhz r0, 0x39e0(r3)
/* 804C4FD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C4FDC  41 82 00 20 */	beq lbl_804C4FFC
/* 804C4FE0  81 83 39 D8 */	lwz r12, 0x39d8(r3)
/* 804C4FE4  7C 83 23 78 */	mr r3, r4
/* 804C4FE8  7D 89 03 A6 */	mtctr r12
/* 804C4FEC  4E 80 04 21 */	bctrl 
/* 804C4FF0  2C 03 00 00 */	cmpwi r3, 0
/* 804C4FF4  41 82 00 08 */	beq lbl_804C4FFC
/* 804C4FF8  3B E0 00 01 */	li r31, 1
lbl_804C4FFC:
/* 804C4FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C5000  7F E3 FB 78 */	mr r3, r31
/* 804C5004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C5008  7C 08 03 A6 */	mtlr r0
/* 804C500C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C5010  4E 80 00 20 */	blr 
