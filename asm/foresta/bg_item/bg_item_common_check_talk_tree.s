lbl_804BD4C4:
/* 804BD4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD4C8  7C 08 02 A6 */	mflr r0
/* 804BD4CC  3C 63 00 01 */	addis r3, r3, 1
/* 804BD4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BD4D8  3B E0 00 00 */	li r31, 0
/* 804BD4DC  A0 03 39 E0 */	lhz r0, 0x39e0(r3)
/* 804BD4E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BD4E4  41 82 00 20 */	beq lbl_804BD504
/* 804BD4E8  81 83 39 D8 */	lwz r12, 0x39d8(r3)
/* 804BD4EC  7C 83 23 78 */	mr r3, r4
/* 804BD4F0  7D 89 03 A6 */	mtctr r12
/* 804BD4F4  4E 80 04 21 */	bctrl 
/* 804BD4F8  2C 03 00 00 */	cmpwi r3, 0
/* 804BD4FC  41 82 00 08 */	beq lbl_804BD504
/* 804BD500  3B E0 00 01 */	li r31, 1
lbl_804BD504:
/* 804BD504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD508  7F E3 FB 78 */	mr r3, r31
/* 804BD50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BD510  7C 08 03 A6 */	mtlr r0
/* 804BD514  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD518  4E 80 00 20 */	blr 
