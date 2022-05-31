lbl_804EEEA0:
/* 804EEEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EEEA4  7C 08 02 A6 */	mflr r0
/* 804EEEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EEEAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EEEB0  7C 7F 1B 78 */	mr r31, r3
/* 804EEEB4  93 C1 00 08 */	stw r30, 8(r1)
/* 804EEEB8  7C 9E 23 78 */	mr r30, r4
/* 804EEEBC  4B FF FD 65 */	bl Player_actor_Movement_Pickup_exchange
/* 804EEEC0  7F E3 FB 78 */	mr r3, r31
/* 804EEEC4  4B FF FD 85 */	bl Player_actor_CulcAnimation_Pickup_exchange
/* 804EEEC8  7F E3 FB 78 */	mr r3, r31
/* 804EEECC  7F C4 F3 78 */	mr r4, r30
/* 804EEED0  4B FE 90 2D */	bl Player_actor_Reinput_force_position_angle
/* 804EEED4  7F E3 FB 78 */	mr r3, r31
/* 804EEED8  4B FE 82 1D */	bl Player_actor_recover_lean_angle
/* 804EEEDC  7F E3 FB 78 */	mr r3, r31
/* 804EEEE0  4B FE 66 65 */	bl Player_actor_set_tex_anime_pattern
/* 804EEEE4  7F E3 FB 78 */	mr r3, r31
/* 804EEEE8  7F C4 F3 78 */	mr r4, r30
/* 804EEEEC  4B FF FD 81 */	bl Player_actor_ObjCheck_Pickup_exchange
/* 804EEEF0  7F E3 FB 78 */	mr r3, r31
/* 804EEEF4  4B FF FD 99 */	bl Player_actor_BGcheck_Pickup_exchange
/* 804EEEF8  7F E3 FB 78 */	mr r3, r31
/* 804EEEFC  7F C4 F3 78 */	mr r4, r30
/* 804EEF00  4B FF FE 1D */	bl Player_actor_MessageControl_Pickup_exchange
/* 804EEF04  7C 60 1B 78 */	mr r0, r3
/* 804EEF08  7F E3 FB 78 */	mr r3, r31
/* 804EEF0C  7C 1F 03 78 */	mr r31, r0
/* 804EEF10  7F C4 F3 78 */	mr r4, r30
/* 804EEF14  4B FF 4D E5 */	bl Player_actor_Item_main
/* 804EEF18  7F C3 F3 78 */	mr r3, r30
/* 804EEF1C  7F E4 FB 78 */	mr r4, r31
/* 804EEF20  4B FF FF 3D */	bl Player_actor_request_proc_index_fromPickup_exchange
/* 804EEF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EEF28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EEF2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EEF30  7C 08 03 A6 */	mtlr r0
/* 804EEF34  38 21 00 10 */	addi r1, r1, 0x10
/* 804EEF38  4E 80 00 20 */	blr 
