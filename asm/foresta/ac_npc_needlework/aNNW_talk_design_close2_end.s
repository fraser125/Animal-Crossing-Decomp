lbl_80562964:
/* 80562964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562968  7C 08 02 A6 */	mflr r0
/* 8056296C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562974  7C 7F 1B 78 */	mr r31, r3
/* 80562978  4B E5 CD 31 */	bl func_803BF6A8
/* 8056297C  4B E5 CD E9 */	bl mMsg_Check_not_series_main_wait
/* 80562980  2C 03 00 01 */	cmpwi r3, 1
/* 80562984  40 82 00 18 */	bne lbl_8056299C
/* 80562988  88 9F 09 B2 */	lbz r4, 0x9b2(r31)
/* 8056298C  7F E3 FB 78 */	mr r3, r31
/* 80562990  38 04 00 01 */	addi r0, r4, 1
/* 80562994  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80562998  48 00 1A F1 */	bl aNNW_change_talk_proc
lbl_8056299C:
/* 8056299C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805629A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805629A4  7C 08 03 A6 */	mtlr r0
/* 805629A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805629AC  4E 80 00 20 */	blr 
