lbl_8048CF7C:
/* 8048CF7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048CF80  7C 08 02 A6 */	mflr r0
/* 8048CF84  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048CF88  39 61 00 40 */	addi r11, r1, 0x40
/* 8048CF8C  4B C0 DF 49 */	bl func_8009AED4
/* 8048CF90  7C 7D 1B 78 */	mr r29, r3
/* 8048CF94  80 03 09 30 */	lwz r0, 0x930(r3)
/* 8048CF98  3B FD 01 C8 */	addi r31, r29, 0x1c8
/* 8048CF9C  1C 80 00 34 */	mulli r4, r0, 0x34
/* 8048CFA0  3B C4 02 14 */	addi r30, r4, 0x214
/* 8048CFA4  7F DD F2 14 */	add r30, r29, r30
/* 8048CFA8  4B FF E4 21 */	bl aQMgr_actor_set_reward
/* 8048CFAC  7F E3 FB 78 */	mr r3, r31
/* 8048CFB0  4B FF E1 A9 */	bl aQMgr_actor_hand_reward
/* 8048CFB4  2C 03 00 01 */	cmpwi r3, 1
/* 8048CFB8  40 82 00 EC */	bne lbl_8048D0A4
/* 8048CFBC  7F E3 FB 78 */	mr r3, r31
/* 8048CFC0  4B FF DF AD */	bl aQMgr_actor_set_free_str_reward
/* 8048CFC4  38 00 00 0D */	li r0, 0xd
/* 8048CFC8  90 1D 01 B0 */	stw r0, 0x1b0(r29)
/* 8048CFCC  80 DE 00 08 */	lwz r6, 8(r30)
/* 8048CFD0  28 06 00 00 */	cmplwi r6, 0
/* 8048CFD4  41 82 00 8C */	beq lbl_8048D060
/* 8048CFD8  88 06 00 00 */	lbz r0, 0(r6)
/* 8048CFDC  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048CFE0  28 00 00 02 */	cmplwi r0, 2
/* 8048CFE4  40 82 00 7C */	bne lbl_8048D060
/* 8048CFE8  3C 60 80 64 */	lis r3, lit_1507@ha /* 0x80644BEC@ha */
/* 8048CFEC  38 00 00 03 */	li r0, 3
/* 8048CFF0  38 63 4B EC */	addi r3, r3, lit_1507@l /* 0x80644BEC@l */
/* 8048CFF4  38 A1 00 04 */	addi r5, r1, 4
/* 8048CFF8  38 83 FF FC */	addi r4, r3, -4
/* 8048CFFC  7C 09 03 A6 */	mtctr r0
lbl_8048D000:
/* 8048D000  80 64 00 04 */	lwz r3, 4(r4)
/* 8048D004  84 04 00 08 */	lwzu r0, 8(r4)
/* 8048D008  90 65 00 04 */	stw r3, 4(r5)
/* 8048D00C  94 05 00 08 */	stwu r0, 8(r5)
/* 8048D010  42 00 FF F0 */	bdnz lbl_8048D000
/* 8048D014  88 66 00 00 */	lbz r3, 0(r6)
/* 8048D018  80 84 00 04 */	lwz r4, 4(r4)
/* 8048D01C  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 8048D020  28 00 00 07 */	cmplwi r0, 7
/* 8048D024  90 85 00 04 */	stw r4, 4(r5)
/* 8048D028  41 80 00 10 */	blt lbl_8048D038
/* 8048D02C  38 00 00 06 */	li r0, 6
/* 8048D030  50 03 06 BE */	rlwimi r3, r0, 0, 0x1a, 0x1f
/* 8048D034  98 66 00 00 */	stb r3, 0(r6)
lbl_8048D038:
/* 8048D038  80 9E 00 08 */	lwz r4, 8(r30)
/* 8048D03C  38 61 00 08 */	addi r3, r1, 8
/* 8048D040  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8048D044  88 84 00 00 */	lbz r4, 0(r4)
/* 8048D048  54 00 10 3A */	slwi r0, r0, 2
/* 8048D04C  54 84 16 3A */	rlwinm r4, r4, 2, 0x18, 0x1d
/* 8048D050  7C 63 20 2E */	lwzx r3, r3, r4
/* 8048D054  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048D058  90 1D 01 AC */	stw r0, 0x1ac(r29)
/* 8048D05C  48 00 00 1C */	b lbl_8048D078
lbl_8048D060:
/* 8048D060  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8048D064  3C 60 80 69 */	lis r3, l_reward_msg@ha /* 0x8068AF5C@ha */
/* 8048D068  38 63 AF 5C */	addi r3, r3, l_reward_msg@l /* 0x8068AF5C@l */
/* 8048D06C  54 00 10 3A */	slwi r0, r0, 2
/* 8048D070  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048D074  90 1D 01 AC */	stw r0, 0x1ac(r29)
lbl_8048D078:
/* 8048D078  38 00 00 11 */	li r0, 0x11
/* 8048D07C  38 60 01 2F */	li r3, 0x12f
/* 8048D080  98 1D 01 86 */	stb r0, 0x186(r29)
/* 8048D084  48 1A 0C 81 */	bl sAdo_SysTrgStart
/* 8048D088  80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 8048D08C  80 63 00 00 */	lwz r3, 0(r3)
/* 8048D090  28 03 00 00 */	cmplwi r3, 0
/* 8048D094  41 82 00 34 */	beq lbl_8048D0C8
/* 8048D098  38 80 00 03 */	li r4, 3
/* 8048D09C  4B F3 E7 91 */	bl mNpc_AddFriendship
/* 8048D0A0  48 00 00 28 */	b lbl_8048D0C8
lbl_8048D0A4:
/* 8048D0A4  38 00 00 0B */	li r0, 0xb
/* 8048D0A8  38 A0 00 01 */	li r5, 1
/* 8048D0AC  90 1D 01 B0 */	stw r0, 0x1b0(r29)
/* 8048D0B0  38 00 FF FF */	li r0, -1
/* 8048D0B4  80 9E 00 08 */	lwz r4, 8(r30)
/* 8048D0B8  88 64 00 01 */	lbz r3, 1(r4)
/* 8048D0BC  50 A3 17 7A */	rlwimi r3, r5, 2, 0x1d, 0x1d
/* 8048D0C0  98 64 00 01 */	stb r3, 1(r4)
/* 8048D0C4  90 1D 09 30 */	stw r0, 0x930(r29)
lbl_8048D0C8:
/* 8048D0C8  80 BE 00 08 */	lwz r5, 8(r30)
/* 8048D0CC  88 05 00 00 */	lbz r0, 0(r5)
/* 8048D0D0  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048D0D4  28 00 00 02 */	cmplwi r0, 2
/* 8048D0D8  40 82 00 50 */	bne lbl_8048D128
/* 8048D0DC  88 65 00 01 */	lbz r3, 1(r5)
/* 8048D0E0  54 64 EF 3F */	rlwinm. r4, r3, 0x1d, 0x1c, 0x1f
/* 8048D0E4  41 82 00 3C */	beq lbl_8048D120
/* 8048D0E8  38 04 FF FF */	addi r0, r4, -1
/* 8048D0EC  38 80 00 03 */	li r4, 3
/* 8048D0F0  50 03 1E 78 */	rlwimi r3, r0, 3, 0x19, 0x1c
/* 8048D0F4  98 65 00 01 */	stb r3, 1(r5)
/* 8048D0F8  80 7E 00 08 */	lwz r3, 8(r30)
/* 8048D0FC  38 63 00 02 */	addi r3, r3, 2
/* 8048D100  4B F7 9C 25 */	bl lbRTC_Add_DD
/* 8048D104  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048D108  80 BE 00 08 */	lwz r5, 8(r30)
/* 8048D10C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048D110  3C 83 00 02 */	addis r4, r3, 2
/* 8048D114  38 65 00 0E */	addi r3, r5, 0xe
/* 8048D118  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8048D11C  4B F5 30 05 */	bl mPr_CopyPersonalID
lbl_8048D120:
/* 8048D120  38 00 FF FF */	li r0, -1
/* 8048D124  90 1D 09 30 */	stw r0, 0x930(r29)
lbl_8048D128:
/* 8048D128  38 00 00 00 */	li r0, 0
/* 8048D12C  7F A3 EB 78 */	mr r3, r29
/* 8048D130  98 1D 01 85 */	stb r0, 0x185(r29)
/* 8048D134  4B FF E4 A9 */	bl aQMgr_actor_talk_finish
/* 8048D138  81 9D 09 48 */	lwz r12, 0x948(r29)
/* 8048D13C  7F A3 EB 78 */	mr r3, r29
/* 8048D140  38 80 00 02 */	li r4, 2
/* 8048D144  7D 89 03 A6 */	mtctr r12
/* 8048D148  4E 80 04 21 */	bctrl 
/* 8048D14C  4B F3 25 5D */	bl func_803BF6A8
/* 8048D150  80 9D 01 A8 */	lwz r4, 0x1a8(r29)
/* 8048D154  4B F3 2E 71 */	bl mMsg_Set_continue_msg_num
/* 8048D158  39 61 00 40 */	addi r11, r1, 0x40
/* 8048D15C  4B C0 DD C5 */	bl func_8009AF20
/* 8048D160  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048D164  7C 08 03 A6 */	mtlr r0
/* 8048D168  38 21 00 40 */	addi r1, r1, 0x40
/* 8048D16C  4E 80 00 20 */	blr 
