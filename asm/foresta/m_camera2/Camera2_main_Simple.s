lbl_80381E14:
/* 80381E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80381E18  7C 08 02 A6 */	mflr r0
/* 80381E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80381E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80381E24  7C 7F 1B 78 */	mr r31, r3
/* 80381E28  4B FF FF 3D */	bl Camera2_SetPos_Simple
/* 80381E2C  7F E3 FB 78 */	mr r3, r31
/* 80381E30  4B FF D6 75 */	bl Camera2_sound_Set_Ground
/* 80381E34  7F E3 FB 78 */	mr r3, r31
/* 80381E38  4B FF D3 C9 */	bl Camera2_SetMicPos
/* 80381E3C  80 1F 1C 1C */	lwz r0, 0x1c1c(r31)
/* 80381E40  2C 00 00 01 */	cmpwi r0, 1
/* 80381E44  40 82 00 14 */	bne lbl_80381E58
/* 80381E48  7F E3 FB 78 */	mr r3, r31
/* 80381E4C  4B FF FF 9D */	bl Camera2_Simple_AddCullTimer
/* 80381E50  7F E3 FB 78 */	mr r3, r31
/* 80381E54  4B FF E1 25 */	bl Camera2_Talk_SetTalking_Cull
lbl_80381E58:
/* 80381E58  7F E3 FB 78 */	mr r3, r31
/* 80381E5C  48 00 14 3D */	bl Camera2_change_main_index
/* 80381E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80381E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80381E68  7C 08 03 A6 */	mtlr r0
/* 80381E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80381E70  4E 80 00 20 */	blr 
