lbl_80501938:
/* 80501938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050193C  7C 08 02 A6 */	mflr r0
/* 80501940  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501944  39 61 00 20 */	addi r11, r1, 0x20
/* 80501948  4B B9 95 8D */	bl func_8009AED4
/* 8050194C  7C 7D 1B 78 */	mr r29, r3
/* 80501950  7C 9E 23 78 */	mr r30, r4
/* 80501954  4B FF FE 5D */	bl Player_actor_Movement_Mail_land
/* 80501958  7F A3 EB 78 */	mr r3, r29
/* 8050195C  4B FF FE 7D */	bl Player_actor_CulcAnimation_Mail_land
/* 80501960  7C 60 1B 78 */	mr r0, r3
/* 80501964  7F A3 EB 78 */	mr r3, r29
/* 80501968  7C 1F 03 78 */	mr r31, r0
/* 8050196C  7F C4 F3 78 */	mr r4, r30
/* 80501970  4B FD 65 8D */	bl Player_actor_Reinput_force_position_angle
/* 80501974  7F A3 EB 78 */	mr r3, r29
/* 80501978  4B FD 57 7D */	bl Player_actor_recover_lean_angle
/* 8050197C  7F A3 EB 78 */	mr r3, r29
/* 80501980  4B FD 3A 99 */	bl Player_actor_set_eye_pattern_normal
/* 80501984  7F A3 EB 78 */	mr r3, r29
/* 80501988  7F C4 F3 78 */	mr r4, r30
/* 8050198C  4B FF FE 71 */	bl Player_actor_ObjCheck_Mail_land
/* 80501990  7F A3 EB 78 */	mr r3, r29
/* 80501994  4B FF FE 89 */	bl Player_actor_BGcheck_Mail_land
/* 80501998  7F A3 EB 78 */	mr r3, r29
/* 8050199C  7F C4 F3 78 */	mr r4, r30
/* 805019A0  4B FE 23 59 */	bl Player_actor_Item_main
/* 805019A4  7F A3 EB 78 */	mr r3, r29
/* 805019A8  7F C4 F3 78 */	mr r4, r30
/* 805019AC  7F E5 FB 78 */	mr r5, r31
/* 805019B0  4B FF FE 8D */	bl Player_actor_request_proc_index_fromMail_land
/* 805019B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805019B8  4B B9 95 69 */	bl func_8009AF20
/* 805019BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805019C0  7C 08 03 A6 */	mtlr r0
/* 805019C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805019C8  4E 80 00 20 */	blr 
