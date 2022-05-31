lbl_8052DB64:
/* 8052DB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052DB68  7C 08 02 A6 */	mflr r0
/* 8052DB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052DB70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052DB74  3B E0 00 01 */	li r31, 1
/* 8052DB78  93 C1 00 08 */	stw r30, 8(r1)
/* 8052DB7C  7C 7E 1B 78 */	mr r30, r3
/* 8052DB80  88 03 08 99 */	lbz r0, 0x899(r3)
/* 8052DB84  2C 00 00 03 */	cmpwi r0, 3
/* 8052DB88  41 82 00 14 */	beq lbl_8052DB9C
/* 8052DB8C  40 80 00 2C */	bge lbl_8052DBB8
/* 8052DB90  2C 00 00 00 */	cmpwi r0, 0
/* 8052DB94  41 82 00 4C */	beq lbl_8052DBE0
/* 8052DB98  48 00 00 20 */	b lbl_8052DBB8
lbl_8052DB9C:
/* 8052DB9C  4B FF FD DD */	bl aNPC_putaway_right_item
/* 8052DBA0  2C 03 00 00 */	cmpwi r3, 0
/* 8052DBA4  40 82 00 3C */	bne lbl_8052DBE0
/* 8052DBA8  38 00 00 00 */	li r0, 0
/* 8052DBAC  3B E0 00 00 */	li r31, 0
/* 8052DBB0  98 1E 08 99 */	stb r0, 0x899(r30)
/* 8052DBB4  48 00 00 2C */	b lbl_8052DBE0
lbl_8052DBB8:
/* 8052DBB8  88 1E 08 98 */	lbz r0, 0x898(r30)
/* 8052DBBC  28 00 00 00 */	cmplwi r0, 0
/* 8052DBC0  40 82 00 14 */	bne lbl_8052DBD4
/* 8052DBC4  7F C3 F3 78 */	mr r3, r30
/* 8052DBC8  4B FF FE 4D */	bl aNPC_takeout_right_item
/* 8052DBCC  7C 7F 1B 78 */	mr r31, r3
/* 8052DBD0  48 00 00 10 */	b lbl_8052DBE0
lbl_8052DBD4:
/* 8052DBD4  7F C3 F3 78 */	mr r3, r30
/* 8052DBD8  4B FF FD A1 */	bl aNPC_putaway_right_item
/* 8052DBDC  7C 7F 1B 78 */	mr r31, r3
lbl_8052DBE0:
/* 8052DBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052DBE4  7F E3 FB 78 */	mr r3, r31
/* 8052DBE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052DBEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052DBF0  7C 08 03 A6 */	mtlr r0
/* 8052DBF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052DBF8  4E 80 00 20 */	blr 
