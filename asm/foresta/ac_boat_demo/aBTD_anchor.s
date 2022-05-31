lbl_804156C0:
/* 804156C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804156C4  7C 08 02 A6 */	mflr r0
/* 804156C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804156CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804156D0  7C 7F 1B 78 */	mr r31, r3
/* 804156D4  4B FF F7 ED */	bl func_80414EC0
/* 804156D8  2C 03 00 00 */	cmpwi r3, 0
/* 804156DC  40 82 00 0C */	bne lbl_804156E8
/* 804156E0  7F E3 FB 78 */	mr r3, r31
/* 804156E4  4B F5 ED 5D */	bl Actor_delete
lbl_804156E8:
/* 804156E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804156EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804156F0  7C 08 03 A6 */	mtlr r0
/* 804156F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804156F8  4E 80 00 20 */	blr 
