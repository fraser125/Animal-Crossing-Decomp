lbl_803DB27C:
/* 803DB27C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB280  7C 08 02 A6 */	mflr r0
/* 803DB284  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB28C  3B E0 00 00 */	li r31, 0
/* 803DB290  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB294  7C 7E 1B 78 */	mr r30, r3
/* 803DB298  4B FF E3 A9 */	bl get_player_actor_withoutCheck
/* 803DB29C  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB2A0  7F C3 F3 78 */	mr r3, r30
/* 803DB2A4  38 80 00 13 */	li r4, 0x13
/* 803DB2A8  7D 89 03 A6 */	mtctr r12
/* 803DB2AC  4E 80 04 21 */	bctrl 
/* 803DB2B0  2C 03 00 00 */	cmpwi r3, 0
/* 803DB2B4  40 81 00 28 */	ble lbl_803DB2DC
/* 803DB2B8  7F C3 F3 78 */	mr r3, r30
/* 803DB2BC  4B FF E3 85 */	bl get_player_actor_withoutCheck
/* 803DB2C0  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DB2C4  38 60 00 50 */	li r3, 0x50
/* 803DB2C8  7D 89 03 A6 */	mtctr r12
/* 803DB2CC  4E 80 04 21 */	bctrl 
/* 803DB2D0  2C 03 00 00 */	cmpwi r3, 0
/* 803DB2D4  40 82 00 08 */	bne lbl_803DB2DC
/* 803DB2D8  3B E0 00 01 */	li r31, 1
lbl_803DB2DC:
/* 803DB2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB2E0  7F E3 FB 78 */	mr r3, r31
/* 803DB2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB2E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB2EC  7C 08 03 A6 */	mtlr r0
/* 803DB2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB2F4  4E 80 00 20 */	blr 
