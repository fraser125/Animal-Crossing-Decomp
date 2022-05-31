lbl_80507EB4:
/* 80507EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507EB8  7C 08 02 A6 */	mflr r0
/* 80507EBC  2C 05 00 00 */	cmpwi r5, 0
/* 80507EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80507EC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80507ECC  7C 9E 23 78 */	mr r30, r4
/* 80507ED0  41 82 00 20 */	beq lbl_80507EF0
/* 80507ED4  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 80507ED8  4B FC D4 95 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80507EDC  A8 BF 00 0C */	lha r5, 0xc(r31)
/* 80507EE0  7F C3 F3 78 */	mr r3, r30
/* 80507EE4  7F E4 FB 78 */	mr r4, r31
/* 80507EE8  38 C0 00 13 */	li r6, 0x13
/* 80507EEC  48 00 00 B1 */	bl func_80507F9C
lbl_80507EF0:
/* 80507EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80507EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80507EFC  7C 08 03 A6 */	mtlr r0
/* 80507F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80507F04  4E 80 00 20 */	blr 
