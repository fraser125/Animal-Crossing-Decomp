lbl_80383224:
/* 80383224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383228  7C 08 02 A6 */	mflr r0
/* 8038322C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80383234  7C 7F 1B 78 */	mr r31, r3
/* 80383238  4B FF FC A1 */	bl Camera2_main_Staff_Roll_SetPos
/* 8038323C  7F E3 FB 78 */	mr r3, r31
/* 80383240  4B FF C2 65 */	bl Camera2_sound_Set_Ground
/* 80383244  7F E3 FB 78 */	mr r3, r31
/* 80383248  4B FF BF B9 */	bl Camera2_SetMicPos
/* 8038324C  7F E3 FB 78 */	mr r3, r31
/* 80383250  48 00 00 49 */	bl Camera2_change_main_index
/* 80383254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038325C  7C 08 03 A6 */	mtlr r0
/* 80383260  38 21 00 10 */	addi r1, r1, 0x10
/* 80383264  4E 80 00 20 */	blr 
