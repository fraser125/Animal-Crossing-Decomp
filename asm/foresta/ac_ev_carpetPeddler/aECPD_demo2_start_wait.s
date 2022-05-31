lbl_8051C35C:
/* 8051C35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C360  7C 08 02 A6 */	mflr r0
/* 8051C364  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C36C  7C 9F 23 78 */	mr r31, r4
/* 8051C370  38 80 00 01 */	li r4, 1
/* 8051C374  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C378  7C 7E 1B 78 */	mr r30, r3
/* 8051C37C  38 60 00 04 */	li r3, 4
/* 8051C380  4B E7 C0 FD */	bl mDemo_Get_OrderValue
/* 8051C384  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8051C388  2C 00 00 02 */	cmpwi r0, 2
/* 8051C38C  40 82 00 4C */	bne lbl_8051C3D8
/* 8051C390  A0 BE 09 A8 */	lhz r5, 0x9a8(r30)
/* 8051C394  38 60 00 05 */	li r3, 5
/* 8051C398  38 80 00 00 */	li r4, 0
/* 8051C39C  4B E7 C0 9D */	bl mDemo_Set_OrderValue
/* 8051C3A0  38 60 00 05 */	li r3, 5
/* 8051C3A4  38 80 00 01 */	li r4, 1
/* 8051C3A8  38 A0 00 07 */	li r5, 7
/* 8051C3AC  4B E7 C0 8D */	bl mDemo_Set_OrderValue
/* 8051C3B0  38 60 00 05 */	li r3, 5
/* 8051C3B4  38 80 00 02 */	li r4, 2
/* 8051C3B8  38 A0 00 00 */	li r5, 0
/* 8051C3BC  4B E7 C0 7D */	bl mDemo_Set_OrderValue
/* 8051C3C0  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051C3C4  7F C3 F3 78 */	mr r3, r30
/* 8051C3C8  7F E4 FB 78 */	mr r4, r31
/* 8051C3CC  38 A0 00 0B */	li r5, 0xb
/* 8051C3D0  7D 89 03 A6 */	mtctr r12
/* 8051C3D4  4E 80 04 21 */	bctrl 
lbl_8051C3D8:
/* 8051C3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C3DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C3E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C3E4  7C 08 03 A6 */	mtlr r0
/* 8051C3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C3EC  4E 80 00 20 */	blr 
