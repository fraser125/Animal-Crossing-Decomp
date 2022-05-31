lbl_804D585C:
/* 804D585C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5860  7C 08 02 A6 */	mflr r0
/* 804D5864  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5868  38 00 00 00 */	li r0, 0
/* 804D586C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5870  7C 9F 23 78 */	mr r31, r4
/* 804D5874  93 C1 00 08 */	stw r30, 8(r1)
/* 804D5878  7C 7E 1B 78 */	mr r30, r3
/* 804D587C  80 C3 0C F8 */	lwz r6, 0xcf8(r3)
/* 804D5880  90 C3 0C FC */	stw r6, 0xcfc(r3)
/* 804D5884  90 A3 0C F8 */	stw r5, 0xcf8(r3)
/* 804D5888  90 03 0D 10 */	stw r0, 0xd10(r3)
/* 804D588C  90 03 0D 14 */	stw r0, 0xd14(r3)
/* 804D5890  4B FF F7 CD */	bl Player_actor_Set_start_refuse
/* 804D5894  7F C3 F3 78 */	mr r3, r30
/* 804D5898  4B FF F8 15 */	bl Player_actor_Set_address_able_display
/* 804D589C  7F C3 F3 78 */	mr r3, r30
/* 804D58A0  4B FF F9 51 */	bl Player_actor_SetupShadow
/* 804D58A4  7F C3 F3 78 */	mr r3, r30
/* 804D58A8  4B FF F9 F5 */	bl Player_actor_SetupSpeedF
/* 804D58AC  7F C3 F3 78 */	mr r3, r30
/* 804D58B0  4B FF FA 79 */	bl Player_actor_SetupRequestMainIndexPriority
/* 804D58B4  7F C3 F3 78 */	mr r3, r30
/* 804D58B8  4B FF FD 49 */	bl Player_actor_SetupTextureAnimation
/* 804D58BC  7F C3 F3 78 */	mr r3, r30
/* 804D58C0  4B FF FE 05 */	bl Player_actor_SetupItem_common
/* 804D58C4  7F C3 F3 78 */	mr r3, r30
/* 804D58C8  7F E4 FB 78 */	mr r4, r31
/* 804D58CC  4B FF FE 8D */	bl Player_actor_SetupItemScale
/* 804D58D0  7F C3 F3 78 */	mr r3, r30
/* 804D58D4  4B FF FE C9 */	bl Player_actor_SetupWeight
/* 804D58D8  7F C3 F3 78 */	mr r3, r30
/* 804D58DC  4B FF FF 49 */	bl Player_actor_Setup_status_for_bee
/* 804D58E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D58E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D58E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D58EC  7C 08 03 A6 */	mtlr r0
/* 804D58F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D58F4  4E 80 00 20 */	blr 
