lbl_804DB354:
/* 804DB354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB358  7C 08 02 A6 */	mflr r0
/* 804DB35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB364  7C DF 33 78 */	mr r31, r6
/* 804DB368  93 C1 00 08 */	stw r30, 8(r1)
/* 804DB36C  7C 7E 1B 78 */	mr r30, r3
/* 804DB370  4B FF FD C5 */	bl Player_actor_Set_FootMark_MarkOnly
/* 804DB374  2C 03 00 00 */	cmpwi r3, 0
/* 804DB378  41 82 00 20 */	beq lbl_804DB398
/* 804DB37C  7F C3 F3 78 */	mr r3, r30
/* 804DB380  4B FF FF 45 */	bl Player_actor_CheckAble_FootMark_Sound
/* 804DB384  2C 03 00 00 */	cmpwi r3, 0
/* 804DB388  41 82 00 10 */	beq lbl_804DB398
/* 804DB38C  7F C3 F3 78 */	mr r3, r30
/* 804DB390  7F E4 FB 78 */	mr r4, r31
/* 804DB394  48 00 3F 19 */	bl Player_actor_sound_FootStep1
lbl_804DB398:
/* 804DB398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB3A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DB3A4  7C 08 03 A6 */	mtlr r0
/* 804DB3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB3AC  4E 80 00 20 */	blr 
