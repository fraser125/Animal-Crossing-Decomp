lbl_8052B2D0:
/* 8052B2D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052B2D4  7C 08 02 A6 */	mflr r0
/* 8052B2D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052B2DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B2E0  4B B6 FB F5 */	bl func_8009AED4
/* 8052B2E4  7C 7D 1B 78 */	mr r29, r3
/* 8052B2E8  7C 9E 23 78 */	mr r30, r4
/* 8052B2EC  38 60 00 01 */	li r3, 1
/* 8052B2F0  38 80 00 07 */	li r4, 7
/* 8052B2F4  4B E7 2A D9 */	bl mEv_get_save_area
/* 8052B2F8  7C 7F 1B 78 */	mr r31, r3
/* 8052B2FC  7F A3 EB 78 */	mr r3, r29
/* 8052B300  4B FF FD 05 */	bl func_8052B004
/* 8052B304  2C 03 00 00 */	cmpwi r3, 0
/* 8052B308  41 82 00 50 */	beq lbl_8052B358
/* 8052B30C  88 1D 09 A2 */	lbz r0, 0x9a2(r29)
/* 8052B310  28 00 00 1C */	cmplwi r0, 0x1c
/* 8052B314  40 82 00 2C */	bne lbl_8052B340
/* 8052B318  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8052B31C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8052B320  41 82 00 20 */	beq lbl_8052B340
/* 8052B324  54 60 04 A0 */	rlwinm r0, r3, 0, 0x12, 0x10
/* 8052B328  7F A3 EB 78 */	mr r3, r29
/* 8052B32C  B0 1F 00 02 */	sth r0, 2(r31)
/* 8052B330  7F C4 F3 78 */	mr r4, r30
/* 8052B334  38 A0 00 2B */	li r5, 0x2b
/* 8052B338  48 00 07 11 */	bl aHN0_setup_think_proc
/* 8052B33C  48 00 00 1C */	b lbl_8052B358
lbl_8052B340:
/* 8052B340  88 BD 09 A2 */	lbz r5, 0x9a2(r29)
/* 8052B344  7F A3 EB 78 */	mr r3, r29
/* 8052B348  7F C4 F3 78 */	mr r4, r30
/* 8052B34C  38 A5 00 01 */	addi r5, r5, 1
/* 8052B350  98 BD 09 A2 */	stb r5, 0x9a2(r29)
/* 8052B354  48 00 06 F5 */	bl aHN0_setup_think_proc
lbl_8052B358:
/* 8052B358  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B35C  4B B6 FB C5 */	bl func_8009AF20
/* 8052B360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052B364  7C 08 03 A6 */	mtlr r0
/* 8052B368  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B36C  4E 80 00 20 */	blr 
