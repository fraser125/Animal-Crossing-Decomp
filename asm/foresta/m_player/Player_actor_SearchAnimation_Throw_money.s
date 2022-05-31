lbl_805005A4:
/* 805005A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805005A8  7C 08 02 A6 */	mflr r0
/* 805005AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805005B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805005B4  7C 9F 23 78 */	mr r31, r4
/* 805005B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805005BC  7C 7E 1B 78 */	mr r30, r3
/* 805005C0  4B FD 6F 1D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 805005C4  2C 03 00 00 */	cmpwi r3, 0
/* 805005C8  40 82 00 18 */	bne lbl_805005E0
/* 805005CC  7F C3 F3 78 */	mr r3, r30
/* 805005D0  4B FF FE E9 */	bl Player_actor_SetSound_Throw_money
/* 805005D4  7F C3 F3 78 */	mr r3, r30
/* 805005D8  7F E4 FB 78 */	mr r4, r31
/* 805005DC  4B FF FF 25 */	bl Player_actor_SetEffect_Throw_money
lbl_805005E0:
/* 805005E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805005E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805005E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805005EC  7C 08 03 A6 */	mtlr r0
/* 805005F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805005F4  4E 80 00 20 */	blr 
