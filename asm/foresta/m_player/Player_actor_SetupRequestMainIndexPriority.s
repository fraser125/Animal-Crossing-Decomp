lbl_804D5328:
/* 804D5328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D532C  7C 08 02 A6 */	mflr r0
/* 804D5330  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5338  7C 7F 1B 78 */	mr r31, r3
/* 804D533C  80 63 0C F8 */	lwz r3, 0xcf8(r3)
/* 804D5340  4B FF FF A5 */	bl Player_actor_Get_SetupRequestMainIndexPriority
/* 804D5344  2C 03 00 00 */	cmpwi r3, 0
/* 804D5348  41 80 00 10 */	blt lbl_804D5358
/* 804D534C  2C 03 00 2D */	cmpwi r3, 0x2d
/* 804D5350  41 81 00 08 */	bgt lbl_804D5358
/* 804D5354  90 7F 0D 0C */	stw r3, 0xd0c(r31)
lbl_804D5358:
/* 804D5358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D535C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5360  7C 08 03 A6 */	mtlr r0
/* 804D5364  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5368  4E 80 00 20 */	blr 
