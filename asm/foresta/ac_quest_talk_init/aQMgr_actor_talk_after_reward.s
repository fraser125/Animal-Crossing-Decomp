lbl_8048D1D8:
/* 8048D1D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048D1DC  7C 08 02 A6 */	mflr r0
/* 8048D1E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048D1E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8048D1E8  7C 7F 1B 78 */	mr r31, r3
/* 8048D1EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8048D1F0  83 C3 09 30 */	lwz r30, 0x930(r3)
/* 8048D1F4  4B FF E1 D5 */	bl aQMgr_actor_set_reward
/* 8048D1F8  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 8048D1FC  4B FF DF 5D */	bl aQMgr_actor_hand_reward
/* 8048D200  2C 03 00 01 */	cmpwi r3, 1
/* 8048D204  40 82 00 E0 */	bne lbl_8048D2E4
/* 8048D208  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 8048D20C  4B FF DD 61 */	bl aQMgr_actor_set_free_str_reward
/* 8048D210  1C 7E 00 34 */	mulli r3, r30, 0x34
/* 8048D214  38 00 00 0D */	li r0, 0xd
/* 8048D218  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048D21C  38 E3 02 14 */	addi r7, r3, 0x214
/* 8048D220  7C FF 3A 14 */	add r7, r31, r7
/* 8048D224  80 C7 00 08 */	lwz r6, 8(r7)
/* 8048D228  28 06 00 00 */	cmplwi r6, 0
/* 8048D22C  41 82 00 8C */	beq lbl_8048D2B8
/* 8048D230  88 06 00 00 */	lbz r0, 0(r6)
/* 8048D234  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048D238  28 00 00 02 */	cmplwi r0, 2
/* 8048D23C  40 82 00 7C */	bne lbl_8048D2B8
/* 8048D240  3C 60 80 64 */	lis r3, lit_1536@ha /* 0x80644C08@ha */
/* 8048D244  38 00 00 03 */	li r0, 3
/* 8048D248  38 63 4C 08 */	addi r3, r3, lit_1536@l /* 0x80644C08@l */
/* 8048D24C  38 A1 00 04 */	addi r5, r1, 4
/* 8048D250  38 83 FF FC */	addi r4, r3, -4
/* 8048D254  7C 09 03 A6 */	mtctr r0
lbl_8048D258:
/* 8048D258  80 64 00 04 */	lwz r3, 4(r4)
/* 8048D25C  84 04 00 08 */	lwzu r0, 8(r4)
/* 8048D260  90 65 00 04 */	stw r3, 4(r5)
/* 8048D264  94 05 00 08 */	stwu r0, 8(r5)
/* 8048D268  42 00 FF F0 */	bdnz lbl_8048D258
/* 8048D26C  88 66 00 00 */	lbz r3, 0(r6)
/* 8048D270  80 84 00 04 */	lwz r4, 4(r4)
/* 8048D274  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 8048D278  28 00 00 07 */	cmplwi r0, 7
/* 8048D27C  90 85 00 04 */	stw r4, 4(r5)
/* 8048D280  41 80 00 10 */	blt lbl_8048D290
/* 8048D284  38 00 00 06 */	li r0, 6
/* 8048D288  50 03 06 BE */	rlwimi r3, r0, 0, 0x1a, 0x1f
/* 8048D28C  98 66 00 00 */	stb r3, 0(r6)
lbl_8048D290:
/* 8048D290  80 87 00 08 */	lwz r4, 8(r7)
/* 8048D294  38 61 00 08 */	addi r3, r1, 8
/* 8048D298  80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 8048D29C  88 84 00 00 */	lbz r4, 0(r4)
/* 8048D2A0  54 00 10 3A */	slwi r0, r0, 2
/* 8048D2A4  54 84 16 3A */	rlwinm r4, r4, 2, 0x18, 0x1d
/* 8048D2A8  7C 63 20 2E */	lwzx r3, r3, r4
/* 8048D2AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048D2B0  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 8048D2B4  48 00 00 1C */	b lbl_8048D2D0
lbl_8048D2B8:
/* 8048D2B8  80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 8048D2BC  3C 60 80 69 */	lis r3, l_after_reward_msg@ha /* 0x8068B03C@ha */
/* 8048D2C0  38 63 B0 3C */	addi r3, r3, l_after_reward_msg@l /* 0x8068B03C@l */
/* 8048D2C4  54 00 10 3A */	slwi r0, r0, 2
/* 8048D2C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048D2CC  90 1F 01 AC */	stw r0, 0x1ac(r31)
lbl_8048D2D0:
/* 8048D2D0  38 00 00 13 */	li r0, 0x13
/* 8048D2D4  38 60 01 2F */	li r3, 0x12f
/* 8048D2D8  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048D2DC  48 1A 0A 29 */	bl sAdo_SysTrgStart
/* 8048D2E0  48 00 00 0C */	b lbl_8048D2EC
lbl_8048D2E4:
/* 8048D2E4  38 00 00 0C */	li r0, 0xc
/* 8048D2E8  90 1F 01 B0 */	stw r0, 0x1b0(r31)
lbl_8048D2EC:
/* 8048D2EC  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048D2F0  7F E3 FB 78 */	mr r3, r31
/* 8048D2F4  38 80 00 02 */	li r4, 2
/* 8048D2F8  7D 89 03 A6 */	mtctr r12
/* 8048D2FC  4E 80 04 21 */	bctrl 
/* 8048D300  4B F3 23 A9 */	bl func_803BF6A8
/* 8048D304  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048D308  4B F3 2C BD */	bl mMsg_Set_continue_msg_num
/* 8048D30C  38 00 00 00 */	li r0, 0
/* 8048D310  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048D314  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048D318  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8048D31C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8048D320  7C 08 03 A6 */	mtlr r0
/* 8048D324  38 21 00 30 */	addi r1, r1, 0x30
/* 8048D328  4E 80 00 20 */	blr 
