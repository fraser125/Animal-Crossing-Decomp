lbl_804AA6A8:
/* 804AA6A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA6AC  7C 08 02 A6 */	mflr r0
/* 804AA6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AA6B8  7C 7F 1B 78 */	mr r31, r3
/* 804AA6BC  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804AA6C0  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804AA6C4  7C 04 00 00 */	cmpw r4, r0
/* 804AA6C8  41 82 00 08 */	beq lbl_804AA6D0
/* 804AA6CC  4B FF FF BD */	bl aTZN1_setupAction
lbl_804AA6D0:
/* 804AA6D0  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804AA6D4  7F E3 FB 78 */	mr r3, r31
/* 804AA6D8  7D 89 03 A6 */	mtctr r12
/* 804AA6DC  4E 80 04 21 */	bctrl 
/* 804AA6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AA6E8  7C 08 03 A6 */	mtlr r0
/* 804AA6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA6F0  4E 80 00 20 */	blr 
