lbl_80503AB4:
/* 80503AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503AB8  7C 08 02 A6 */	mflr r0
/* 80503ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503AC4  7C 7F 1B 78 */	mr r31, r3
/* 80503AC8  4B FD 3A 15 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80503ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80503AD0  40 82 00 0C */	bne lbl_80503ADC
/* 80503AD4  7F E3 FB 78 */	mr r3, r31
/* 80503AD8  4B FF FF 89 */	bl Player_actor_Set_FeelEffect_Shock
lbl_80503ADC:
/* 80503ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503AE4  7C 08 03 A6 */	mtlr r0
/* 80503AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80503AEC  4E 80 00 20 */	blr 
