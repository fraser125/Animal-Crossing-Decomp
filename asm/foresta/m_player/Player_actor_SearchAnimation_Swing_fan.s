lbl_805065AC:
/* 805065AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805065B0  7C 08 02 A6 */	mflr r0
/* 805065B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805065B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805065BC  7C 7F 1B 78 */	mr r31, r3
/* 805065C0  4B FD 0F 1D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 805065C4  2C 03 00 00 */	cmpwi r3, 0
/* 805065C8  40 82 00 0C */	bne lbl_805065D4
/* 805065CC  7F E3 FB 78 */	mr r3, r31
/* 805065D0  4B FF FF 95 */	bl Player_actor_SetSound_Swing_fan
lbl_805065D4:
/* 805065D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805065D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805065DC  7C 08 03 A6 */	mtlr r0
/* 805065E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805065E4  4E 80 00 20 */	blr 
