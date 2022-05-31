lbl_80508298:
/* 80508298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050829C  7C 08 02 A6 */	mflr r0
/* 805082A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805082A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805082A8  7C 7F 1B 78 */	mr r31, r3
/* 805082AC  4B FC F2 31 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 805082B0  2C 03 00 00 */	cmpwi r3, 0
/* 805082B4  40 82 00 0C */	bne lbl_805082C0
/* 805082B8  7F E3 FB 78 */	mr r3, r31
/* 805082BC  4B FF FF 65 */	bl Player_actor_SetSound_Demo_getoff_boat
lbl_805082C0:
/* 805082C0  7F E3 FB 78 */	mr r3, r31
/* 805082C4  4B FF FF A5 */	bl Player_actor_ControlShadow_Demo_getoff_boat
/* 805082C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805082CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805082D0  7C 08 03 A6 */	mtlr r0
/* 805082D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805082D8  4E 80 00 20 */	blr 
