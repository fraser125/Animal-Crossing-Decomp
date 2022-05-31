lbl_8058F0A0:
/* 8058F0A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058F0A4  7C 08 02 A6 */	mflr r0
/* 8058F0A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058F0AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058F0B0  4B B0 BE 25 */	bl func_8009AED4
/* 8058F0B4  7C 7D 1B 78 */	mr r29, r3
/* 8058F0B8  7C 9E 23 78 */	mr r30, r4
/* 8058F0BC  38 60 00 0E */	li r3, 0xe
/* 8058F0C0  38 80 00 09 */	li r4, 9
/* 8058F0C4  4B E0 ED 09 */	bl mEv_get_save_area
/* 8058F0C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058F0CC  7C 7F 1B 78 */	mr r31, r3
/* 8058F0D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058F0D4  7F A3 EB 78 */	mr r3, r29
/* 8058F0D8  3C A4 00 02 */	addis r5, r4, 2
/* 8058F0DC  7F C4 F3 78 */	mr r4, r30
/* 8058F0E0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058F0E4  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8058F0E8  7D 89 03 A6 */	mtctr r12
/* 8058F0EC  4E 80 04 21 */	bctrl 
/* 8058F0F0  A0 7D 00 06 */	lhz r3, 6(r29)
/* 8058F0F4  38 80 00 01 */	li r4, 1
/* 8058F0F8  A0 BF 00 12 */	lhz r5, 0x12(r31)
/* 8058F0FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058F100  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058F104  38 03 2F A1 */	addi r0, r3, 0x2fa1
/* 8058F108  7C 80 00 30 */	slw r0, r4, r0
/* 8058F10C  7C A0 03 78 */	or r0, r5, r0
/* 8058F110  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8058F114  4B B0 BE 0D */	bl func_8009AF20
/* 8058F118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058F11C  7C 08 03 A6 */	mtlr r0
/* 8058F120  38 21 00 20 */	addi r1, r1, 0x20
/* 8058F124  4E 80 00 20 */	blr 
