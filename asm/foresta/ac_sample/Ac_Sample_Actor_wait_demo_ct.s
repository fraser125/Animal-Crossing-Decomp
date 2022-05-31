lbl_8040F084:
/* 8040F084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F088  7C 08 02 A6 */	mflr r0
/* 8040F08C  38 60 00 09 */	li r3, 9
/* 8040F090  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F094  4B F8 94 81 */	bl mDemo_Set_msg_num
/* 8040F098  4B FB 06 11 */	bl func_803BF6A8
/* 8040F09C  3C A0 80 66 */	lis r5, str0@ha /* 0x8065F950@ha */
/* 8040F0A0  38 80 00 00 */	li r4, 0
/* 8040F0A4  38 A5 F9 50 */	addi r5, r5, str0@l /* 0x8065F950@l */
/* 8040F0A8  38 C0 00 06 */	li r6, 6
/* 8040F0AC  4B FB 0D 29 */	bl mMsg_Set_item_str
/* 8040F0B0  4B FB 05 F9 */	bl func_803BF6A8
/* 8040F0B4  3C A0 80 66 */	lis r5, str9@ha /* 0x8065F960@ha */
/* 8040F0B8  38 80 00 04 */	li r4, 4
/* 8040F0BC  38 A5 F9 60 */	addi r5, r5, str9@l /* 0x8065F960@l */
/* 8040F0C0  38 C0 00 05 */	li r6, 5
/* 8040F0C4  4B FB 0D 11 */	bl mMsg_Set_item_str
/* 8040F0C8  4B FB 05 E1 */	bl func_803BF6A8
/* 8040F0CC  3C A0 80 66 */	lis r5, str0@ha /* 0x8065F950@ha */
/* 8040F0D0  38 80 00 00 */	li r4, 0
/* 8040F0D4  38 A5 F9 50 */	addi r5, r5, str0@l /* 0x8065F950@l */
/* 8040F0D8  38 C0 00 10 */	li r6, 0x10
/* 8040F0DC  4B FB 0B 79 */	bl mMsg_Set_free_str
/* 8040F0E0  4B FB 05 C9 */	bl func_803BF6A8
/* 8040F0E4  3C A0 80 66 */	lis r5, str9@ha /* 0x8065F960@ha */
/* 8040F0E8  38 80 00 09 */	li r4, 9
/* 8040F0EC  38 A5 F9 60 */	addi r5, r5, str9@l /* 0x8065F960@l */
/* 8040F0F0  38 C0 00 05 */	li r6, 5
/* 8040F0F4  4B FB 0B 61 */	bl mMsg_Set_free_str
/* 8040F0F8  4B FB 05 B1 */	bl func_803BF6A8
/* 8040F0FC  3C A0 81 1D */	lis r5, str_mail@ha /* 0x811CB7D8@ha */
/* 8040F100  38 80 00 00 */	li r4, 0
/* 8040F104  38 A5 B7 D8 */	addi r5, r5, str_mail@l /* 0x811CB7D8@l */
/* 8040F108  38 C0 00 40 */	li r6, 0x40
/* 8040F10C  4B FB 0D 8D */	bl mMsg_Set_mail_str
/* 8040F110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F114  7C 08 03 A6 */	mtlr r0
/* 8040F118  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F11C  4E 80 00 20 */	blr 
