lbl_80380E94:
/* 80380E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380E98  7C 08 02 A6 */	mflr r0
/* 80380E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80380EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80380EA4  7C 7F 1B 78 */	mr r31, r3
/* 80380EA8  4B FF FE 9D */	bl Camera2_SetPos_Item
/* 80380EAC  7F E3 FB 78 */	mr r3, r31
/* 80380EB0  4B FF E5 F5 */	bl Camera2_sound_Set_Ground
/* 80380EB4  7F E3 FB 78 */	mr r3, r31
/* 80380EB8  4B FF E3 49 */	bl Camera2_SetMicPos
/* 80380EBC  7F E3 FB 78 */	mr r3, r31
/* 80380EC0  4B FF FF 89 */	bl Camera2_Item_AddCullTimer
/* 80380EC4  7F E3 FB 78 */	mr r3, r31
/* 80380EC8  4B FF FF AD */	bl Camera2_Item_SetTalking_Cull
/* 80380ECC  7F E3 FB 78 */	mr r3, r31
/* 80380ED0  48 00 23 C9 */	bl Camera2_change_main_index
/* 80380ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80380ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80380EDC  7C 08 03 A6 */	mtlr r0
/* 80380EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80380EE4  4E 80 00 20 */	blr 
