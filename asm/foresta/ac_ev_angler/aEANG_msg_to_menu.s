lbl_80518E98:
/* 80518E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80518E9C  7C 08 02 A6 */	mflr r0
/* 80518EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80518EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80518EA8  7C 9F 23 78 */	mr r31, r4
/* 80518EAC  38 80 00 09 */	li r4, 9
/* 80518EB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80518EB4  7C 7E 1B 78 */	mr r30, r3
/* 80518EB8  38 60 00 04 */	li r3, 4
/* 80518EBC  4B E7 F5 C1 */	bl mDemo_Get_OrderValue
/* 80518EC0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80518EC4  2C 00 00 02 */	cmpwi r0, 2
/* 80518EC8  40 82 00 2C */	bne lbl_80518EF4
/* 80518ECC  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80518ED0  7F C3 F3 78 */	mr r3, r30
/* 80518ED4  7F E4 FB 78 */	mr r4, r31
/* 80518ED8  38 A0 00 01 */	li r5, 1
/* 80518EDC  7D 89 03 A6 */	mtctr r12
/* 80518EE0  4E 80 04 21 */	bctrl 
/* 80518EE4  38 60 00 04 */	li r3, 4
/* 80518EE8  38 80 00 09 */	li r4, 9
/* 80518EEC  38 A0 00 00 */	li r5, 0
/* 80518EF0  4B E7 F5 49 */	bl mDemo_Set_OrderValue
lbl_80518EF4:
/* 80518EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80518EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80518EFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80518F00  7C 08 03 A6 */	mtlr r0
/* 80518F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80518F08  4E 80 00 20 */	blr 
