lbl_804A8CC0:
/* 804A8CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8CC4  7C 08 02 A6 */	mflr r0
/* 804A8CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A8CD0  7C 7F 1B 78 */	mr r31, r3
/* 804A8CD4  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A8CD8  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A8CDC  7C 04 00 00 */	cmpw r4, r0
/* 804A8CE0  41 82 00 08 */	beq lbl_804A8CE8
/* 804A8CE4  4B FF FF BD */	bl aTHT2_setupAction
lbl_804A8CE8:
/* 804A8CE8  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A8CEC  7F E3 FB 78 */	mr r3, r31
/* 804A8CF0  7D 89 03 A6 */	mtctr r12
/* 804A8CF4  4E 80 04 21 */	bctrl 
/* 804A8CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A8D00  7C 08 03 A6 */	mtlr r0
/* 804A8D04  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8D08  4E 80 00 20 */	blr 
