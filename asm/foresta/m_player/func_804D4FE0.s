lbl_804D4FE0:
/* 804D4FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4FE4  7C 08 02 A6 */	mflr r0
/* 804D4FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D4FF0  7C 9F 23 78 */	mr r31, r4
/* 804D4FF4  4B F0 46 4D */	bl get_player_actor_withoutCheck
/* 804D4FF8  80 03 0D 0C */	lwz r0, 0xd0c(r3)
/* 804D4FFC  7C 60 F8 50 */	subf r3, r0, r31
/* 804D5000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5008  7C 08 03 A6 */	mtlr r0
/* 804D500C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5010  4E 80 00 20 */	blr 
