lbl_804CC3D4:
/* 804CC3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC3D8  7C 08 02 A6 */	mflr r0
/* 804CC3DC  3C 63 00 01 */	addis r3, r3, 1
/* 804CC3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC3E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CC3E8  3B E0 00 00 */	li r31, 0
/* 804CC3EC  A0 03 39 E0 */	lhz r0, 0x39e0(r3)
/* 804CC3F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804CC3F4  41 82 00 20 */	beq lbl_804CC414
/* 804CC3F8  81 83 39 D8 */	lwz r12, 0x39d8(r3)
/* 804CC3FC  7C 83 23 78 */	mr r3, r4
/* 804CC400  7D 89 03 A6 */	mtctr r12
/* 804CC404  4E 80 04 21 */	bctrl 
/* 804CC408  2C 03 00 00 */	cmpwi r3, 0
/* 804CC40C  41 82 00 08 */	beq lbl_804CC414
/* 804CC410  3B E0 00 01 */	li r31, 1
lbl_804CC414:
/* 804CC414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC418  7F E3 FB 78 */	mr r3, r31
/* 804CC41C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CC420  7C 08 03 A6 */	mtlr r0
/* 804CC424  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC428  4E 80 00 20 */	blr 
