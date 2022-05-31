lbl_803D9DA8:
/* 803D9DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9DAC  7C 08 02 A6 */	mflr r0
/* 803D9DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9DB4  4B FF FD 21 */	bl mPlib_Get_ItemNoToItemKind
/* 803D9DB8  7C 63 07 74 */	extsb r3, r3
/* 803D9DBC  4B FF FF C1 */	bl mPlib_Get_ItemKindTOBalloonShapeType
/* 803D9DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9DC4  7C 08 03 A6 */	mtlr r0
/* 803D9DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9DCC  4E 80 00 20 */	blr 
