lbl_80503644:
/* 80503644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503648  7C 08 02 A6 */	mflr r0
/* 8050364C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503654  7C 9F 23 78 */	mr r31, r4
/* 80503658  93 C1 00 08 */	stw r30, 8(r1)
/* 8050365C  7C 7E 1B 78 */	mr r30, r3
/* 80503660  4B FD 3E 7D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80503664  2C 03 00 00 */	cmpwi r3, 0
/* 80503668  40 82 00 10 */	bne lbl_80503678
/* 8050366C  7F C3 F3 78 */	mr r3, r30
/* 80503670  7F E4 FB 78 */	mr r4, r31
/* 80503674  4B FF FE 75 */	bl Player_actor_ChangeFGNumber_Remove_grass
lbl_80503678:
/* 80503678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050367C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503680  83 C1 00 08 */	lwz r30, 8(r1)
/* 80503684  7C 08 03 A6 */	mtlr r0
/* 80503688  38 21 00 10 */	addi r1, r1, 0x10
/* 8050368C  4E 80 00 20 */	blr 
