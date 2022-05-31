lbl_80526C88:
/* 80526C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526C8C  7C 08 02 A6 */	mflr r0
/* 80526C90  7C 85 23 78 */	mr r5, r4
/* 80526C94  38 80 20 00 */	li r4, 0x2000
/* 80526C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526CA0  7C 7F 1B 78 */	mr r31, r3
/* 80526CA4  4B E4 D6 A5 */	bl Actor_player_look_direction_check
/* 80526CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80526CAC  41 82 00 40 */	beq lbl_80526CEC
/* 80526CB0  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 80526CB4  A8 1F 00 B6 */	lha r0, 0xb6(r31)
/* 80526CB8  7C 63 00 50 */	subf r3, r3, r0
/* 80526CBC  7C 60 07 34 */	extsh r0, r3
/* 80526CC0  7C 63 07 35 */	extsh. r3, r3
/* 80526CC4  7C 60 00 D0 */	neg r3, r0
/* 80526CC8  41 80 00 08 */	blt lbl_80526CD0
/* 80526CCC  7C 03 03 78 */	mr r3, r0
lbl_80526CD0:
/* 80526CD0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80526CD4  40 80 00 18 */	bge lbl_80526CEC
/* 80526CD8  3C 60 80 52 */	lis r3, aEYMS_set_talk_info@ha /* 0x80526BE8@ha */
/* 80526CDC  7F E4 FB 78 */	mr r4, r31
/* 80526CE0  38 A3 6B E8 */	addi r5, r3, aEYMS_set_talk_info@l /* 0x80526BE8@l */
/* 80526CE4  38 60 00 07 */	li r3, 7
/* 80526CE8  4B E7 34 75 */	bl mDemo_Request
lbl_80526CEC:
/* 80526CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80526CF4  7C 08 03 A6 */	mtlr r0
/* 80526CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80526CFC  4E 80 00 20 */	blr 
