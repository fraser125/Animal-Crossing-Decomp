lbl_804FAF14:
/* 804FAF14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FAF18  7C 08 02 A6 */	mflr r0
/* 804FAF1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FAF20  39 61 00 20 */	addi r11, r1, 0x20
/* 804FAF24  4B B9 FF AD */	bl func_8009AED0
/* 804FAF28  7C 7C 1B 78 */	mr r28, r3
/* 804FAF2C  7C 9D 23 78 */	mr r29, r4
/* 804FAF30  4B FD C3 59 */	bl Player_actor_RecieveDemoOrder_EffectOrder
/* 804FAF34  7C 60 1B 78 */	mr r0, r3
/* 804FAF38  7F 83 E3 78 */	mr r3, r28
/* 804FAF3C  7C 1F 03 78 */	mr r31, r0
/* 804FAF40  4B FF FB 31 */	bl Player_actor_Movement_Talk
/* 804FAF44  7F 83 E3 78 */	mr r3, r28
/* 804FAF48  7F A4 EB 78 */	mr r4, r29
/* 804FAF4C  4B FD CF B1 */	bl Player_actor_Reinput_force_position_angle
/* 804FAF50  7F 83 E3 78 */	mr r3, r28
/* 804FAF54  38 81 00 08 */	addi r4, r1, 8
/* 804FAF58  4B FF FC 29 */	bl Player_actor_CulcAnimation_Talk
/* 804FAF5C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FAF60  7C 7E 1B 78 */	mr r30, r3
/* 804FAF64  7F 83 E3 78 */	mr r3, r28
/* 804FAF68  4B FF FC 8D */	bl Player_actor_SearchAnimation_Talk
/* 804FAF6C  7F 83 E3 78 */	mr r3, r28
/* 804FAF70  7F A4 EB 78 */	mr r4, r29
/* 804FAF74  7F E5 FB 78 */	mr r5, r31
/* 804FAF78  7F C6 F3 78 */	mr r6, r30
/* 804FAF7C  4B FF FE 11 */	bl Player_actor_ChangeAnimation_FromDemoOrder_Talk
/* 804FAF80  7F 83 E3 78 */	mr r3, r28
/* 804FAF84  7F A4 EB 78 */	mr r4, r29
/* 804FAF88  7F E5 FB 78 */	mr r5, r31
/* 804FAF8C  4B FF FE B1 */	bl Player_actor_SetEffect_FromDemoOrder_Talk
/* 804FAF90  7F 83 E3 78 */	mr r3, r28
/* 804FAF94  4B FD C1 61 */	bl Player_actor_recover_lean_angle
/* 804FAF98  7F 83 E3 78 */	mr r3, r28
/* 804FAF9C  4B FF FE C1 */	bl Player_actor_set_eye_pattern_Talk
/* 804FAFA0  7F 83 E3 78 */	mr r3, r28
/* 804FAFA4  7F A4 EB 78 */	mr r4, r29
/* 804FAFA8  4B FF FF 2D */	bl Player_actor_ObjCheck_Talk
/* 804FAFAC  7F 83 E3 78 */	mr r3, r28
/* 804FAFB0  4B FF FF 45 */	bl Player_actor_BGcheck_Talk
/* 804FAFB4  7F 83 E3 78 */	mr r3, r28
/* 804FAFB8  7F A4 EB 78 */	mr r4, r29
/* 804FAFBC  4B FE 8D 3D */	bl Player_actor_Item_main
/* 804FAFC0  39 61 00 20 */	addi r11, r1, 0x20
/* 804FAFC4  4B B9 FF 59 */	bl func_8009AF1C
/* 804FAFC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FAFCC  7C 08 03 A6 */	mtlr r0
/* 804FAFD0  38 21 00 20 */	addi r1, r1, 0x20
/* 804FAFD4  4E 80 00 20 */	blr 
