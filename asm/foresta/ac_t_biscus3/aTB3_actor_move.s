lbl_804A7D70:
/* 804A7D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7D74  7C 08 02 A6 */	mflr r0
/* 804A7D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A7D80  7C 7F 1B 78 */	mr r31, r3
/* 804A7D84  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A7D88  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A7D8C  7C 04 00 00 */	cmpw r4, r0
/* 804A7D90  41 82 00 08 */	beq lbl_804A7D98
/* 804A7D94  4B FF FF BD */	bl aTB3_setupAction
lbl_804A7D98:
/* 804A7D98  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A7D9C  7F E3 FB 78 */	mr r3, r31
/* 804A7DA0  7D 89 03 A6 */	mtctr r12
/* 804A7DA4  4E 80 04 21 */	bctrl 
/* 804A7DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A7DB0  7C 08 03 A6 */	mtlr r0
/* 804A7DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7DB8  4E 80 00 20 */	blr 
