lbl_804A9D08:
/* 804A9D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9D0C  7C 08 02 A6 */	mflr r0
/* 804A9D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A9D18  7C 7F 1B 78 */	mr r31, r3
/* 804A9D1C  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A9D20  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A9D24  7C 04 00 00 */	cmpw r4, r0
/* 804A9D28  41 82 00 08 */	beq lbl_804A9D30
/* 804A9D2C  4B FF FF A9 */	bl aTTB_setupAction
lbl_804A9D30:
/* 804A9D30  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A9D34  7F E3 FB 78 */	mr r3, r31
/* 804A9D38  7D 89 03 A6 */	mtctr r12
/* 804A9D3C  4E 80 04 21 */	bctrl 
/* 804A9D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A9D48  7C 08 03 A6 */	mtlr r0
/* 804A9D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9D50  4E 80 00 20 */	blr 
