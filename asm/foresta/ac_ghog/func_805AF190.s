lbl_805AF190:
/* 805AF190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AF194  7C 08 02 A6 */	mflr r0
/* 805AF198  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AF19C  48 00 00 15 */	bl aGhog_set_bgOffset
/* 805AF1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AF1A4  7C 08 03 A6 */	mtlr r0
/* 805AF1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AF1AC  4E 80 00 20 */	blr 
