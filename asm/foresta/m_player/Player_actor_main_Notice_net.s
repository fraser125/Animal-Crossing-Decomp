lbl_804F4708:
/* 804F4708  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F470C  7C 08 02 A6 */	mflr r0
/* 804F4710  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F4714  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4718  4B BA 67 BD */	bl func_8009AED4
/* 804F471C  7C 7D 1B 78 */	mr r29, r3
/* 804F4720  7C 9E 23 78 */	mr r30, r4
/* 804F4724  4B FF FB 95 */	bl Player_actor_Movement_Notice_net
/* 804F4728  7F A3 EB 78 */	mr r3, r29
/* 804F472C  7F C4 F3 78 */	mr r4, r30
/* 804F4730  4B FE 37 CD */	bl Player_actor_Reinput_force_position_angle
/* 804F4734  7F A3 EB 78 */	mr r3, r29
/* 804F4738  4B FF FB A9 */	bl Player_actor_CorrectSomething_Notice_net
/* 804F473C  7F A3 EB 78 */	mr r3, r29
/* 804F4740  4B FF FB C5 */	bl Player_actor_CulcAnimation_Notice_net
/* 804F4744  7C 60 1B 78 */	mr r0, r3
/* 804F4748  7F A3 EB 78 */	mr r3, r29
/* 804F474C  7C 1F 03 78 */	mr r31, r0
/* 804F4750  4B FE 29 A5 */	bl Player_actor_recover_lean_angle
/* 804F4754  7F A3 EB 78 */	mr r3, r29
/* 804F4758  7F E4 FB 78 */	mr r4, r31
/* 804F475C  4B FF FB CD */	bl Player_actor_set_eye_pattern_Notice_net
/* 804F4760  7F A3 EB 78 */	mr r3, r29
/* 804F4764  7F C4 F3 78 */	mr r4, r30
/* 804F4768  4B FF FC 05 */	bl Player_actor_ObjCheck_Notice_net
/* 804F476C  7F A3 EB 78 */	mr r3, r29
/* 804F4770  4B FF FC 1D */	bl Player_actor_BGcheck_Notice_net
/* 804F4774  7F A3 EB 78 */	mr r3, r29
/* 804F4778  7F C4 F3 78 */	mr r4, r30
/* 804F477C  7F E5 FB 78 */	mr r5, r31
/* 804F4780  4B FF FC 91 */	bl Player_actor_MessageControl_Notice_net
/* 804F4784  7C 60 1B 78 */	mr r0, r3
/* 804F4788  7F A3 EB 78 */	mr r3, r29
/* 804F478C  7C 1F 03 78 */	mr r31, r0
/* 804F4790  7F C4 F3 78 */	mr r4, r30
/* 804F4794  4B FE F5 65 */	bl Player_actor_Item_main
/* 804F4798  7F A3 EB 78 */	mr r3, r29
/* 804F479C  7F C4 F3 78 */	mr r4, r30
/* 804F47A0  7F E5 FB 78 */	mr r5, r31
/* 804F47A4  4B FF FE B1 */	bl Player_actor_request_proc_index_fromNotice_net
/* 804F47A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F47AC  4B BA 67 75 */	bl func_8009AF20
/* 804F47B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F47B4  7C 08 03 A6 */	mtlr r0
/* 804F47B8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F47BC  4E 80 00 20 */	blr 
