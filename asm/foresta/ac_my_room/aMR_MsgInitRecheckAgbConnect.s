lbl_80475BF8:
/* 80475BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475BFC  7C 08 02 A6 */	mflr r0
/* 80475C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475C08  7C 7F 1B 78 */	mr r31, r3
/* 80475C0C  4B BD 3B E1 */	bl mGcgba_EndComm
/* 80475C10  38 00 00 00 */	li r0, 0
/* 80475C14  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80475C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475C20  7C 08 03 A6 */	mtlr r0
/* 80475C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80475C28  4E 80 00 20 */	blr 
