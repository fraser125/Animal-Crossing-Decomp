lbl_8053DB9C:
/* 8053DB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DBA0  7C 08 02 A6 */	mflr r0
/* 8053DBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DBAC  7C 7F 1B 78 */	mr r31, r3
/* 8053DBB0  4B E5 A8 49 */	bl mDemo_Get_talk_actor
/* 8053DBB4  28 03 00 00 */	cmplwi r3, 0
/* 8053DBB8  40 82 00 18 */	bne lbl_8053DBD0
/* 8053DBBC  A0 7F 07 CA */	lhz r3, 0x7ca(r31)
/* 8053DBC0  28 03 00 00 */	cmplwi r3, 0
/* 8053DBC4  41 82 00 0C */	beq lbl_8053DBD0
/* 8053DBC8  38 03 FF FF */	addi r0, r3, -1
/* 8053DBCC  B0 1F 07 CA */	sth r0, 0x7ca(r31)
lbl_8053DBD0:
/* 8053DBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DBD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DBD8  7C 08 03 A6 */	mtlr r0
/* 8053DBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DBE0  4E 80 00 20 */	blr 
