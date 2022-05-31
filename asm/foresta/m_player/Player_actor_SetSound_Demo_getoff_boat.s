lbl_80508220:
/* 80508220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508224  7C 08 02 A6 */	mflr r0
/* 80508228  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 8050822C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508230  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 80508234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80508238  7C 7F 1B 78 */	mr r31, r3
/* 8050823C  38 7F 01 74 */	addi r3, r31, 0x174
/* 80508240  4B FC F3 C1 */	bl Player_actor_Check_AnimationFrame
/* 80508244  2C 03 00 00 */	cmpwi r3, 0
/* 80508248  41 82 00 0C */	beq lbl_80508254
/* 8050824C  7F E3 FB 78 */	mr r3, r31
/* 80508250  4B FD 73 E9 */	bl Player_actor_sound_LANDING
lbl_80508254:
/* 80508254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050825C  7C 08 03 A6 */	mtlr r0
/* 80508260  38 21 00 10 */	addi r1, r1, 0x10
/* 80508264  4E 80 00 20 */	blr 
