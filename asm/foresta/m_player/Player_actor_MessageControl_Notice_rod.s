lbl_804F6AE0:
/* 804F6AE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F6AE4  7C 08 02 A6 */	mflr r0
/* 804F6AE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F6AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6AF0  4B BA 43 DD */	bl func_8009AECC
/* 804F6AF4  7C 7E 1B 78 */	mr r30, r3
/* 804F6AF8  7C 9B 23 78 */	mr r27, r4
/* 804F6AFC  7C BC 2B 78 */	mr r28, r5
/* 804F6B00  3B FE 0D 1C */	addi r31, r30, 0xd1c
/* 804F6B04  4B EC 8B A5 */	bl func_803BF6A8
/* 804F6B08  3C 80 80 65 */	lis r4, lit_7320@ha /* 0x80648350@ha */
/* 804F6B0C  C0 3E 0D 18 */	lfs f1, 0xd18(r30)
/* 804F6B10  C0 04 83 50 */	lfs f0, lit_7320@l(r4)  /* 0x80648350@l */
/* 804F6B14  7C 7D 1B 78 */	mr r29, r3
/* 804F6B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F6B1C  40 80 00 1C */	bge lbl_804F6B38
/* 804F6B20  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804F6B24  38 60 FF FF */	li r3, -1
/* 804F6B28  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804F6B2C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F6B30  D0 1E 0D 18 */	stfs f0, 0xd18(r30)
/* 804F6B34  48 00 02 4C */	b lbl_804F6D80
lbl_804F6B38:
/* 804F6B38  80 1F 00 00 */	lwz r0, 0(r31)
/* 804F6B3C  2C 00 00 03 */	cmpwi r0, 3
/* 804F6B40  41 82 01 48 */	beq lbl_804F6C88
/* 804F6B44  40 80 00 1C */	bge lbl_804F6B60
/* 804F6B48  2C 00 00 01 */	cmpwi r0, 1
/* 804F6B4C  41 82 00 78 */	beq lbl_804F6BC4
/* 804F6B50  40 80 00 B8 */	bge lbl_804F6C08
/* 804F6B54  2C 00 00 00 */	cmpwi r0, 0
/* 804F6B58  40 80 00 18 */	bge lbl_804F6B70
/* 804F6B5C  48 00 01 FC */	b lbl_804F6D58
lbl_804F6B60:
/* 804F6B60  2C 00 00 05 */	cmpwi r0, 5
/* 804F6B64  41 82 01 C8 */	beq lbl_804F6D2C
/* 804F6B68  40 80 01 F0 */	bge lbl_804F6D58
/* 804F6B6C  48 00 01 7C */	b lbl_804F6CE8
lbl_804F6B70:
/* 804F6B70  7F C4 F3 78 */	mr r4, r30
/* 804F6B74  38 60 00 09 */	li r3, 9
/* 804F6B78  4B EA 36 ED */	bl mDemo_Check
/* 804F6B7C  2C 03 00 00 */	cmpwi r3, 0
/* 804F6B80  40 82 00 1C */	bne lbl_804F6B9C
/* 804F6B84  3C 60 80 4F */	lis r3, Player_actor_Notice_rod_demo_ct@ha /* 0x804F69A0@ha */
/* 804F6B88  7F C4 F3 78 */	mr r4, r30
/* 804F6B8C  38 A3 69 A0 */	addi r5, r3, Player_actor_Notice_rod_demo_ct@l /* 0x804F69A0@l */
/* 804F6B90  38 60 00 09 */	li r3, 9
/* 804F6B94  4B EA 35 C9 */	bl mDemo_Request
/* 804F6B98  48 00 00 24 */	b lbl_804F6BBC
lbl_804F6B9C:
/* 804F6B9C  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 804F6BA0  2C 00 00 00 */	cmpwi r0, 0
/* 804F6BA4  41 82 00 10 */	beq lbl_804F6BB4
/* 804F6BA8  38 00 00 01 */	li r0, 1
/* 804F6BAC  90 1F 00 00 */	stw r0, 0(r31)
/* 804F6BB0  48 00 00 0C */	b lbl_804F6BBC
lbl_804F6BB4:
/* 804F6BB4  38 00 00 03 */	li r0, 3
/* 804F6BB8  90 1F 00 00 */	stw r0, 0(r31)
lbl_804F6BBC:
/* 804F6BBC  38 60 FF FF */	li r3, -1
/* 804F6BC0  48 00 01 C0 */	b lbl_804F6D80
lbl_804F6BC4:
/* 804F6BC4  2C 1C 00 00 */	cmpwi r28, 0
/* 804F6BC8  41 82 00 38 */	beq lbl_804F6C00
/* 804F6BCC  7F C3 F3 78 */	mr r3, r30
/* 804F6BD0  4B FF FC 81 */	bl Player_actor_AppearMark_Notice_rod
/* 804F6BD4  7F A3 EB 78 */	mr r3, r29
/* 804F6BD8  4B EC A0 C1 */	bl mMsg_Check_MainNormalContinue
/* 804F6BDC  2C 03 00 00 */	cmpwi r3, 0
/* 804F6BE0  41 82 00 20 */	beq lbl_804F6C00
/* 804F6BE4  7F A3 EB 78 */	mr r3, r29
/* 804F6BE8  38 80 13 4A */	li r4, 0x134a
/* 804F6BEC  4B EC 93 D9 */	bl mMsg_Set_continue_msg_num
/* 804F6BF0  7F A3 EB 78 */	mr r3, r29
/* 804F6BF4  4B EC A1 59 */	bl mMsg_Unset_LockContinue
/* 804F6BF8  38 00 00 02 */	li r0, 2
/* 804F6BFC  90 1F 00 00 */	stw r0, 0(r31)
lbl_804F6C00:
/* 804F6C00  38 60 FF FF */	li r3, -1
/* 804F6C04  48 00 01 7C */	b lbl_804F6D80
lbl_804F6C08:
/* 804F6C08  4B EC A0 D1 */	bl mMsg_Check_MainNormal
/* 804F6C0C  2C 03 00 00 */	cmpwi r3, 0
/* 804F6C10  40 82 00 70 */	bne lbl_804F6C80
/* 804F6C14  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F6C18  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F6C1C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F6C20  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F6C24  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F6C28  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F6C2C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F6C30  7F C3 F3 78 */	mr r3, r30
/* 804F6C34  FC 40 08 90 */	fmr f2, f1
/* 804F6C38  7F 64 DB 78 */	mr r4, r27
/* 804F6C3C  38 A0 00 81 */	li r5, 0x81
/* 804F6C40  38 C0 00 81 */	li r6, 0x81
/* 804F6C44  38 E0 00 00 */	li r7, 0
/* 804F6C48  39 00 00 00 */	li r8, 0
/* 804F6C4C  4B FD FB C5 */	bl Player_actor_InitAnimation_Base2
/* 804F6C50  38 60 00 28 */	li r3, 0x28
/* 804F6C54  38 80 01 68 */	li r4, 0x168
/* 804F6C58  4B E8 55 D9 */	bl mBGMPsComp_delete_ps_fanfare
/* 804F6C5C  38 60 00 4C */	li r3, 0x4c
/* 804F6C60  38 80 01 68 */	li r4, 0x168
/* 804F6C64  4B E8 4D 6D */	bl mBGMPsComp_make_ps_fanfare
/* 804F6C68  7F A3 EB 78 */	mr r3, r29
/* 804F6C6C  4B EC A0 D5 */	bl mMsg_Set_LockContinue
/* 804F6C70  7F C3 F3 78 */	mr r3, r30
/* 804F6C74  4B FF FC B1 */	bl Player_actor_DeleteMark_Notice_rod
/* 804F6C78  38 00 00 03 */	li r0, 3
/* 804F6C7C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804F6C80:
/* 804F6C80  38 60 FF FF */	li r3, -1
/* 804F6C84  48 00 00 FC */	b lbl_804F6D80
lbl_804F6C88:
/* 804F6C88  2C 1C 00 00 */	cmpwi r28, 0
/* 804F6C8C  41 82 00 54 */	beq lbl_804F6CE0
/* 804F6C90  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 804F6C94  2C 00 00 00 */	cmpwi r0, 0
/* 804F6C98  40 82 00 0C */	bne lbl_804F6CA4
/* 804F6C9C  7F C3 F3 78 */	mr r3, r30
/* 804F6CA0  4B FF FB B1 */	bl Player_actor_AppearMark_Notice_rod
lbl_804F6CA4:
/* 804F6CA4  80 1E 0D 20 */	lwz r0, 0xd20(r30)
/* 804F6CA8  2C 00 00 00 */	cmpwi r0, 0
/* 804F6CAC  41 82 00 18 */	beq lbl_804F6CC4
/* 804F6CB0  7F A3 EB 78 */	mr r3, r29
/* 804F6CB4  4B EC A0 5D */	bl mMsg_Set_CancelNormalContinue
/* 804F6CB8  38 00 00 05 */	li r0, 5
/* 804F6CBC  90 1F 00 00 */	stw r0, 0(r31)
/* 804F6CC0  48 00 00 18 */	b lbl_804F6CD8
lbl_804F6CC4:
/* 804F6CC4  7F A3 EB 78 */	mr r3, r29
/* 804F6CC8  38 80 13 48 */	li r4, 0x1348
/* 804F6CCC  4B EC 92 F9 */	bl mMsg_Set_continue_msg_num
/* 804F6CD0  38 00 00 04 */	li r0, 4
/* 804F6CD4  90 1F 00 00 */	stw r0, 0(r31)
lbl_804F6CD8:
/* 804F6CD8  7F A3 EB 78 */	mr r3, r29
/* 804F6CDC  4B EC A0 71 */	bl mMsg_Unset_LockContinue
lbl_804F6CE0:
/* 804F6CE0  38 60 FF FF */	li r3, -1
/* 804F6CE4  48 00 00 9C */	b lbl_804F6D80
lbl_804F6CE8:
/* 804F6CE8  4B E8 C8 59 */	bl func_80383540
/* 804F6CEC  4B E8 CE 81 */	bl mChoice_Get_ChoseNum
/* 804F6CF0  2C 03 00 00 */	cmpwi r3, 0
/* 804F6CF4  40 82 00 18 */	bne lbl_804F6D0C
/* 804F6CF8  38 60 00 01 */	li r3, 1
/* 804F6CFC  38 00 00 05 */	li r0, 5
/* 804F6D00  90 7E 0D 28 */	stw r3, 0xd28(r30)
/* 804F6D04  90 1F 00 00 */	stw r0, 0(r31)
/* 804F6D08  48 00 00 1C */	b lbl_804F6D24
lbl_804F6D0C:
/* 804F6D0C  2C 03 00 01 */	cmpwi r3, 1
/* 804F6D10  40 82 00 14 */	bne lbl_804F6D24
/* 804F6D14  38 60 00 00 */	li r3, 0
/* 804F6D18  38 00 00 05 */	li r0, 5
/* 804F6D1C  90 7E 0D 28 */	stw r3, 0xd28(r30)
/* 804F6D20  90 1F 00 00 */	stw r0, 0(r31)
lbl_804F6D24:
/* 804F6D24  38 60 FF FF */	li r3, -1
/* 804F6D28  48 00 00 58 */	b lbl_804F6D80
lbl_804F6D2C:
/* 804F6D2C  7F C4 F3 78 */	mr r4, r30
/* 804F6D30  38 60 00 09 */	li r3, 9
/* 804F6D34  4B EA 35 31 */	bl mDemo_Check
/* 804F6D38  2C 03 00 00 */	cmpwi r3, 0
/* 804F6D3C  40 82 00 14 */	bne lbl_804F6D50
/* 804F6D40  38 00 00 06 */	li r0, 6
/* 804F6D44  7F C3 F3 78 */	mr r3, r30
/* 804F6D48  90 1F 00 00 */	stw r0, 0(r31)
/* 804F6D4C  4B FF FB D9 */	bl Player_actor_DeleteMark_Notice_rod
lbl_804F6D50:
/* 804F6D50  38 60 FF FF */	li r3, -1
/* 804F6D54  48 00 00 2C */	b lbl_804F6D80
lbl_804F6D58:
/* 804F6D58  80 1E 0D 20 */	lwz r0, 0xd20(r30)
/* 804F6D5C  2C 00 00 00 */	cmpwi r0, 0
/* 804F6D60  41 82 00 0C */	beq lbl_804F6D6C
/* 804F6D64  38 60 00 39 */	li r3, 0x39
/* 804F6D68  48 00 00 18 */	b lbl_804F6D80
lbl_804F6D6C:
/* 804F6D6C  80 1E 0D 28 */	lwz r0, 0xd28(r30)
/* 804F6D70  38 60 00 39 */	li r3, 0x39
/* 804F6D74  2C 00 00 00 */	cmpwi r0, 0
/* 804F6D78  40 82 00 08 */	bne lbl_804F6D80
/* 804F6D7C  38 60 00 53 */	li r3, 0x53
lbl_804F6D80:
/* 804F6D80  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6D84  4B BA 41 95 */	bl func_8009AF18
/* 804F6D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F6D8C  7C 08 03 A6 */	mtlr r0
/* 804F6D90  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6D94  4E 80 00 20 */	blr 
