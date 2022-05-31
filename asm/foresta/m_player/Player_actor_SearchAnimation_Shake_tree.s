lbl_8050109C:
/* 8050109C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805010A0  7C 08 02 A6 */	mflr r0
/* 805010A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805010A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805010AC  7C 9F 23 78 */	mr r31, r4
/* 805010B0  93 C1 00 08 */	stw r30, 8(r1)
/* 805010B4  7C 7E 1B 78 */	mr r30, r3
/* 805010B8  4B FD 64 25 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 805010BC  2C 03 00 00 */	cmpwi r3, 0
/* 805010C0  40 82 00 18 */	bne lbl_805010D8
/* 805010C4  7F C3 F3 78 */	mr r3, r30
/* 805010C8  7F E4 FB 78 */	mr r4, r31
/* 805010CC  4B FF FB 91 */	bl Player_actor_SetEffect_Shake_tree
/* 805010D0  7F C3 F3 78 */	mr r3, r30
/* 805010D4  4B FF FF 81 */	bl Player_actor_SetSound_Shake_tree
lbl_805010D8:
/* 805010D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805010DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805010E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805010E4  7C 08 03 A6 */	mtlr r0
/* 805010E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805010EC  4E 80 00 20 */	blr 
