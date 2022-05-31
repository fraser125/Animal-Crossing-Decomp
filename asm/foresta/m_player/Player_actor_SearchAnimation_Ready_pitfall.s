lbl_80501C40:
/* 80501C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501C44  7C 08 02 A6 */	mflr r0
/* 80501C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80501C50  7C 7F 1B 78 */	mr r31, r3
/* 80501C54  4B FD 58 89 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80501C58  2C 03 00 00 */	cmpwi r3, 0
/* 80501C5C  40 82 00 0C */	bne lbl_80501C68
/* 80501C60  7F E3 FB 78 */	mr r3, r31
/* 80501C64  4B FF FF 95 */	bl Player_actor_SetEffect_Ready_pitfall
lbl_80501C68:
/* 80501C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80501C70  7C 08 03 A6 */	mtlr r0
/* 80501C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80501C78  4E 80 00 20 */	blr 
