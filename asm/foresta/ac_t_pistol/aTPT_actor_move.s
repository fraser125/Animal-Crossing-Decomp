lbl_804A963C:
/* 804A963C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9640  7C 08 02 A6 */	mflr r0
/* 804A9644  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A964C  7C 7F 1B 78 */	mr r31, r3
/* 804A9650  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A9654  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A9658  7C 04 00 00 */	cmpw r4, r0
/* 804A965C  41 82 00 08 */	beq lbl_804A9664
/* 804A9660  4B FF FF A5 */	bl aTPT_setupAction
lbl_804A9664:
/* 804A9664  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A9668  7F E3 FB 78 */	mr r3, r31
/* 804A966C  7D 89 03 A6 */	mtctr r12
/* 804A9670  4E 80 04 21 */	bctrl 
/* 804A9674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A967C  7C 08 03 A6 */	mtlr r0
/* 804A9680  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9684  4E 80 00 20 */	blr 
