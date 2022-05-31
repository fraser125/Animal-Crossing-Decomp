lbl_80493CAC:
/* 80493CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493CB0  7C 08 02 A6 */	mflr r0
/* 80493CB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80493CBC  4B C0 72 19 */	bl func_8009AED4
/* 80493CC0  3C A0 80 69 */	lis r5, l_normal_2_prob@ha /* 0x8068B474@ha */
/* 80493CC4  7C 9E 23 78 */	mr r30, r4
/* 80493CC8  38 05 B4 74 */	addi r0, r5, l_normal_2_prob@l /* 0x8068B474@l */
/* 80493CCC  7C 7D 1B 78 */	mr r29, r3
/* 80493CD0  7C 03 03 78 */	mr r3, r0
/* 80493CD4  38 80 00 04 */	li r4, 4
/* 80493CD8  4B FF D6 F1 */	bl func_804913C8
/* 80493CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80493CE0  41 80 00 30 */	blt lbl_80493D10
/* 80493CE4  2C 03 00 04 */	cmpwi r3, 4
/* 80493CE8  40 80 00 28 */	bge lbl_80493D10
/* 80493CEC  3C 80 80 69 */	lis r4, msg_proc_1181@ha /* 0x8068B7F8@ha */
/* 80493CF0  54 60 10 3A */	slwi r0, r3, 2
/* 80493CF4  38 84 B7 F8 */	addi r4, r4, msg_proc_1181@l /* 0x8068B7F8@l */
/* 80493CF8  7F A3 EB 78 */	mr r3, r29
/* 80493CFC  7D 84 00 2E */	lwzx r12, r4, r0
/* 80493D00  7F C4 F3 78 */	mr r4, r30
/* 80493D04  7D 89 03 A6 */	mtctr r12
/* 80493D08  4E 80 04 21 */	bctrl 
/* 80493D0C  7C 7F 1B 78 */	mr r31, r3
lbl_80493D10:
/* 80493D10  2C 1F FF FF */	cmpwi r31, -1
/* 80493D14  40 82 00 14 */	bne lbl_80493D28
/* 80493D18  7F A3 EB 78 */	mr r3, r29
/* 80493D1C  7F C4 F3 78 */	mr r4, r30
/* 80493D20  4B FF FD 4D */	bl aQMgr_decide_msg_normal_3_msg_no
/* 80493D24  7C 7F 1B 78 */	mr r31, r3
lbl_80493D28:
/* 80493D28  7F E3 FB 78 */	mr r3, r31
/* 80493D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80493D30  4B C0 71 F1 */	bl func_8009AF20
/* 80493D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493D38  7C 08 03 A6 */	mtlr r0
/* 80493D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80493D40  4E 80 00 20 */	blr 
