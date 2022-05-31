lbl_804A7974:
/* 804A7974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7978  7C 08 02 A6 */	mflr r0
/* 804A797C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A7984  7C 7F 1B 78 */	mr r31, r3
/* 804A7988  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A798C  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A7990  7C 04 00 00 */	cmpw r4, r0
/* 804A7994  41 82 00 08 */	beq lbl_804A799C
/* 804A7998  4B FF FF BD */	bl aTBG2_setupAction
lbl_804A799C:
/* 804A799C  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A79A0  7F E3 FB 78 */	mr r3, r31
/* 804A79A4  7D 89 03 A6 */	mtctr r12
/* 804A79A8  4E 80 04 21 */	bctrl 
/* 804A79AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A79B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A79B4  7C 08 03 A6 */	mtlr r0
/* 804A79B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A79BC  4E 80 00 20 */	blr 
