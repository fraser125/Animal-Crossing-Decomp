lbl_804D3ED0:
/* 804D3ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D3ED4  7C 08 02 A6 */	mflr r0
/* 804D3ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D3EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D3EE0  7C 9F 23 78 */	mr r31, r4
/* 804D3EE4  93 C1 00 08 */	stw r30, 8(r1)
/* 804D3EE8  7C 7E 1B 78 */	mr r30, r3
/* 804D3EEC  4B EC 6F CD */	bl mEv_CheckTitleDemo
/* 804D3EF0  2C 03 00 00 */	cmpwi r3, 0
/* 804D3EF4  40 81 00 10 */	ble lbl_804D3F04
/* 804D3EF8  38 00 00 FF */	li r0, 0xff
/* 804D3EFC  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 804D3F00  48 00 00 0C */	b lbl_804D3F0C
lbl_804D3F04:
/* 804D3F04  38 00 00 32 */	li r0, 0x32
/* 804D3F08  98 1E 00 D6 */	stb r0, 0xd6(r30)
lbl_804D3F0C:
/* 804D3F0C  7F C3 F3 78 */	mr r3, r30
/* 804D3F10  7F E4 FB 78 */	mr r4, r31
/* 804D3F14  4B FF FB 29 */	bl func_804D3A3C
/* 804D3F18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D3F1C  38 00 00 01 */	li r0, 1
/* 804D3F20  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804D3F24  7F C3 F3 78 */	mr r3, r30
/* 804D3F28  3C 84 00 03 */	addis r4, r4, 3
/* 804D3F2C  98 04 85 BE */	stb r0, -0x7a42(r4)
/* 804D3F30  48 00 AB 05 */	bl Player_actor_Check_player_sunburn_for_ct
/* 804D3F34  7F E3 FB 78 */	mr r3, r31
/* 804D3F38  4B F0 56 9D */	bl mPlib_change_player_face
/* 804D3F3C  7F C3 F3 78 */	mr r3, r30
/* 804D3F40  7F E4 FB 78 */	mr r4, r31
/* 804D3F44  48 00 BD 45 */	bl func_804DFC88
/* 804D3F48  7F C3 F3 78 */	mr r3, r30
/* 804D3F4C  48 00 30 95 */	bl Player_actor_set_eye_PositionAndAngle
/* 804D3F50  7F E3 FB 78 */	mr r3, r31
/* 804D3F54  38 80 00 01 */	li r4, 1
/* 804D3F58  38 A0 00 01 */	li r5, 1
/* 804D3F5C  4B EA C7 7D */	bl Camera2_request_main_normal
/* 804D3F60  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 804D3F64  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804D3F68  C0 43 6A 1C */	lfs f2, lit_1077@l(r3)  /* 0x80646A1C@l */
/* 804D3F6C  3C 80 80 37 */	lis r4, mAc_ActorShadowCircle@ha /* 0x80376F30@ha */
/* 804D3F70  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804D3F74  38 84 6F 30 */	addi r4, r4, mAc_ActorShadowCircle@l /* 0x80376F30@l */
/* 804D3F78  FC 60 10 90 */	fmr f3, f2
/* 804D3F7C  7F C3 F3 78 */	mr r3, r30
/* 804D3F80  4B EA 04 71 */	bl Shape_Info_init
/* 804D3F84  3C 60 80 65 */	lis r3, lit_6387@ha /* 0x80648074@ha */
/* 804D3F88  C0 03 80 74 */	lfs f0, lit_6387@l(r3)  /* 0x80648074@l */
/* 804D3F8C  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 804D3F90  4B F0 59 29 */	bl mPlib_Clear_change_data_from_submenu
/* 804D3F94  7F E3 FB 78 */	mr r3, r31
/* 804D3F98  38 80 00 29 */	li r4, 0x29
/* 804D3F9C  48 01 09 8D */	bl func_804E4928
/* 804D3FA0  7F C3 F3 78 */	mr r3, r30
/* 804D3FA4  7F E4 FB 78 */	mr r4, r31
/* 804D3FA8  48 00 03 D1 */	bl Player_actor_change_proc_index
/* 804D3FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D3FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D3FB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D3FB8  7C 08 03 A6 */	mtlr r0
/* 804D3FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D3FC0  4E 80 00 20 */	blr 
