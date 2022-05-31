lbl_8056A3A8:
/* 8056A3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A3AC  7C 08 02 A6 */	mflr r0
/* 8056A3B0  38 80 00 00 */	li r4, 0
/* 8056A3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A3B8  38 00 01 00 */	li r0, 0x100
/* 8056A3BC  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 8056A3C0  90 03 08 40 */	stw r0, 0x840(r3)
/* 8056A3C4  4B FF FE C1 */	bl aPOL_set_animation
/* 8056A3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A3CC  7C 08 03 A6 */	mtlr r0
/* 8056A3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A3D4  4E 80 00 20 */	blr 
