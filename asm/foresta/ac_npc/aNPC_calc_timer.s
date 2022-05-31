lbl_8052F94C:
/* 8052F94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052F950  7C 08 02 A6 */	mflr r0
/* 8052F954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052F958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052F95C  7C 7F 1B 78 */	mr r31, r3
/* 8052F960  4B FF FF 71 */	bl aNPC_calc_move_timer
/* 8052F964  7F E3 FB 78 */	mr r3, r31
/* 8052F968  4B FF FF 85 */	bl aNPC_calc_force_call_timer
/* 8052F96C  7F E3 FB 78 */	mr r3, r31
/* 8052F970  4B FF FF C5 */	bl aNPC_calc_act_timer
/* 8052F974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052F978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052F97C  7C 08 03 A6 */	mtlr r0
/* 8052F980  38 21 00 10 */	addi r1, r1, 0x10
/* 8052F984  4E 80 00 20 */	blr 
