lbl_8054DB64:
/* 8054DB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DB68  7C 08 02 A6 */	mflr r0
/* 8054DB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DB70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DB74  3B E0 00 00 */	li r31, 0
/* 8054DB78  93 C1 00 08 */	stw r30, 8(r1)
/* 8054DB7C  7C 7E 1B 78 */	mr r30, r3
/* 8054DB80  88 03 00 05 */	lbz r0, 5(r3)
/* 8054DB84  28 00 00 01 */	cmplwi r0, 1
/* 8054DB88  40 82 00 2C */	bne lbl_8054DBB4
/* 8054DB8C  4B E7 0F 79 */	bl mMpswd_check_npc_code
/* 8054DB90  2C 03 00 01 */	cmpwi r3, 1
/* 8054DB94  40 82 00 20 */	bne lbl_8054DBB4
/* 8054DB98  7F C3 F3 78 */	mr r3, r30
/* 8054DB9C  4B E7 0F A5 */	bl mMpswd_check_name
/* 8054DBA0  2C 03 00 01 */	cmpwi r3, 1
/* 8054DBA4  40 82 00 0C */	bne lbl_8054DBB0
/* 8054DBA8  3B E0 00 02 */	li r31, 2
/* 8054DBAC  48 00 00 08 */	b lbl_8054DBB4
lbl_8054DBB0:
/* 8054DBB0  3B E0 00 08 */	li r31, 8
lbl_8054DBB4:
/* 8054DBB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DBB8  7F E3 FB 78 */	mr r3, r31
/* 8054DBBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DBC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054DBC4  7C 08 03 A6 */	mtlr r0
/* 8054DBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DBCC  4E 80 00 20 */	blr 
