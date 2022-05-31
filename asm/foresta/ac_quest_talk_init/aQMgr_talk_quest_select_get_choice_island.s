lbl_8048B8F0:
/* 8048B8F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B8F4  7C 08 02 A6 */	mflr r0
/* 8048B8F8  38 80 00 89 */	li r4, 0x89
/* 8048B8FC  38 A0 00 0A */	li r5, 0xa
/* 8048B900  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B908  3B E3 01 88 */	addi r31, r3, 0x188
/* 8048B90C  7F E3 FB 78 */	mr r3, r31
/* 8048B910  4B FF FD 51 */	bl aQMgr_talk_quest_start_choice_random
/* 8048B914  38 7F 00 04 */	addi r3, r31, 4
/* 8048B918  38 80 01 6A */	li r4, 0x16a
/* 8048B91C  38 A0 00 05 */	li r5, 5
/* 8048B920  4B FF FD 41 */	bl aQMgr_talk_quest_start_choice_random
/* 8048B924  38 60 FF FF */	li r3, -1
/* 8048B928  38 00 00 02 */	li r0, 2
/* 8048B92C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8048B930  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8048B934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B93C  7C 08 03 A6 */	mtlr r0
/* 8048B940  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B944  4E 80 00 20 */	blr 
