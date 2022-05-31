lbl_804E4088:
/* 804E4088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E408C  7C 08 02 A6 */	mflr r0
/* 804E4090  7C 64 1B 78 */	mr r4, r3
/* 804E4094  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4098  38 64 10 F4 */	addi r3, r4, 0x10f4
/* 804E409C  38 84 11 06 */	addi r4, r4, 0x1106
/* 804E40A0  4B FF FF 89 */	bl Player_actor_draw_After_Culc_FootMarkPos
/* 804E40A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E40A8  7C 08 03 A6 */	mtlr r0
/* 804E40AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E40B0  4E 80 00 20 */	blr 
