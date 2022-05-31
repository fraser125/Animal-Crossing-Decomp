lbl_803DAD84:
/* 803DAD84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DAD88  7C 08 02 A6 */	mflr r0
/* 803DAD8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DAD90  39 61 00 20 */	addi r11, r1, 0x20
/* 803DAD94  4B CC 01 41 */	bl func_8009AED4
/* 803DAD98  7C 7D 1B 78 */	mr r29, r3
/* 803DAD9C  7C 9E 23 78 */	mr r30, r4
/* 803DADA0  7C BF 2B 78 */	mr r31, r5
/* 803DADA4  4B FF E8 9D */	bl get_player_actor_withoutCheck
/* 803DADA8  81 83 12 C0 */	lwz r12, 0x12c0(r3)
/* 803DADAC  7F A3 EB 78 */	mr r3, r29
/* 803DADB0  7F C4 F3 78 */	mr r4, r30
/* 803DADB4  7F E5 FB 78 */	mr r5, r31
/* 803DADB8  38 C0 00 13 */	li r6, 0x13
/* 803DADBC  7D 89 03 A6 */	mtctr r12
/* 803DADC0  4E 80 04 21 */	bctrl 
/* 803DADC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DADC8  4B CC 01 59 */	bl func_8009AF20
/* 803DADCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DADD0  7C 08 03 A6 */	mtlr r0
/* 803DADD4  38 21 00 20 */	addi r1, r1, 0x20
/* 803DADD8  4E 80 00 20 */	blr 
