lbl_804A8B6C:
/* 804A8B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8B70  7C 08 02 A6 */	mflr r0
/* 804A8B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A8B7C  7C 7F 1B 78 */	mr r31, r3
/* 804A8B80  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A8B84  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A8B88  7C 04 00 00 */	cmpw r4, r0
/* 804A8B8C  41 82 00 08 */	beq lbl_804A8B94
/* 804A8B90  4B FF FF BD */	bl aTHT1_setupAction
lbl_804A8B94:
/* 804A8B94  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A8B98  7F E3 FB 78 */	mr r3, r31
/* 804A8B9C  7D 89 03 A6 */	mtctr r12
/* 804A8BA0  4E 80 04 21 */	bctrl 
/* 804A8BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A8BAC  7C 08 03 A6 */	mtlr r0
/* 804A8BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8BB4  4E 80 00 20 */	blr 
