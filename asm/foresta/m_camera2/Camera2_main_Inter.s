lbl_803828AC:
/* 803828AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803828B0  7C 08 02 A6 */	mflr r0
/* 803828B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803828B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803828BC  7C 7F 1B 78 */	mr r31, r3
/* 803828C0  4B FF FF 0D */	bl Camera2_SetPos_Inter
/* 803828C4  7F E3 FB 78 */	mr r3, r31
/* 803828C8  4B FF CB DD */	bl Camera2_sound_Set_Ground
/* 803828CC  7F E3 FB 78 */	mr r3, r31
/* 803828D0  4B FF C9 31 */	bl Camera2_SetMicPos
/* 803828D4  7F E3 FB 78 */	mr r3, r31
/* 803828D8  48 00 09 C1 */	bl Camera2_change_main_index
/* 803828DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803828E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803828E4  7C 08 03 A6 */	mtlr r0
/* 803828E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803828EC  4E 80 00 20 */	blr 
