lbl_805C1264:
/* 805C1264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C1268  7C 08 02 A6 */	mflr r0
/* 805C126C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C1270  4B FF FF 39 */	bl get_fish_save_area
/* 805C1274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C1278  38 63 00 04 */	addi r3, r3, 4
/* 805C127C  7C 08 03 A6 */	mtlr r0
/* 805C1280  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1284  4E 80 00 20 */	blr 
