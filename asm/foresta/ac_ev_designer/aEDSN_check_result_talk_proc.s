lbl_8051D2B8:
/* 8051D2B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D2BC  7C 08 02 A6 */	mflr r0
/* 8051D2C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D2C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D2C8  4B B7 DC 0D */	bl func_8009AED4
/* 8051D2CC  7C 7D 1B 78 */	mr r29, r3
/* 8051D2D0  4B EA 23 D9 */	bl func_803BF6A8
/* 8051D2D4  A8 9D 00 B6 */	lha r4, 0xb6(r29)
/* 8051D2D8  7C 7E 1B 78 */	mr r30, r3
/* 8051D2DC  38 7D 00 DE */	addi r3, r29, 0xde
/* 8051D2E0  38 A0 08 00 */	li r5, 0x800
/* 8051D2E4  4B E9 D8 61 */	bl chase_angle
/* 8051D2E8  7F C3 F3 78 */	mr r3, r30
/* 8051D2EC  4B EA 39 AD */	bl mMsg_Check_MainNormalContinue
/* 8051D2F0  2C 03 00 01 */	cmpwi r3, 1
/* 8051D2F4  40 82 00 F8 */	bne lbl_8051D3EC
/* 8051D2F8  80 9D 09 AC */	lwz r4, 0x9ac(r29)
/* 8051D2FC  38 00 00 00 */	li r0, 0
/* 8051D300  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051D304  B0 01 00 08 */	sth r0, 8(r1)
/* 8051D308  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051D30C  3C 63 00 02 */	addis r3, r3, 2
/* 8051D310  83 E4 00 04 */	lwz r31, 4(r4)
/* 8051D314  2C 1F 00 01 */	cmpwi r31, 1
/* 8051D318  41 82 00 48 */	beq lbl_8051D360
/* 8051D31C  40 80 00 10 */	bge lbl_8051D32C
/* 8051D320  2C 1F 00 00 */	cmpwi r31, 0
/* 8051D324  40 80 00 14 */	bge lbl_8051D338
/* 8051D328  48 00 00 74 */	b lbl_8051D39C
lbl_8051D32C:
/* 8051D32C  2C 1F 00 03 */	cmpwi r31, 3
/* 8051D330  40 80 00 6C */	bge lbl_8051D39C
/* 8051D334  48 00 00 54 */	b lbl_8051D388
lbl_8051D338:
/* 8051D338  80 E3 04 E0 */	lwz r7, 0x4e0(r3)
/* 8051D33C  38 81 00 08 */	addi r4, r1, 8
/* 8051D340  38 C3 04 E4 */	addi r6, r3, 0x4e4
/* 8051D344  38 60 00 00 */	li r3, 0
/* 8051D348  38 A0 00 01 */	li r5, 1
/* 8051D34C  39 00 00 02 */	li r8, 2
/* 8051D350  39 20 00 03 */	li r9, 3
/* 8051D354  39 40 00 00 */	li r10, 0
/* 8051D358  4B EC B0 85 */	bl mSP_SelectRandomItem_New
/* 8051D35C  48 00 00 40 */	b lbl_8051D39C
lbl_8051D360:
/* 8051D360  80 E3 04 E0 */	lwz r7, 0x4e0(r3)
/* 8051D364  38 81 00 08 */	addi r4, r1, 8
/* 8051D368  38 C3 04 E4 */	addi r6, r3, 0x4e4
/* 8051D36C  38 60 00 00 */	li r3, 0
/* 8051D370  38 A0 00 01 */	li r5, 1
/* 8051D374  39 00 00 02 */	li r8, 2
/* 8051D378  39 20 00 00 */	li r9, 0
/* 8051D37C  39 40 00 00 */	li r10, 0
/* 8051D380  4B EC B0 5D */	bl mSP_SelectRandomItem_New
/* 8051D384  48 00 00 18 */	b lbl_8051D39C
lbl_8051D388:
/* 8051D388  38 60 00 4C */	li r3, 0x4c
/* 8051D38C  38 80 00 40 */	li r4, 0x40
/* 8051D390  4B E8 06 41 */	bl mEv_set_status
/* 8051D394  38 60 00 01 */	li r3, 1
/* 8051D398  4B E7 B3 D9 */	bl mDemo_Set_talk_change_player
lbl_8051D39C:
/* 8051D39C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8051D3A0  3C 60 C0 00 */	lis r3, 0xc000
/* 8051D3A4  B0 1D 09 A0 */	sth r0, 0x9a0(r29)
/* 8051D3A8  4B E7 D5 D1 */	bl mEv_EventON
/* 8051D3AC  A8 1D 00 B6 */	lha r0, 0xb6(r29)
/* 8051D3B0  3C 80 80 6A */	lis r4, msg_idx@ha /* 0x806A0418@ha */
/* 8051D3B4  57 FF 10 3A */	slwi r31, r31, 2
/* 8051D3B8  7F A3 EB 78 */	mr r3, r29
/* 8051D3BC  B0 1D 09 24 */	sth r0, 0x924(r29)
/* 8051D3C0  38 84 04 18 */	addi r4, r4, msg_idx@l /* 0x806A0418@l */
/* 8051D3C4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8051D3C8  4B FF FD 15 */	bl aEDSN_get_msg_no
/* 8051D3CC  7C 64 1B 78 */	mr r4, r3
/* 8051D3D0  7F C3 F3 78 */	mr r3, r30
/* 8051D3D4  4B EA 2B F1 */	bl mMsg_Set_continue_msg_num
/* 8051D3D8  3C 80 80 6A */	lis r4, next_talk_proc_idx@ha /* 0x806A0424@ha */
/* 8051D3DC  7F A3 EB 78 */	mr r3, r29
/* 8051D3E0  38 84 04 24 */	addi r4, r4, next_talk_proc_idx@l /* 0x806A0424@l */
/* 8051D3E4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8051D3E8  48 00 01 B1 */	bl aEDSN_change_talk_proc
lbl_8051D3EC:
/* 8051D3EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D3F0  4B B7 DB 31 */	bl func_8009AF20
/* 8051D3F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D3F8  7C 08 03 A6 */	mtlr r0
/* 8051D3FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8051D400  4E 80 00 20 */	blr 
