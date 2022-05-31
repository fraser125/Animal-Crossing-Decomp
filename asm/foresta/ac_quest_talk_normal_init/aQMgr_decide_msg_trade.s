lbl_80493C2C:
/* 80493C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493C30  7C 08 02 A6 */	mflr r0
/* 80493C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80493C3C  4B C0 72 99 */	bl func_8009AED4
/* 80493C40  3C A0 80 69 */	lis r5, l_trade_prob@ha /* 0x8068B478@ha */
/* 80493C44  7C 9E 23 78 */	mr r30, r4
/* 80493C48  38 05 B4 78 */	addi r0, r5, l_trade_prob@l /* 0x8068B478@l */
/* 80493C4C  7C 7D 1B 78 */	mr r29, r3
/* 80493C50  7C 03 03 78 */	mr r3, r0
/* 80493C54  38 80 00 04 */	li r4, 4
/* 80493C58  4B FF D7 71 */	bl func_804913C8
/* 80493C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80493C60  41 80 00 30 */	blt lbl_80493C90
/* 80493C64  2C 03 00 04 */	cmpwi r3, 4
/* 80493C68  40 80 00 28 */	bge lbl_80493C90
/* 80493C6C  3C 80 80 69 */	lis r4, msg_proc_1173@ha /* 0x8068B7E8@ha */
/* 80493C70  54 60 10 3A */	slwi r0, r3, 2
/* 80493C74  38 84 B7 E8 */	addi r4, r4, msg_proc_1173@l /* 0x8068B7E8@l */
/* 80493C78  7F A3 EB 78 */	mr r3, r29
/* 80493C7C  7D 84 00 2E */	lwzx r12, r4, r0
/* 80493C80  7F C4 F3 78 */	mr r4, r30
/* 80493C84  7D 89 03 A6 */	mtctr r12
/* 80493C88  4E 80 04 21 */	bctrl 
/* 80493C8C  7C 7F 1B 78 */	mr r31, r3
lbl_80493C90:
/* 80493C90  7F E3 FB 78 */	mr r3, r31
/* 80493C94  39 61 00 20 */	addi r11, r1, 0x20
/* 80493C98  4B C0 72 89 */	bl func_8009AF20
/* 80493C9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493CA0  7C 08 03 A6 */	mtlr r0
/* 80493CA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80493CA8  4E 80 00 20 */	blr 
