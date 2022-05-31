lbl_80493A6C:
/* 80493A6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493A70  7C 08 02 A6 */	mflr r0
/* 80493A74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493A78  39 61 00 20 */	addi r11, r1, 0x20
/* 80493A7C  4B C0 74 59 */	bl func_8009AED4
/* 80493A80  3C A0 80 69 */	lis r5, l_normal_3_prob@ha /* 0x8068B47C@ha */
/* 80493A84  7C 9E 23 78 */	mr r30, r4
/* 80493A88  38 05 B4 7C */	addi r0, r5, l_normal_3_prob@l /* 0x8068B47C@l */
/* 80493A8C  7C 7D 1B 78 */	mr r29, r3
/* 80493A90  7C 03 03 78 */	mr r3, r0
/* 80493A94  38 80 00 04 */	li r4, 4
/* 80493A98  4B FF D9 31 */	bl func_804913C8
/* 80493A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80493AA0  41 80 00 30 */	blt lbl_80493AD0
/* 80493AA4  2C 03 00 04 */	cmpwi r3, 4
/* 80493AA8  40 80 00 28 */	bge lbl_80493AD0
/* 80493AAC  3C 80 80 69 */	lis r4, msg_proc_1149@ha /* 0x8068B7D8@ha */
/* 80493AB0  54 60 10 3A */	slwi r0, r3, 2
/* 80493AB4  38 84 B7 D8 */	addi r4, r4, msg_proc_1149@l /* 0x8068B7D8@l */
/* 80493AB8  7F A3 EB 78 */	mr r3, r29
/* 80493ABC  7D 84 00 2E */	lwzx r12, r4, r0
/* 80493AC0  7F C4 F3 78 */	mr r4, r30
/* 80493AC4  7D 89 03 A6 */	mtctr r12
/* 80493AC8  4E 80 04 21 */	bctrl 
/* 80493ACC  7C 7F 1B 78 */	mr r31, r3
lbl_80493AD0:
/* 80493AD0  7F E3 FB 78 */	mr r3, r31
/* 80493AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80493AD8  4B C0 74 49 */	bl func_8009AF20
/* 80493ADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493AE0  7C 08 03 A6 */	mtlr r0
/* 80493AE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80493AE8  4E 80 00 20 */	blr 
