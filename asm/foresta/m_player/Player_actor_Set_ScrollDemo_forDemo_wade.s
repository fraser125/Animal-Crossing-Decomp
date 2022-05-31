lbl_804D9B34:
/* 804D9B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9B38  7C 08 02 A6 */	mflr r0
/* 804D9B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D9B44  7C 7F 1B 78 */	mr r31, r3
/* 804D9B48  4B FF C6 19 */	bl Player_actor_CheckAbleMoveDemoWadeBlock
/* 804D9B4C  2C 03 00 00 */	cmpwi r3, 0
/* 804D9B50  41 82 00 24 */	beq lbl_804D9B74
/* 804D9B54  3C 80 80 4E */	lis r4, Player_actor_Init_ScrollDemo_forDemo_wade@ha /* 0x804D99C0@ha */
/* 804D9B58  90 7F 12 0C */	stw r3, 0x120c(r31)
/* 804D9B5C  38 A4 99 C0 */	addi r5, r4, Player_actor_Init_ScrollDemo_forDemo_wade@l /* 0x804D99C0@l */
/* 804D9B60  38 60 00 05 */	li r3, 5
/* 804D9B64  7F E4 FB 78 */	mr r4, r31
/* 804D9B68  4B EC 05 F5 */	bl mDemo_Request
/* 804D9B6C  38 60 00 01 */	li r3, 1
/* 804D9B70  48 00 00 08 */	b lbl_804D9B78
lbl_804D9B74:
/* 804D9B74  38 60 00 00 */	li r3, 0
lbl_804D9B78:
/* 804D9B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9B7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D9B80  7C 08 03 A6 */	mtlr r0
/* 804D9B84  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9B88  4E 80 00 20 */	blr 
