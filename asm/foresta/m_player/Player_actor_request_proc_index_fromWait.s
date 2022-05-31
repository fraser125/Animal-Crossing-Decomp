lbl_804E5E9C:
/* 804E5E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5EA0  7C 08 02 A6 */	mflr r0
/* 804E5EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5EAC  7C 9F 23 78 */	mr r31, r4
/* 804E5EB0  88 03 00 98 */	lbz r0, 0x98(r3)
/* 804E5EB4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804E5EB8  40 82 00 20 */	bne lbl_804E5ED8
/* 804E5EBC  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E5EC0  7F E3 FB 78 */	mr r3, r31
/* 804E5EC4  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E5EC8  38 80 00 01 */	li r4, 1
/* 804E5ECC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E5ED0  38 A0 00 01 */	li r5, 1
/* 804E5ED4  48 00 2A D9 */	bl func_804E89AC
lbl_804E5ED8:
/* 804E5ED8  7F E3 FB 78 */	mr r3, r31
/* 804E5EDC  38 80 00 04 */	li r4, 4
/* 804E5EE0  4B FF 36 09 */	bl Player_actor_CheckAndRequest_main_axe_all
/* 804E5EE4  7F E3 FB 78 */	mr r3, r31
/* 804E5EE8  4B FE E7 11 */	bl Player_actor_CheckController_forNet
/* 804E5EEC  2C 03 00 00 */	cmpwi r3, 0
/* 804E5EF0  41 82 00 10 */	beq lbl_804E5F00
/* 804E5EF4  7F E3 FB 78 */	mr r3, r31
/* 804E5EF8  38 80 00 04 */	li r4, 4
/* 804E5EFC  48 00 C0 29 */	bl func_804F1F24
lbl_804E5F00:
/* 804E5F00  7F E3 FB 78 */	mr r3, r31
/* 804E5F04  4B FE E7 71 */	bl Player_actor_CheckController_forRod
/* 804E5F08  2C 03 00 00 */	cmpwi r3, 0
/* 804E5F0C  41 82 00 10 */	beq lbl_804E5F1C
/* 804E5F10  7F E3 FB 78 */	mr r3, r31
/* 804E5F14  38 80 00 04 */	li r4, 4
/* 804E5F18  48 00 EC D1 */	bl func_804F4BE8
lbl_804E5F1C:
/* 804E5F1C  7F E3 FB 78 */	mr r3, r31
/* 804E5F20  38 80 00 04 */	li r4, 4
/* 804E5F24  4B FF 46 F5 */	bl Player_actor_CheckAndRequest_main_scoop_all
/* 804E5F28  7F E3 FB 78 */	mr r3, r31
/* 804E5F2C  38 80 00 04 */	li r4, 4
/* 804E5F30  4B FF 37 71 */	bl Player_actor_CheckAndRequest_main_umbrella_all
/* 804E5F34  7F E3 FB 78 */	mr r3, r31
/* 804E5F38  38 80 00 01 */	li r4, 1
/* 804E5F3C  38 A0 00 01 */	li r5, 1
/* 804E5F40  38 C0 00 04 */	li r6, 4
/* 804E5F44  4B FF 37 C1 */	bl Player_actor_CheckAndRequest_main_fan_all
/* 804E5F48  7F E3 FB 78 */	mr r3, r31
/* 804E5F4C  4B FF 65 C1 */	bl Player_actor_CheckAndRequest_main_shake_tree_all
/* 804E5F50  4B FE EA B1 */	bl Player_actor_GetController_move_percentX
/* 804E5F54  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E5F58  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E5F5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E5F60  40 82 00 18 */	bne lbl_804E5F78
/* 804E5F64  4B FE EA E1 */	bl Player_actor_GetController_move_percentY
/* 804E5F68  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E5F6C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E5F70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E5F74  41 82 00 24 */	beq lbl_804E5F98
lbl_804E5F78:
/* 804E5F78  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E5F7C  7F E3 FB 78 */	mr r3, r31
/* 804E5F80  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E5F84  38 80 00 00 */	li r4, 0
/* 804E5F88  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E5F8C  38 A0 00 04 */	li r5, 4
/* 804E5F90  38 C0 00 01 */	li r6, 1
/* 804E5F94  48 00 00 BD */	bl func_804E6050
lbl_804E5F98:
/* 804E5F98  7F E3 FB 78 */	mr r3, r31
/* 804E5F9C  4B FF 7E 05 */	bl Player_actor_CheckAndRequest_main_pickup_all
/* 804E5FA0  7F E3 FB 78 */	mr r3, r31
/* 804E5FA4  38 80 00 00 */	li r4, 0
/* 804E5FA8  4B FF 8F 45 */	bl Player_actor_CheckAndRequest_main_radio_exercise_all
/* 804E5FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E5FB4  7C 08 03 A6 */	mtlr r0
/* 804E5FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5FBC  4E 80 00 20 */	blr 
