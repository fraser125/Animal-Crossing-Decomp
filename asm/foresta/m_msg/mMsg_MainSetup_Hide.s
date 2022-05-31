lbl_803C26B4:
/* 803C26B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C26B8  7C 08 02 A6 */	mflr r0
/* 803C26BC  7C 83 23 78 */	mr r3, r4
/* 803C26C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C26C4  4B FF E3 89 */	bl mMsg_init
/* 803C26C8  4B C8 88 89 */	bl emu64_refresh
/* 803C26CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C26D0  7C 08 03 A6 */	mtlr r0
/* 803C26D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C26D8  4E 80 00 20 */	blr 
