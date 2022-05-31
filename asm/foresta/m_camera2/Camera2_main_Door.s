lbl_803816B4:
/* 803816B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803816B8  7C 08 02 A6 */	mflr r0
/* 803816BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803816C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803816C4  7C 7F 1B 78 */	mr r31, r3
/* 803816C8  4B FF FF 75 */	bl Camera2_SetPos_Door
/* 803816CC  7F E3 FB 78 */	mr r3, r31
/* 803816D0  4B FF DD D5 */	bl Camera2_sound_Set_Ground
/* 803816D4  7F E3 FB 78 */	mr r3, r31
/* 803816D8  4B FF DB 29 */	bl Camera2_SetMicPos
/* 803816DC  7F E3 FB 78 */	mr r3, r31
/* 803816E0  4B FF FF B5 */	bl Camera2_Door_SetTalking_Cull
/* 803816E4  7F E3 FB 78 */	mr r3, r31
/* 803816E8  48 00 1B B1 */	bl Camera2_change_main_index
/* 803816EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803816F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803816F4  7C 08 03 A6 */	mtlr r0
/* 803816F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803816FC  4E 80 00 20 */	blr 
