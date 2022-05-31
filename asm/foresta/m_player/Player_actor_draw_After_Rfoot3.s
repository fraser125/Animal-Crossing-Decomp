lbl_804E413C:
/* 804E413C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4140  7C 08 02 A6 */	mflr r0
/* 804E4144  7C 64 1B 78 */	mr r4, r3
/* 804E4148  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E414C  38 64 10 E8 */	addi r3, r4, 0x10e8
/* 804E4150  38 84 11 00 */	addi r4, r4, 0x1100
/* 804E4154  4B FF FE D5 */	bl Player_actor_draw_After_Culc_FootMarkPos
/* 804E4158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E415C  7C 08 03 A6 */	mtlr r0
/* 804E4160  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4164  4E 80 00 20 */	blr 
