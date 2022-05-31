lbl_80544EE0:
/* 80544EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80544EE4  7C 08 02 A6 */	mflr r0
/* 80544EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544EEC  4B E7 75 C9 */	bl zelda_free
/* 80544EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80544EF4  7C 08 03 A6 */	mtlr r0
/* 80544EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80544EFC  4E 80 00 20 */	blr 
