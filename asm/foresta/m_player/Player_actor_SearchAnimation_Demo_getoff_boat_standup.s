lbl_80507D78:
/* 80507D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507D7C  7C 08 02 A6 */	mflr r0
/* 80507D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80507D88  7C 7F 1B 78 */	mr r31, r3
/* 80507D8C  4B FC F7 51 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80507D90  2C 03 00 00 */	cmpwi r3, 0
/* 80507D94  40 82 00 0C */	bne lbl_80507DA0
/* 80507D98  7F E3 FB 78 */	mr r3, r31
/* 80507D9C  4B FF FF 61 */	bl Player_actor_SetSound_Demo_getoff_boat_standup
lbl_80507DA0:
/* 80507DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80507DA8  7C 08 03 A6 */	mtlr r0
/* 80507DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80507DB0  4E 80 00 20 */	blr 
