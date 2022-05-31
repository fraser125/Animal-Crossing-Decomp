lbl_80560E58:
/* 80560E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80560E5C  7C 08 02 A6 */	mflr r0
/* 80560E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80560E64  39 61 00 20 */	addi r11, r1, 0x20
/* 80560E68  4B B3 A0 6D */	bl func_8009AED4
/* 80560E6C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80560E70  7C 7E 1B 78 */	mr r30, r3
/* 80560E74  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80560E78  7C 9D 23 78 */	mr r29, r4
/* 80560E7C  3F E5 00 02 */	addis r31, r5, 2
/* 80560E80  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80560E84  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 80560E88  7D 89 03 A6 */	mtctr r12
/* 80560E8C  4E 80 04 21 */	bctrl 
/* 80560E90  7F C3 F3 78 */	mr r3, r30
/* 80560E94  4B FF EA 3D */	bl aNM2_talk_demo_proc
/* 80560E98  81 9E 09 98 */	lwz r12, 0x998(r30)
/* 80560E9C  7F C3 F3 78 */	mr r3, r30
/* 80560EA0  7F A4 EB 78 */	mr r4, r29
/* 80560EA4  7D 89 03 A6 */	mtctr r12
/* 80560EA8  4E 80 04 21 */	bctrl 
/* 80560EAC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80560EB0  7F C3 F3 78 */	mr r3, r30
/* 80560EB4  7F A4 EB 78 */	mr r4, r29
/* 80560EB8  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 80560EBC  7D 89 03 A6 */	mtctr r12
/* 80560EC0  4E 80 04 21 */	bctrl 
/* 80560EC4  7F C3 F3 78 */	mr r3, r30
/* 80560EC8  7F A4 EB 78 */	mr r4, r29
/* 80560ECC  4B FF E5 FD */	bl aNM2_set_camera
/* 80560ED0  7F C3 F3 78 */	mr r3, r30
/* 80560ED4  4B FF E9 71 */	bl aNM2_set_camera_eyes
/* 80560ED8  7F C3 F3 78 */	mr r3, r30
/* 80560EDC  7F A4 EB 78 */	mr r4, r29
/* 80560EE0  4B FF EE 09 */	bl aNM2_make_shasho
/* 80560EE4  7F A3 EB 78 */	mr r3, r29
/* 80560EE8  4B E8 CE 89 */	bl mSC_change_player_freeze
/* 80560EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80560EF0  4B B3 A0 31 */	bl func_8009AF20
/* 80560EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80560EF8  7C 08 03 A6 */	mtlr r0
/* 80560EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80560F00  4E 80 00 20 */	blr 
