lbl_805B0044:
/* 805B0044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B0048  7C 08 02 A6 */	mflr r0
/* 805B004C  3C 80 80 65 */	lis r4, lit_556@ha /* 0x8064A798@ha */
/* 805B0050  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B0054  C0 24 A7 98 */	lfs f1, lit_556@l(r4)  /* 0x8064A798@l */
/* 805B0058  C0 03 02 C8 */	lfs f0, 0x2c8(r3)
/* 805B005C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B0060  40 82 00 10 */	bne lbl_805B0070
/* 805B0064  80 63 02 B8 */	lwz r3, 0x2b8(r3)
/* 805B0068  38 63 13 63 */	addi r3, r3, 0x1363
/* 805B006C  48 00 00 08 */	b lbl_805B0074
lbl_805B0070:
/* 805B0070  38 60 2A FE */	li r3, 0x2afe
lbl_805B0074:
/* 805B0074  4B DE 84 A1 */	bl mDemo_Set_msg_num
/* 805B0078  38 60 00 00 */	li r3, 0
/* 805B007C  4B DE 86 AD */	bl mDemo_Set_talk_display_name
/* 805B0080  38 60 00 01 */	li r3, 1
/* 805B0084  4B DE 88 9D */	bl mDemo_Set_camera
/* 805B0088  38 60 00 01 */	li r3, 1
/* 805B008C  4B E2 D9 99 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805B0090  4B DE A3 25 */	bl mDemo_Set_ListenAble
/* 805B0094  38 60 00 91 */	li r3, 0x91
/* 805B0098  38 A0 00 3C */	li r5, 0x3c
/* 805B009C  38 80 00 28 */	li r4, 0x28
/* 805B00A0  38 00 00 FF */	li r0, 0xff
/* 805B00A4  98 61 00 08 */	stb r3, 8(r1)
/* 805B00A8  38 61 00 08 */	addi r3, r1, 8
/* 805B00AC  98 A1 00 09 */	stb r5, 9(r1)
/* 805B00B0  98 81 00 0A */	stb r4, 0xa(r1)
/* 805B00B4  98 01 00 0B */	stb r0, 0xb(r1)
/* 805B00B8  4B DE 88 19 */	bl mDemo_Set_talk_window_color
/* 805B00BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B00C0  7C 08 03 A6 */	mtlr r0
/* 805B00C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B00C8  4E 80 00 20 */	blr 
