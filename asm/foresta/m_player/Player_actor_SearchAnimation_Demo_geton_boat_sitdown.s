lbl_805074A4:
/* 805074A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805074A8  7C 08 02 A6 */	mflr r0
/* 805074AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805074B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805074B4  7C 7F 1B 78 */	mr r31, r3
/* 805074B8  4B FD 00 25 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 805074BC  2C 03 00 00 */	cmpwi r3, 0
/* 805074C0  40 82 00 0C */	bne lbl_805074CC
/* 805074C4  7F E3 FB 78 */	mr r3, r31
/* 805074C8  4B FF FF 61 */	bl Player_actor_SetSound_Demo_geton_boat_sitdown
lbl_805074CC:
/* 805074CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805074D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805074D4  7C 08 03 A6 */	mtlr r0
/* 805074D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805074DC  4E 80 00 20 */	blr 
