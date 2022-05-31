lbl_804E50D0:
/* 804E50D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E50D4  7C 08 02 A6 */	mflr r0
/* 804E50D8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804E50DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E50E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E50E4  7C 7F 1B 78 */	mr r31, r3
/* 804E50E8  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804E50EC  38 80 00 13 */	li r4, 0x13
/* 804E50F0  80 63 00 00 */	lwz r3, 0(r3)
/* 804E50F4  4B FF FF 79 */	bl func_804E506C
/* 804E50F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E50FC  80 1F 12 6C */	lwz r0, 0x126c(r31)
/* 804E5100  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E5104  3C 63 00 02 */	addis r3, r3, 2
/* 804E5108  2C 00 00 00 */	cmpwi r0, 0
/* 804E510C  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 804E5110  30 00 FF FF */	addic r0, r0, -1
/* 804E5114  7C 60 01 10 */	subfe r3, r0, r0
/* 804E5118  38 03 17 AE */	addi r0, r3, 0x17ae
/* 804E511C  7C 03 03 78 */	mr r3, r0
/* 804E5120  41 82 00 08 */	beq lbl_804E5128
/* 804E5124  38 60 3B 59 */	li r3, 0x3b59
lbl_804E5128:
/* 804E5128  4B EB 33 ED */	bl mDemo_Set_msg_num
/* 804E512C  38 60 00 00 */	li r3, 0
/* 804E5130  4B EB 35 F9 */	bl mDemo_Set_talk_display_name
/* 804E5134  4B EB 52 81 */	bl mDemo_Set_ListenAble
/* 804E5138  38 80 00 FF */	li r4, 0xff
/* 804E513C  38 00 00 14 */	li r0, 0x14
/* 804E5140  98 81 00 08 */	stb r4, 8(r1)
/* 804E5144  38 61 00 08 */	addi r3, r1, 8
/* 804E5148  98 81 00 09 */	stb r4, 9(r1)
/* 804E514C  98 01 00 0A */	stb r0, 0xa(r1)
/* 804E5150  98 81 00 0B */	stb r4, 0xb(r1)
/* 804E5154  4B EB 37 7D */	bl mDemo_Set_talk_window_color
/* 804E5158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E515C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E5160  7C 08 03 A6 */	mtlr r0
/* 804E5164  38 21 00 20 */	addi r1, r1, 0x20
/* 804E5168  4E 80 00 20 */	blr 
