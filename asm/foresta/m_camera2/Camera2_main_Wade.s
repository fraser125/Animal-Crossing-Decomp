lbl_8037F64C:
/* 8037F64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F650  7C 08 02 A6 */	mflr r0
/* 8037F654  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F65C  7C 7F 1B 78 */	mr r31, r3
/* 8037F660  4B FF FF 69 */	bl Camera2_SetPos_Wade
/* 8037F664  7F E3 FB 78 */	mr r3, r31
/* 8037F668  4B FF FE 3D */	bl Camera2_sound_Set_Ground
/* 8037F66C  7F E3 FB 78 */	mr r3, r31
/* 8037F670  4B FF FB 91 */	bl Camera2_SetMicPos
/* 8037F674  7F E3 FB 78 */	mr r3, r31
/* 8037F678  4B FF FF 81 */	bl Camera2_request_proc_index_fromWade
/* 8037F67C  7F E3 FB 78 */	mr r3, r31
/* 8037F680  48 00 3C 19 */	bl Camera2_change_main_index
/* 8037F684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F68C  7C 08 03 A6 */	mtlr r0
/* 8037F690  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F694  4E 80 00 20 */	blr 
