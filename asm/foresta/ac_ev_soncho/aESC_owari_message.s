lbl_80524198:
/* 80524198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052419C  7C 08 02 A6 */	mflr r0
/* 805241A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805241A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805241A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805241AC  4B E9 B4 FD */	bl func_803BF6A8
/* 805241B0  7C 60 1B 78 */	mr r0, r3
/* 805241B4  38 60 00 71 */	li r3, 0x71
/* 805241B8  7C 1E 03 78 */	mr r30, r0
/* 805241BC  38 80 00 22 */	li r4, 0x22
/* 805241C0  4B E7 9C 0D */	bl mEv_get_save_area
/* 805241C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805241C8  7C 7F 1B 78 */	mr r31, r3
/* 805241CC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805241D0  3C 63 00 02 */	addis r3, r3, 2
/* 805241D4  88 03 06 84 */	lbz r0, 0x684(r3)
/* 805241D8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 805241DC  41 82 00 18 */	beq lbl_805241F4
/* 805241E0  88 9F 00 02 */	lbz r4, 2(r31)
/* 805241E4  7F C3 F3 78 */	mr r3, r30
/* 805241E8  38 84 2F 47 */	addi r4, r4, 0x2f47
/* 805241EC  4B E9 BD D9 */	bl mMsg_Set_continue_msg_num
/* 805241F0  48 00 00 14 */	b lbl_80524204
lbl_805241F4:
/* 805241F4  88 9F 00 02 */	lbz r4, 2(r31)
/* 805241F8  7F C3 F3 78 */	mr r3, r30
/* 805241FC  38 84 2F 39 */	addi r4, r4, 0x2f39
/* 80524200  4B E9 BD C5 */	bl mMsg_Set_continue_msg_num
lbl_80524204:
/* 80524204  88 7F 00 02 */	lbz r3, 2(r31)
/* 80524208  38 03 00 01 */	addi r0, r3, 1
/* 8052420C  98 1F 00 02 */	stb r0, 2(r31)
/* 80524210  88 1F 00 02 */	lbz r0, 2(r31)
/* 80524214  28 00 00 05 */	cmplwi r0, 5
/* 80524218  41 80 00 0C */	blt lbl_80524224
/* 8052421C  38 00 00 00 */	li r0, 0
/* 80524220  98 1F 00 02 */	stb r0, 2(r31)
lbl_80524224:
/* 80524224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80524228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052422C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80524230  7C 08 03 A6 */	mtlr r0
/* 80524234  38 21 00 10 */	addi r1, r1, 0x10
/* 80524238  4E 80 00 20 */	blr 
