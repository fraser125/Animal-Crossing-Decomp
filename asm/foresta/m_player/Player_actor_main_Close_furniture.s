lbl_804EBC04:
/* 804EBC04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EBC08  7C 08 02 A6 */	mflr r0
/* 804EBC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EBC10  39 61 00 20 */	addi r11, r1, 0x20
/* 804EBC14  4B BA F2 C1 */	bl func_8009AED4
/* 804EBC18  7C 9E 23 78 */	mr r30, r4
/* 804EBC1C  7C 7D 1B 78 */	mr r29, r3
/* 804EBC20  38 81 00 08 */	addi r4, r1, 8
/* 804EBC24  4B FF FE 6D */	bl Player_actor_CulcAnimation_Close_furniture
/* 804EBC28  7C 60 1B 78 */	mr r0, r3
/* 804EBC2C  7F A3 EB 78 */	mr r3, r29
/* 804EBC30  7C 1F 03 78 */	mr r31, r0
/* 804EBC34  4B FF FE 7D */	bl Player_actor_Movement_Close_furniture
/* 804EBC38  7F A3 EB 78 */	mr r3, r29
/* 804EBC3C  7F C4 F3 78 */	mr r4, r30
/* 804EBC40  4B FE C2 BD */	bl Player_actor_Reinput_force_position_angle
/* 804EBC44  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EBC48  7F A3 EB 78 */	mr r3, r29
/* 804EBC4C  7F C4 F3 78 */	mr r4, r30
/* 804EBC50  4B FF FE A9 */	bl Player_actor_SearchAnimation_Close_furniture
/* 804EBC54  7F A3 EB 78 */	mr r3, r29
/* 804EBC58  4B FE B4 9D */	bl Player_actor_recover_lean_angle
/* 804EBC5C  7F A3 EB 78 */	mr r3, r29
/* 804EBC60  4B FE 97 B9 */	bl Player_actor_set_eye_pattern_normal
/* 804EBC64  7F A3 EB 78 */	mr r3, r29
/* 804EBC68  7F C4 F3 78 */	mr r4, r30
/* 804EBC6C  4B FF FE E1 */	bl Player_actor_ObjCheck_Close_furniture
/* 804EBC70  7F A3 EB 78 */	mr r3, r29
/* 804EBC74  4B FF FE F9 */	bl Player_actor_BGcheck_Close_furniture
/* 804EBC78  7F A3 EB 78 */	mr r3, r29
/* 804EBC7C  7F C4 F3 78 */	mr r4, r30
/* 804EBC80  4B FF 80 79 */	bl Player_actor_Item_main
/* 804EBC84  7F A3 EB 78 */	mr r3, r29
/* 804EBC88  7F C4 F3 78 */	mr r4, r30
/* 804EBC8C  7F E5 FB 78 */	mr r5, r31
/* 804EBC90  4B FF FE FD */	bl Player_actor_request_proc_index_fromClose_furniture
/* 804EBC94  39 61 00 20 */	addi r11, r1, 0x20
/* 804EBC98  4B BA F2 89 */	bl func_8009AF20
/* 804EBC9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EBCA0  7C 08 03 A6 */	mtlr r0
/* 804EBCA4  38 21 00 20 */	addi r1, r1, 0x20
/* 804EBCA8  4E 80 00 20 */	blr 
