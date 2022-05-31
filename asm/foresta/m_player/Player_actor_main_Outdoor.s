lbl_804E9BA4:
/* 804E9BA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E9BA8  7C 08 02 A6 */	mflr r0
/* 804E9BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E9BB0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E9BB4  4B BB 13 21 */	bl func_8009AED4
/* 804E9BB8  7C 7D 1B 78 */	mr r29, r3
/* 804E9BBC  7C 9E 23 78 */	mr r30, r4
/* 804E9BC0  4B FF FF 6D */	bl Player_actor_Request_Demo_Outdoor
/* 804E9BC4  2C 03 00 00 */	cmpwi r3, 0
/* 804E9BC8  41 82 00 68 */	beq lbl_804E9C30
/* 804E9BCC  7F A3 EB 78 */	mr r3, r29
/* 804E9BD0  38 81 00 08 */	addi r4, r1, 8
/* 804E9BD4  4B FF FE 65 */	bl Player_actor_CulcAnimation_Outdoor
/* 804E9BD8  7C 60 1B 78 */	mr r0, r3
/* 804E9BDC  7F A3 EB 78 */	mr r3, r29
/* 804E9BE0  7C 04 03 78 */	mr r4, r0
/* 804E9BE4  4B FF FE 75 */	bl Player_actor_Movement_Outdoor
/* 804E9BE8  7C 60 1B 78 */	mr r0, r3
/* 804E9BEC  7F A3 EB 78 */	mr r3, r29
/* 804E9BF0  7C 1F 03 78 */	mr r31, r0
/* 804E9BF4  7F C4 F3 78 */	mr r4, r30
/* 804E9BF8  4B FE E3 05 */	bl Player_actor_Reinput_force_position_angle
/* 804E9BFC  7F A3 EB 78 */	mr r3, r29
/* 804E9C00  4B FE D4 F5 */	bl Player_actor_recover_lean_angle
/* 804E9C04  7F A3 EB 78 */	mr r3, r29
/* 804E9C08  4B FE B8 11 */	bl Player_actor_set_eye_pattern_normal
/* 804E9C0C  7F A3 EB 78 */	mr r3, r29
/* 804E9C10  7F C4 F3 78 */	mr r4, r30
/* 804E9C14  4B FF FE 8D */	bl Player_actor_ObjCheck_Outdoor
/* 804E9C18  7F A3 EB 78 */	mr r3, r29
/* 804E9C1C  7F C4 F3 78 */	mr r4, r30
/* 804E9C20  4B FF A0 D9 */	bl Player_actor_Item_main
/* 804E9C24  7F C3 F3 78 */	mr r3, r30
/* 804E9C28  7F E4 FB 78 */	mr r4, r31
/* 804E9C2C  4B FF FE 95 */	bl Player_actor_request_proc_index_fromOutdoor
lbl_804E9C30:
/* 804E9C30  39 61 00 20 */	addi r11, r1, 0x20
/* 804E9C34  4B BB 12 ED */	bl func_8009AF20
/* 804E9C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E9C3C  7C 08 03 A6 */	mtlr r0
/* 804E9C40  38 21 00 20 */	addi r1, r1, 0x20
/* 804E9C44  4E 80 00 20 */	blr 
