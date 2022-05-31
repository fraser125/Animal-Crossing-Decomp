lbl_803842A0:
/* 803842A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803842A4  7C 08 02 A6 */	mflr r0
/* 803842A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803842AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803842B0  4B D1 6C 25 */	bl func_8009AED4
/* 803842B4  7C 7D 1B 78 */	mr r29, r3
/* 803842B8  7C 9E 23 78 */	mr r30, r4
/* 803842BC  7C BF 2B 78 */	mr r31, r5
/* 803842C0  48 03 B3 E9 */	bl func_803BF6A8
/* 803842C4  7F A4 EB 78 */	mr r4, r29
/* 803842C8  7F C5 F3 78 */	mr r5, r30
/* 803842CC  7F E6 FB 78 */	mr r6, r31
/* 803842D0  48 03 D7 2D */	bl mMsg_CopyAmPm
/* 803842D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803842D8  4B D1 6C 49 */	bl func_8009AF20
/* 803842DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803842E0  7C 08 03 A6 */	mtlr r0
/* 803842E4  38 21 00 20 */	addi r1, r1, 0x20
/* 803842E8  4E 80 00 20 */	blr 
