lbl_8052F580:
/* 8052F580  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052F584  7C 08 02 A6 */	mflr r0
/* 8052F588  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052F58C  39 61 00 20 */	addi r11, r1, 0x20
/* 8052F590  4B B6 B9 45 */	bl func_8009AED4
/* 8052F594  A0 03 00 06 */	lhz r0, 6(r3)
/* 8052F598  7C 7D 1B 78 */	mr r29, r3
/* 8052F59C  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8052F5A0  2C 00 00 0D */	cmpwi r0, 0xd
/* 8052F5A4  41 82 00 64 */	beq lbl_8052F608
/* 8052F5A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8052F5AC  3B C0 00 00 */	li r30, 0
/* 8052F5B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8052F5B4  3F E3 00 02 */	addis r31, r3, 2
/* 8052F5B8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8052F5BC  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 8052F5C0  2C 00 00 02 */	cmpwi r0, 2
/* 8052F5C4  41 82 00 14 */	beq lbl_8052F5D8
/* 8052F5C8  40 80 00 3C */	bge lbl_8052F604
/* 8052F5CC  2C 00 00 01 */	cmpwi r0, 1
/* 8052F5D0  40 80 00 10 */	bge lbl_8052F5E0
/* 8052F5D4  48 00 00 30 */	b lbl_8052F604
lbl_8052F5D8:
/* 8052F5D8  3B C0 FF 00 */	li r30, -256
/* 8052F5DC  48 00 00 28 */	b lbl_8052F604
lbl_8052F5E0:
/* 8052F5E0  80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 8052F5E4  88 63 00 0D */	lbz r3, 0xd(r3)
/* 8052F5E8  4B EA 29 81 */	bl mNpc_GetLooks2Sex
/* 8052F5EC  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 8052F5F0  88 04 00 14 */	lbz r0, 0x14(r4)
/* 8052F5F4  7C 00 07 74 */	extsb r0, r0
/* 8052F5F8  7C 00 18 00 */	cmpw r0, r3
/* 8052F5FC  41 82 00 08 */	beq lbl_8052F604
/* 8052F600  3B C0 01 00 */	li r30, 0x100
lbl_8052F604:
/* 8052F604  93 DD 08 64 */	stw r30, 0x864(r29)
lbl_8052F608:
/* 8052F608  39 61 00 20 */	addi r11, r1, 0x20
/* 8052F60C  4B B6 B9 15 */	bl func_8009AF20
/* 8052F610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052F614  7C 08 03 A6 */	mtlr r0
/* 8052F618  38 21 00 20 */	addi r1, r1, 0x20
/* 8052F61C  4E 80 00 20 */	blr 
