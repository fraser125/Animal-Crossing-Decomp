lbl_804F11CC:
/* 804F11CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F11D0  7C 08 02 A6 */	mflr r0
/* 804F11D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F11D8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F11DC  4B BA 9C F5 */	bl func_8009AED0
/* 804F11E0  7C 7C 1B 78 */	mr r28, r3
/* 804F11E4  7C 9D 23 78 */	mr r29, r4
/* 804F11E8  3B FC 0D 18 */	addi r31, r28, 0xd18
/* 804F11EC  38 A0 00 00 */	li r5, 0
/* 804F11F0  7F E4 FB 78 */	mr r4, r31
/* 804F11F4  4B FF FA 81 */	bl Player_actor_Movement_Reflect_axe
/* 804F11F8  7F 83 E3 78 */	mr r3, r28
/* 804F11FC  7F A4 EB 78 */	mr r4, r29
/* 804F1200  4B FE 6C FD */	bl Player_actor_Reinput_force_position_angle
/* 804F1204  7F 83 E3 78 */	mr r3, r28
/* 804F1208  38 81 00 08 */	addi r4, r1, 8
/* 804F120C  38 A0 00 00 */	li r5, 0
/* 804F1210  4B FF FA 85 */	bl Player_actor_CulcAnimation_Reflect_axe
/* 804F1214  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F1218  7C 7E 1B 78 */	mr r30, r3
/* 804F121C  7F 83 E3 78 */	mr r3, r28
/* 804F1220  7F A4 EB 78 */	mr r4, r29
/* 804F1224  7F E5 FB 78 */	mr r5, r31
/* 804F1228  38 C0 00 00 */	li r6, 0
/* 804F122C  4B FF FD 91 */	bl Player_actor_SearchAnimation_Reflect_axe
/* 804F1230  7F 83 E3 78 */	mr r3, r28
/* 804F1234  4B FE 5E C1 */	bl Player_actor_recover_lean_angle
/* 804F1238  7F 83 E3 78 */	mr r3, r28
/* 804F123C  4B FE 43 09 */	bl Player_actor_set_tex_anime_pattern
/* 804F1240  7F 83 E3 78 */	mr r3, r28
/* 804F1244  7F A4 EB 78 */	mr r4, r29
/* 804F1248  38 A0 00 00 */	li r5, 0
/* 804F124C  4B FF FE 29 */	bl Player_actor_ObjCheck_Reflect_axe
/* 804F1250  7F 83 E3 78 */	mr r3, r28
/* 804F1254  38 80 00 00 */	li r4, 0
/* 804F1258  4B FF FE 3D */	bl Player_actor_BGcheck_Reflect_axe
/* 804F125C  7F 83 E3 78 */	mr r3, r28
/* 804F1260  7F A4 EB 78 */	mr r4, r29
/* 804F1264  4B FF 2A 95 */	bl Player_actor_Item_main
/* 804F1268  7F 83 E3 78 */	mr r3, r28
/* 804F126C  7F A4 EB 78 */	mr r4, r29
/* 804F1270  7F C5 F3 78 */	mr r5, r30
/* 804F1274  38 C0 00 00 */	li r6, 0
/* 804F1278  4B FF FE 3D */	bl Player_actor_request_proc_index_fromReflect_axe
/* 804F127C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F1280  4B BA 9C 9D */	bl func_8009AF1C
/* 804F1284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1288  7C 08 03 A6 */	mtlr r0
/* 804F128C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1290  4E 80 00 20 */	blr 
