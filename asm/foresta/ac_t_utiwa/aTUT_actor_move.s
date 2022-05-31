lbl_804AA510:
/* 804AA510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA514  7C 08 02 A6 */	mflr r0
/* 804AA518  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA51C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AA520  7C 7F 1B 78 */	mr r31, r3
/* 804AA524  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804AA528  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804AA52C  7C 04 00 00 */	cmpw r4, r0
/* 804AA530  41 82 00 08 */	beq lbl_804AA538
/* 804AA534  4B FF FF A5 */	bl aTUT_setupAction
lbl_804AA538:
/* 804AA538  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804AA53C  7F E3 FB 78 */	mr r3, r31
/* 804AA540  7D 89 03 A6 */	mtctr r12
/* 804AA544  4E 80 04 21 */	bctrl 
/* 804AA548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AA550  7C 08 03 A6 */	mtlr r0
/* 804AA554  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA558  4E 80 00 20 */	blr 
