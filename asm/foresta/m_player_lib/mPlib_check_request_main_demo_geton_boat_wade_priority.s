lbl_803DB2F8:
/* 803DB2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB2FC  7C 08 02 A6 */	mflr r0
/* 803DB300  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB308  3B E0 00 00 */	li r31, 0
/* 803DB30C  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB310  7C 7E 1B 78 */	mr r30, r3
/* 803DB314  4B FF E3 2D */	bl get_player_actor_withoutCheck
/* 803DB318  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB31C  7F C3 F3 78 */	mr r3, r30
/* 803DB320  38 80 00 13 */	li r4, 0x13
/* 803DB324  7D 89 03 A6 */	mtctr r12
/* 803DB328  4E 80 04 21 */	bctrl 
/* 803DB32C  2C 03 00 00 */	cmpwi r3, 0
/* 803DB330  40 81 00 28 */	ble lbl_803DB358
/* 803DB334  7F C3 F3 78 */	mr r3, r30
/* 803DB338  4B FF E3 09 */	bl get_player_actor_withoutCheck
/* 803DB33C  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DB340  38 60 00 73 */	li r3, 0x73
/* 803DB344  7D 89 03 A6 */	mtctr r12
/* 803DB348  4E 80 04 21 */	bctrl 
/* 803DB34C  2C 03 00 00 */	cmpwi r3, 0
/* 803DB350  40 82 00 08 */	bne lbl_803DB358
/* 803DB354  3B E0 00 01 */	li r31, 1
lbl_803DB358:
/* 803DB358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB35C  7F E3 FB 78 */	mr r3, r31
/* 803DB360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB364  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB368  7C 08 03 A6 */	mtlr r0
/* 803DB36C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB370  4E 80 00 20 */	blr 
