lbl_80560624:
/* 80560624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560628  7C 08 02 A6 */	mflr r0
/* 8056062C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560634  7C 7F 1B 78 */	mr r31, r3
/* 80560638  4B FF F3 F9 */	bl aNM2_set_free_str
/* 8056063C  4B FF F5 CD */	bl aNM2_get_msg_no_mishiranuneko_talk_start
/* 80560640  4B E3 7E D5 */	bl mDemo_Set_msg_num
/* 80560644  38 60 00 0D */	li r3, 0xd
/* 80560648  4B E3 82 D9 */	bl mDemo_Set_camera
/* 8056064C  38 60 00 00 */	li r3, 0
/* 80560650  4B E3 81 21 */	bl mDemo_Set_talk_change_player
/* 80560654  38 60 00 01 */	li r3, 1
/* 80560658  4B E3 80 49 */	bl mDemo_Set_use_zoom_sound
/* 8056065C  38 00 00 01 */	li r0, 1
/* 80560660  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 80560664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056066C  7C 08 03 A6 */	mtlr r0
/* 80560670  38 21 00 10 */	addi r1, r1, 0x10
/* 80560674  4E 80 00 20 */	blr 
