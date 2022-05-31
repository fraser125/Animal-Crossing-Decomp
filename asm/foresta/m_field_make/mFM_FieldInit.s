lbl_803A3C90:
/* 803A3C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A3C94  7C 08 02 A6 */	mflr r0
/* 803A3C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A3C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3CA0  4B CF 72 29 */	bl func_8009AEC8
/* 803A3CA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A3CA8  3C A0 81 16 */	lis r5, data_811678D8@ha /* 0x811678D8@ha */
/* 803A3CAC  3B C4 85 38 */	addi r30, r4, common_data@l /* 0x81138538@l */
/* 803A3CB0  7C 7A 1B 78 */	mr r26, r3
/* 803A3CB4  3B A5 78 D8 */	addi r29, r5, data_811678D8@l /* 0x811678D8@l */
/* 803A3CB8  83 FE 00 14 */	lwz r31, 0x14(r30)
/* 803A3CBC  3C 9E 00 02 */	addis r4, r30, 2
/* 803A3CC0  83 9D 00 00 */	lwz r28, 0(r29)
/* 803A3CC4  83 7D 00 04 */	lwz r27, 4(r29)
/* 803A3CC8  38 60 00 01 */	li r3, 1
/* 803A3CCC  88 84 41 84 */	lbz r4, 0x4184(r4)
/* 803A3CD0  4B FF FB E9 */	bl mFM_LoadBGCommonTex
/* 803A3CD4  2C 1C 00 04 */	cmpwi r28, 4
/* 803A3CD8  40 81 00 08 */	ble lbl_803A3CE0
/* 803A3CDC  3B 80 00 04 */	li r28, 4
lbl_803A3CE0:
/* 803A3CE0  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803A3CE4  57 64 04 3E */	clrlwi r4, r27, 0x10
/* 803A3CE8  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 803A3CEC  4B FF F6 AD */	bl mFM_MakeField
/* 803A3CF0  90 7D 01 80 */	stw r3, 0x180(r29)
/* 803A3CF4  48 00 4D 19 */	bl mFI_InitMoveActorBitData
/* 803A3CF8  48 00 29 DD */	bl mFI_ClearColKeep
/* 803A3CFC  48 00 2E FD */	bl mFI_InitAreaInfo
/* 803A3D00  48 00 21 45 */	bl mFI_InitRegisterBgInfo
/* 803A3D04  4B FF FC E1 */	bl set_field_type
/* 803A3D08  4B FF FD F1 */	bl mFM_PoorTree
/* 803A3D0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3D10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3D14  3C 63 00 02 */	addis r3, r3, 2
/* 803A3D18  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 803A3D1C  28 00 00 00 */	cmplwi r0, 0
/* 803A3D20  40 82 00 08 */	bne lbl_803A3D28
/* 803A3D24  48 04 10 1D */	bl mRF_CheckBeastRoad
lbl_803A3D28:
/* 803A3D28  4B FF FE 79 */	bl mFM_PoorTreeUnderPlayerBlock
/* 803A3D2C  4B FD 03 39 */	bl mAGrw_ChangeCedar2Tree
/* 803A3D30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3D34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3D38  3C 63 00 02 */	addis r3, r3, 2
/* 803A3D3C  38 63 61 20 */	addi r3, r3, 0x6120
/* 803A3D40  4B FD 00 69 */	bl mAGrw_RenewalFgItem
/* 803A3D44  4B FD 00 25 */	bl mAGrw_SetXmasTree
/* 803A3D48  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 803A3D4C  4B FF FE ED */	bl mFM_SetFruit_title_demo
/* 803A3D50  2C 1F 00 07 */	cmpwi r31, 7
/* 803A3D54  40 82 00 08 */	bne lbl_803A3D5C
/* 803A3D58  48 02 FD D1 */	bl mNpc_SetNpcHomeYpos
lbl_803A3D5C:
/* 803A3D5C  48 02 D3 D1 */	bl mNpc_SendRegisteredGoodbyMail
/* 803A3D60  48 04 22 2D */	bl mRmTp_GetFloorIdx
/* 803A3D64  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A3D68  38 00 00 00 */	li r0, 0
/* 803A3D6C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A3D70  3C 84 00 03 */	addis r4, r4, 3
/* 803A3D74  98 64 85 91 */	stb r3, -0x7a6f(r4)
/* 803A3D78  98 04 85 C2 */	stb r0, -0x7a3e(r4)
/* 803A3D7C  88 1A 20 D1 */	lbz r0, 0x20d1(r26)
/* 803A3D80  28 00 00 06 */	cmplwi r0, 6
/* 803A3D84  40 82 00 68 */	bne lbl_803A3DEC
/* 803A3D88  2C 1F 00 23 */	cmpwi r31, 0x23
/* 803A3D8C  40 82 00 10 */	bne lbl_803A3D9C
/* 803A3D90  38 60 00 01 */	li r3, 1
/* 803A3D94  4B FD 8A DD */	bl mBGMPsComp_museum_status
/* 803A3D98  48 00 01 D8 */	b lbl_803A3F70
lbl_803A3D9C:
/* 803A3D9C  2C 1F 00 24 */	cmpwi r31, 0x24
/* 803A3DA0  40 82 00 10 */	bne lbl_803A3DB0
/* 803A3DA4  38 60 00 02 */	li r3, 2
/* 803A3DA8  4B FD 8A C9 */	bl mBGMPsComp_museum_status
/* 803A3DAC  48 00 01 C4 */	b lbl_803A3F70
lbl_803A3DB0:
/* 803A3DB0  2C 1F 00 27 */	cmpwi r31, 0x27
/* 803A3DB4  40 82 00 10 */	bne lbl_803A3DC4
/* 803A3DB8  38 60 00 03 */	li r3, 3
/* 803A3DBC  4B FD 8A B5 */	bl mBGMPsComp_museum_status
/* 803A3DC0  48 00 01 B0 */	b lbl_803A3F70
lbl_803A3DC4:
/* 803A3DC4  2C 1F 00 26 */	cmpwi r31, 0x26
/* 803A3DC8  40 82 00 10 */	bne lbl_803A3DD8
/* 803A3DCC  38 60 00 04 */	li r3, 4
/* 803A3DD0  4B FD 8A A1 */	bl mBGMPsComp_museum_status
/* 803A3DD4  48 00 01 9C */	b lbl_803A3F70
lbl_803A3DD8:
/* 803A3DD8  2C 1F 00 25 */	cmpwi r31, 0x25
/* 803A3DDC  40 82 01 94 */	bne lbl_803A3F70
/* 803A3DE0  38 60 00 05 */	li r3, 5
/* 803A3DE4  4B FD 8A 8D */	bl mBGMPsComp_museum_status
/* 803A3DE8  48 00 01 88 */	b lbl_803A3F70
lbl_803A3DEC:
/* 803A3DEC  80 7D 01 80 */	lwz r3, 0x180(r29)
/* 803A3DF0  A0 03 00 00 */	lhz r0, 0(r3)
/* 803A3DF4  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 803A3DF8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803A3DFC  41 82 00 14 */	beq lbl_803A3E10
/* 803A3E00  2C 00 30 00 */	cmpwi r0, 0x3000
/* 803A3E04  41 82 00 0C */	beq lbl_803A3E10
/* 803A3E08  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803A3E0C  40 82 00 C8 */	bne lbl_803A3ED4
lbl_803A3E10:
/* 803A3E10  2C 1F 00 23 */	cmpwi r31, 0x23
/* 803A3E14  40 82 00 18 */	bne lbl_803A3E2C
/* 803A3E18  38 60 00 0F */	li r3, 0xf
/* 803A3E1C  4B FD 8A 05 */	bl mBGMPsComp_scene_mode
/* 803A3E20  38 60 00 01 */	li r3, 1
/* 803A3E24  4B FD 8A 4D */	bl mBGMPsComp_museum_status
/* 803A3E28  48 00 01 48 */	b lbl_803A3F70
lbl_803A3E2C:
/* 803A3E2C  2C 1F 00 24 */	cmpwi r31, 0x24
/* 803A3E30  40 82 00 18 */	bne lbl_803A3E48
/* 803A3E34  38 60 00 0F */	li r3, 0xf
/* 803A3E38  4B FD 89 E9 */	bl mBGMPsComp_scene_mode
/* 803A3E3C  38 60 00 02 */	li r3, 2
/* 803A3E40  4B FD 8A 31 */	bl mBGMPsComp_museum_status
/* 803A3E44  48 00 01 2C */	b lbl_803A3F70
lbl_803A3E48:
/* 803A3E48  2C 1F 00 27 */	cmpwi r31, 0x27
/* 803A3E4C  40 82 00 18 */	bne lbl_803A3E64
/* 803A3E50  38 60 00 0F */	li r3, 0xf
/* 803A3E54  4B FD 89 CD */	bl mBGMPsComp_scene_mode
/* 803A3E58  38 60 00 03 */	li r3, 3
/* 803A3E5C  4B FD 8A 15 */	bl mBGMPsComp_museum_status
/* 803A3E60  48 00 01 10 */	b lbl_803A3F70
lbl_803A3E64:
/* 803A3E64  2C 1F 00 26 */	cmpwi r31, 0x26
/* 803A3E68  40 82 00 18 */	bne lbl_803A3E80
/* 803A3E6C  38 60 00 0F */	li r3, 0xf
/* 803A3E70  4B FD 89 B1 */	bl mBGMPsComp_scene_mode
/* 803A3E74  38 60 00 04 */	li r3, 4
/* 803A3E78  4B FD 89 F9 */	bl mBGMPsComp_museum_status
/* 803A3E7C  48 00 00 F4 */	b lbl_803A3F70
lbl_803A3E80:
/* 803A3E80  2C 1F 00 25 */	cmpwi r31, 0x25
/* 803A3E84  40 82 00 18 */	bne lbl_803A3E9C
/* 803A3E88  38 60 00 0F */	li r3, 0xf
/* 803A3E8C  4B FD 89 95 */	bl mBGMPsComp_scene_mode
/* 803A3E90  38 60 00 05 */	li r3, 5
/* 803A3E94  4B FD 89 DD */	bl mBGMPsComp_museum_status
/* 803A3E98  48 00 00 D8 */	b lbl_803A3F70
lbl_803A3E9C:
/* 803A3E9C  2C 1F 00 32 */	cmpwi r31, 0x32
/* 803A3EA0  40 82 00 10 */	bne lbl_803A3EB0
/* 803A3EA4  38 60 00 10 */	li r3, 0x10
/* 803A3EA8  4B FD 89 79 */	bl mBGMPsComp_scene_mode
/* 803A3EAC  48 00 00 C4 */	b lbl_803A3F70
lbl_803A3EB0:
/* 803A3EB0  4B FF 6E 7D */	bl mEv_CheckFirstIntro
/* 803A3EB4  2C 03 00 01 */	cmpwi r3, 1
/* 803A3EB8  40 82 00 10 */	bne lbl_803A3EC8
/* 803A3EBC  38 60 00 0A */	li r3, 0xa
/* 803A3EC0  4B FD 89 61 */	bl mBGMPsComp_scene_mode
/* 803A3EC4  48 00 00 AC */	b lbl_803A3F70
lbl_803A3EC8:
/* 803A3EC8  38 60 00 02 */	li r3, 2
/* 803A3ECC  4B FD 89 55 */	bl mBGMPsComp_scene_mode
/* 803A3ED0  48 00 00 A0 */	b lbl_803A3F70
lbl_803A3ED4:
/* 803A3ED4  2C 00 00 00 */	cmpwi r0, 0
/* 803A3ED8  40 82 00 48 */	bne lbl_803A3F20
/* 803A3EDC  2C 1F 00 21 */	cmpwi r31, 0x21
/* 803A3EE0  41 82 00 90 */	beq lbl_803A3F70
/* 803A3EE4  4B FF 6E 49 */	bl mEv_CheckFirstIntro
/* 803A3EE8  2C 03 00 01 */	cmpwi r3, 1
/* 803A3EEC  40 82 00 10 */	bne lbl_803A3EFC
/* 803A3EF0  38 60 00 09 */	li r3, 9
/* 803A3EF4  4B FD 89 2D */	bl mBGMPsComp_scene_mode
/* 803A3EF8  48 00 00 78 */	b lbl_803A3F70
lbl_803A3EFC:
/* 803A3EFC  4B FF 6F 19 */	bl mEv_CheckGateway
/* 803A3F00  2C 03 00 01 */	cmpwi r3, 1
/* 803A3F04  40 82 00 10 */	bne lbl_803A3F14
/* 803A3F08  38 60 00 08 */	li r3, 8
/* 803A3F0C  4B FD 89 15 */	bl mBGMPsComp_scene_mode
/* 803A3F10  48 00 00 60 */	b lbl_803A3F70
lbl_803A3F14:
/* 803A3F14  38 60 00 01 */	li r3, 1
/* 803A3F18  4B FD 89 09 */	bl mBGMPsComp_scene_mode
/* 803A3F1C  48 00 00 54 */	b lbl_803A3F70
lbl_803A3F20:
/* 803A3F20  2C 1F 00 13 */	cmpwi r31, 0x13
/* 803A3F24  41 82 00 18 */	beq lbl_803A3F3C
/* 803A3F28  38 1F FF E5 */	addi r0, r31, -27
/* 803A3F2C  28 00 00 01 */	cmplwi r0, 1
/* 803A3F30  40 81 00 0C */	ble lbl_803A3F3C
/* 803A3F34  2C 1F 00 22 */	cmpwi r31, 0x22
/* 803A3F38  40 82 00 10 */	bne lbl_803A3F48
lbl_803A3F3C:
/* 803A3F3C  38 60 00 03 */	li r3, 3
/* 803A3F40  4B FD 88 E1 */	bl mBGMPsComp_scene_mode
/* 803A3F44  48 00 00 2C */	b lbl_803A3F70
lbl_803A3F48:
/* 803A3F48  38 1F FF F1 */	addi r0, r31, -15
/* 803A3F4C  28 00 00 01 */	cmplwi r0, 1
/* 803A3F50  40 81 00 0C */	ble lbl_803A3F5C
/* 803A3F54  2C 1F 00 31 */	cmpwi r31, 0x31
/* 803A3F58  40 82 00 10 */	bne lbl_803A3F68
lbl_803A3F5C:
/* 803A3F5C  38 60 00 04 */	li r3, 4
/* 803A3F60  4B FD 88 C1 */	bl mBGMPsComp_scene_mode
/* 803A3F64  48 00 00 0C */	b lbl_803A3F70
lbl_803A3F68:
/* 803A3F68  38 60 00 00 */	li r3, 0
/* 803A3F6C  4B FD 88 B5 */	bl mBGMPsComp_scene_mode
lbl_803A3F70:
/* 803A3F70  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3F74  4B CF 6F A1 */	bl func_8009AF14
/* 803A3F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A3F7C  7C 08 03 A6 */	mtlr r0
/* 803A3F80  38 21 00 20 */	addi r1, r1, 0x20
/* 803A3F84  4E 80 00 20 */	blr 
