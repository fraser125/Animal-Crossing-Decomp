lbl_803800D4:
/* 803800D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803800D8  7C 08 02 A6 */	mflr r0
/* 803800DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803800E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803800E4  7C 7F 1B 78 */	mr r31, r3
/* 803800E8  4B FF FD 75 */	bl Camera2_SetPos_Talk
/* 803800EC  7F E3 FB 78 */	mr r3, r31
/* 803800F0  4B FF F3 B5 */	bl Camera2_sound_Set_Ground
/* 803800F4  7F E3 FB 78 */	mr r3, r31
/* 803800F8  4B FF F1 09 */	bl Camera2_SetMicPos
/* 803800FC  7F E3 FB 78 */	mr r3, r31
/* 80380100  4B FF FE 4D */	bl Camera2_Talk_AddCullTimer
/* 80380104  7F E3 FB 78 */	mr r3, r31
/* 80380108  4B FF FE 71 */	bl Camera2_Talk_SetTalking_Cull
/* 8038010C  7F E3 FB 78 */	mr r3, r31
/* 80380110  48 00 31 89 */	bl Camera2_change_main_index
/* 80380114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80380118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038011C  7C 08 03 A6 */	mtlr r0
/* 80380120  38 21 00 10 */	addi r1, r1, 0x10
/* 80380124  4E 80 00 20 */	blr 
