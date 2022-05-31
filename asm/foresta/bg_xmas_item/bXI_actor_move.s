lbl_804CD094:
/* 804CD094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CD098  7C 08 02 A6 */	mflr r0
/* 804CD09C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CD0A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD0A4  4B BC DE 31 */	bl func_8009AED4
/* 804CD0A8  7C 7D 1B 78 */	mr r29, r3
/* 804CD0AC  3C A0 80 6A */	lis r5, type_data_table_p_a@ha /* 0x8069BBF4@ha */
/* 804CD0B0  3B DD 15 6C */	addi r30, r29, 0x156c
/* 804CD0B4  3C 60 80 6A */	lis r3, pos_table@ha /* 0x80698C34@ha */
/* 804CD0B8  3C DE 00 01 */	addis r6, r30, 1
/* 804CD0BC  38 05 BB F4 */	addi r0, r5, type_data_table_p_a@l /* 0x8069BBF4@l */
/* 804CD0C0  90 06 25 9C */	stw r0, 0x259c(r6)
/* 804CD0C4  38 63 8C 34 */	addi r3, r3, pos_table@l /* 0x80698C34@l */
/* 804CD0C8  38 00 00 00 */	li r0, 0
/* 804CD0CC  7C 9F 23 78 */	mr r31, r4
/* 804CD0D0  90 66 25 A0 */	stw r3, 0x25a0(r6)
/* 804CD0D4  B0 06 39 E0 */	sth r0, 0x39e0(r6)
/* 804CD0D8  4B EB 1D 7D */	bl Camera2_CheckCullingMode
/* 804CD0DC  2C 03 00 00 */	cmpwi r3, 0
/* 804CD0E0  41 82 00 14 */	beq lbl_804CD0F4
/* 804CD0E4  3C 7E 00 01 */	addis r3, r30, 1
/* 804CD0E8  A0 03 39 E0 */	lhz r0, 0x39e0(r3)
/* 804CD0EC  60 00 00 01 */	ori r0, r0, 1
/* 804CD0F0  B0 03 39 E0 */	sth r0, 0x39e0(r3)
lbl_804CD0F4:
/* 804CD0F4  3C 60 80 4D */	lis r3, func_804CD02C@ha /* 0x804CD02C@ha */
/* 804CD0F8  3C 9E 00 01 */	addis r4, r30, 1
/* 804CD0FC  38 03 D0 2C */	addi r0, r3, func_804CD02C@l /* 0x804CD02C@l */
/* 804CD100  7F E3 FB 78 */	mr r3, r31
/* 804CD104  90 04 39 D8 */	stw r0, 0x39d8(r4)
/* 804CD108  7F A4 EB 78 */	mr r4, r29
/* 804CD10C  7F C5 F3 78 */	mr r5, r30
/* 804CD110  4B FF F3 C5 */	bl bg_item_common_move
/* 804CD114  80 1F 20 90 */	lwz r0, 0x2090(r31)
/* 804CD118  38 DD 01 74 */	addi r6, r29, 0x174
/* 804CD11C  39 20 00 00 */	li r9, 0
/* 804CD120  38 80 00 03 */	li r4, 3
/* 804CD124  54 08 00 34 */	rlwinm r8, r0, 0, 0, 0x1a
/* 804CD128  38 00 01 01 */	li r0, 0x101
lbl_804CD12C:
/* 804CD12C  7C C7 33 78 */	mr r7, r6
/* 804CD130  7C 09 03 A6 */	mtctr r0
lbl_804CD134:
/* 804CD134  A8 67 00 00 */	lha r3, 0(r7)
/* 804CD138  7C A8 1A 14 */	add r5, r8, r3
/* 804CD13C  7C 65 23 D6 */	divw r3, r5, r4
/* 804CD140  7C 63 21 D6 */	mullw r3, r3, r4
/* 804CD144  7C 63 28 50 */	subf r3, r3, r5
/* 804CD148  B0 67 00 02 */	sth r3, 2(r7)
/* 804CD14C  38 E7 00 04 */	addi r7, r7, 4
/* 804CD150  42 00 FF E4 */	bdnz lbl_804CD134
/* 804CD154  39 29 00 01 */	addi r9, r9, 1
/* 804CD158  38 C6 04 FE */	addi r6, r6, 0x4fe
/* 804CD15C  2C 09 00 04 */	cmpwi r9, 4
/* 804CD160  41 80 FF CC */	blt lbl_804CD12C
/* 804CD164  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD168  4B BC DD B9 */	bl func_8009AF20
/* 804CD16C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CD170  7C 08 03 A6 */	mtlr r0
/* 804CD174  38 21 00 20 */	addi r1, r1, 0x20
/* 804CD178  4E 80 00 20 */	blr 
