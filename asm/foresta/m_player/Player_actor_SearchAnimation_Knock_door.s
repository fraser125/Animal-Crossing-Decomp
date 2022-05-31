lbl_805040B4:
/* 805040B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805040B8  7C 08 02 A6 */	mflr r0
/* 805040BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805040C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805040C4  7C 7F 1B 78 */	mr r31, r3
/* 805040C8  4B FD 34 15 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 805040CC  2C 03 00 00 */	cmpwi r3, 0
/* 805040D0  40 82 00 0C */	bne lbl_805040DC
/* 805040D4  7F E3 FB 78 */	mr r3, r31
/* 805040D8  4B FF FF 71 */	bl Player_actor_SetSound_Knock_door
lbl_805040DC:
/* 805040DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805040E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805040E4  7C 08 03 A6 */	mtlr r0
/* 805040E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805040EC  4E 80 00 20 */	blr 
