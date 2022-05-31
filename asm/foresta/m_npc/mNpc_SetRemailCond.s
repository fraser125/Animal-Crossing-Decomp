lbl_803CD104:
/* 803CD104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CD108  7C 08 02 A6 */	mflr r0
/* 803CD10C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CD110  39 61 00 20 */	addi r11, r1, 0x20
/* 803CD114  4B CC DD C1 */	bl func_8009AED4
/* 803CD118  7C 7D 1B 78 */	mr r29, r3
/* 803CD11C  7C 9E 23 78 */	mr r30, r4
/* 803CD120  7C BF 2B 78 */	mr r31, r5
/* 803CD124  4B FE 69 E5 */	bl mLd_PlayerManKindCheck
/* 803CD128  2C 03 00 00 */	cmpwi r3, 0
/* 803CD12C  40 82 00 14 */	bne lbl_803CD140
/* 803CD130  7F C3 F3 78 */	mr r3, r30
/* 803CD134  7F E4 FB 78 */	mr r4, r31
/* 803CD138  4B FF FE A1 */	bl mNpc_SetMailCondThisLand
/* 803CD13C  48 00 00 10 */	b lbl_803CD14C
lbl_803CD140:
/* 803CD140  7F A3 EB 78 */	mr r3, r29
/* 803CD144  7F E4 FB 78 */	mr r4, r31
/* 803CD148  4B FF FF 11 */	bl mNpc_SetMailCondOtherLand
lbl_803CD14C:
/* 803CD14C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CD150  4B CC DD D1 */	bl func_8009AF20
/* 803CD154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CD158  7C 08 03 A6 */	mtlr r0
/* 803CD15C  38 21 00 20 */	addi r1, r1, 0x20
/* 803CD160  4E 80 00 20 */	blr 
