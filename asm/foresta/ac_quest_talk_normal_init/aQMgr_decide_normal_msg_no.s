lbl_8049428C:
/* 8049428C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80494290  7C 08 02 A6 */	mflr r0
/* 80494294  90 01 00 24 */	stw r0, 0x24(r1)
/* 80494298  39 61 00 20 */	addi r11, r1, 0x20
/* 8049429C  4B C0 6C 39 */	bl func_8009AED4
/* 804942A0  3C A0 80 69 */	lis r5, l_normal_1_prob@ha /* 0x8068B468@ha */
/* 804942A4  7C 9E 23 78 */	mr r30, r4
/* 804942A8  38 05 B4 68 */	addi r0, r5, l_normal_1_prob@l /* 0x8068B468@l */
/* 804942AC  7C 7D 1B 78 */	mr r29, r3
/* 804942B0  7C 03 03 78 */	mr r3, r0
/* 804942B4  38 80 00 02 */	li r4, 2
/* 804942B8  4B FF D1 11 */	bl func_804913C8
/* 804942BC  2C 03 00 00 */	cmpwi r3, 0
/* 804942C0  41 80 00 30 */	blt lbl_804942F0
/* 804942C4  2C 03 00 02 */	cmpwi r3, 2
/* 804942C8  40 80 00 28 */	bge lbl_804942F0
/* 804942CC  3C 80 80 69 */	lis r4, msg_proc_1285@ha /* 0x8068B818@ha */
/* 804942D0  54 60 10 3A */	slwi r0, r3, 2
/* 804942D4  38 84 B8 18 */	addi r4, r4, msg_proc_1285@l /* 0x8068B818@l */
/* 804942D8  7F A3 EB 78 */	mr r3, r29
/* 804942DC  7D 84 00 2E */	lwzx r12, r4, r0
/* 804942E0  7F C4 F3 78 */	mr r4, r30
/* 804942E4  7D 89 03 A6 */	mtctr r12
/* 804942E8  4E 80 04 21 */	bctrl 
/* 804942EC  7C 7F 1B 78 */	mr r31, r3
lbl_804942F0:
/* 804942F0  7F E3 FB 78 */	mr r3, r31
/* 804942F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804942F8  4B C0 6C 29 */	bl func_8009AF20
/* 804942FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80494300  7C 08 03 A6 */	mtlr r0
/* 80494304  38 21 00 20 */	addi r1, r1, 0x20
/* 80494308  4E 80 00 20 */	blr 
