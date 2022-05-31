lbl_8048B948:
/* 8048B948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B94C  7C 08 02 A6 */	mflr r0
/* 8048B950  38 80 00 43 */	li r4, 0x43
/* 8048B954  38 A0 00 0A */	li r5, 0xa
/* 8048B958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B95C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B960  3B E3 01 88 */	addi r31, r3, 0x188
/* 8048B964  7F E3 FB 78 */	mr r3, r31
/* 8048B968  4B FF FC F9 */	bl aQMgr_talk_quest_start_choice_random
/* 8048B96C  38 7F 00 04 */	addi r3, r31, 4
/* 8048B970  38 80 00 4D */	li r4, 0x4d
/* 8048B974  38 A0 00 0A */	li r5, 0xa
/* 8048B978  4B FF FC E9 */	bl aQMgr_talk_quest_start_choice_random
/* 8048B97C  38 60 00 02 */	li r3, 2
/* 8048B980  38 00 FF FF */	li r0, -1
/* 8048B984  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8048B988  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8048B98C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B994  7C 08 03 A6 */	mtlr r0
/* 8048B998  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B99C  4E 80 00 20 */	blr 
