lbl_804ECB58:
/* 804ECB58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ECB5C  7C 08 02 A6 */	mflr r0
/* 804ECB60  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ECB64  39 61 00 20 */	addi r11, r1, 0x20
/* 804ECB68  4B BA E3 6D */	bl func_8009AED4
/* 804ECB6C  7C 7D 1B 78 */	mr r29, r3
/* 804ECB70  7C 9E 23 78 */	mr r30, r4
/* 804ECB74  4B FF FF 49 */	bl Player_actor_CulcAnimation_Roll_bed
/* 804ECB78  7C 60 1B 78 */	mr r0, r3
/* 804ECB7C  7F A3 EB 78 */	mr r3, r29
/* 804ECB80  7C 1F 03 78 */	mr r31, r0
/* 804ECB84  4B FF FF 5D */	bl Player_actor_Movement_Roll_bed
/* 804ECB88  7F A3 EB 78 */	mr r3, r29
/* 804ECB8C  7F C4 F3 78 */	mr r4, r30
/* 804ECB90  4B FE B3 6D */	bl Player_actor_Reinput_force_position_angle
/* 804ECB94  7F A3 EB 78 */	mr r3, r29
/* 804ECB98  4B FE 88 81 */	bl Player_actor_set_eye_pattern_normal
/* 804ECB9C  7F A3 EB 78 */	mr r3, r29
/* 804ECBA0  7F C4 F3 78 */	mr r4, r30
/* 804ECBA4  4B FF 71 55 */	bl Player_actor_Item_main
/* 804ECBA8  7F C3 F3 78 */	mr r3, r30
/* 804ECBAC  7F E4 FB 78 */	mr r4, r31
/* 804ECBB0  4B FF FF 7D */	bl Player_actor_request_proc_index_fromRoll_bed
/* 804ECBB4  39 61 00 20 */	addi r11, r1, 0x20
/* 804ECBB8  4B BA E3 69 */	bl func_8009AF20
/* 804ECBBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ECBC0  7C 08 03 A6 */	mtlr r0
/* 804ECBC4  38 21 00 20 */	addi r1, r1, 0x20
/* 804ECBC8  4E 80 00 20 */	blr 
