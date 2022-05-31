lbl_80540ED0:
/* 80540ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540ED4  7C 08 02 A6 */	mflr r0
/* 80540ED8  38 80 FF FF */	li r4, -1
/* 80540EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540EE0  38 00 00 00 */	li r0, 0
/* 80540EE4  90 83 08 40 */	stw r4, 0x840(r3)
/* 80540EE8  38 80 00 29 */	li r4, 0x29
/* 80540EEC  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80540EF0  4B FF CE 61 */	bl aNPC_setupAction
/* 80540EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540EF8  7C 08 03 A6 */	mtlr r0
/* 80540EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80540F00  4E 80 00 20 */	blr 
