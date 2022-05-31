lbl_8062E6DC:
/* 8062E6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E6E0  7C 08 02 A6 */	mflr r0
/* 8062E6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E6E8  4B 9E 62 69 */	bl Na_SceneMode
/* 8062E6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E6F0  7C 08 03 A6 */	mtlr r0
/* 8062E6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E6F8  4E 80 00 20 */	blr 
