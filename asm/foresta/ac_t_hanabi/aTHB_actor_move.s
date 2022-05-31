lbl_804A8880:
/* 804A8880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8884  7C 08 02 A6 */	mflr r0
/* 804A8888  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A888C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A8890  7C 7F 1B 78 */	mr r31, r3
/* 804A8894  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A8898  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A889C  7C 04 00 00 */	cmpw r4, r0
/* 804A88A0  41 82 00 08 */	beq lbl_804A88A8
/* 804A88A4  4B FF FF A5 */	bl aTHB_setupAction
lbl_804A88A8:
/* 804A88A8  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A88AC  7F E3 FB 78 */	mr r3, r31
/* 804A88B0  7D 89 03 A6 */	mtctr r12
/* 804A88B4  4E 80 04 21 */	bctrl 
/* 804A88B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A88BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A88C0  7C 08 03 A6 */	mtlr r0
/* 804A88C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A88C8  4E 80 00 20 */	blr 
