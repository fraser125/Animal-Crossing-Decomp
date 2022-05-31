lbl_804FEABC:
/* 804FEABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FEAC0  7C 08 02 A6 */	mflr r0
/* 804FEAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FEAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FEACC  7C 9F 23 78 */	mr r31, r4
/* 804FEAD0  93 C1 00 08 */	stw r30, 8(r1)
/* 804FEAD4  7C 7E 1B 78 */	mr r30, r3
/* 804FEAD8  4B FD 94 25 */	bl Player_actor_Reinput_force_position_angle
/* 804FEADC  7F C3 F3 78 */	mr r3, r30
/* 804FEAE0  4B FF FF 7D */	bl Player_actor_CulcAnimation_Groundhog
/* 804FEAE4  7F C3 F3 78 */	mr r3, r30
/* 804FEAE8  4B FD 86 0D */	bl Player_actor_recover_lean_angle
/* 804FEAEC  7F C3 F3 78 */	mr r3, r30
/* 804FEAF0  4B FD 69 29 */	bl Player_actor_set_eye_pattern_normal
/* 804FEAF4  7F C3 F3 78 */	mr r3, r30
/* 804FEAF8  7F E4 FB 78 */	mr r4, r31
/* 804FEAFC  4B FF FF 81 */	bl Player_actor_ObjCheck_Groundhog
/* 804FEB00  7F C3 F3 78 */	mr r3, r30
/* 804FEB04  4B FF FF 99 */	bl Player_actor_BGcheck_Groundhog
/* 804FEB08  7F C3 F3 78 */	mr r3, r30
/* 804FEB0C  7F E4 FB 78 */	mr r4, r31
/* 804FEB10  4B FE 51 E9 */	bl Player_actor_Item_main
/* 804FEB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FEB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FEB1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FEB20  7C 08 03 A6 */	mtlr r0
/* 804FEB24  38 21 00 10 */	addi r1, r1, 0x10
/* 804FEB28  4E 80 00 20 */	blr 
