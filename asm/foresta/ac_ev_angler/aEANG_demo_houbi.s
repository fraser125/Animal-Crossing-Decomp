lbl_805189F8:
/* 805189F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805189FC  7C 08 02 A6 */	mflr r0
/* 80518A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80518A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80518A08  7C 9F 23 78 */	mr r31, r4
/* 80518A0C  38 80 00 01 */	li r4, 1
/* 80518A10  93 C1 00 08 */	stw r30, 8(r1)
/* 80518A14  7C 7E 1B 78 */	mr r30, r3
/* 80518A18  38 60 00 04 */	li r3, 4
/* 80518A1C  4B E7 FA 61 */	bl mDemo_Get_OrderValue
/* 80518A20  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80518A24  2C 00 00 02 */	cmpwi r0, 2
/* 80518A28  40 82 00 4C */	bne lbl_80518A74
/* 80518A2C  A0 BE 09 A0 */	lhz r5, 0x9a0(r30)
/* 80518A30  38 60 00 05 */	li r3, 5
/* 80518A34  38 80 00 00 */	li r4, 0
/* 80518A38  4B E7 FA 01 */	bl mDemo_Set_OrderValue
/* 80518A3C  38 60 00 05 */	li r3, 5
/* 80518A40  38 80 00 01 */	li r4, 1
/* 80518A44  38 A0 00 07 */	li r5, 7
/* 80518A48  4B E7 F9 F1 */	bl mDemo_Set_OrderValue
/* 80518A4C  38 60 00 05 */	li r3, 5
/* 80518A50  38 80 00 02 */	li r4, 2
/* 80518A54  38 A0 00 00 */	li r5, 0
/* 80518A58  4B E7 F9 E1 */	bl mDemo_Set_OrderValue
/* 80518A5C  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80518A60  7F C3 F3 78 */	mr r3, r30
/* 80518A64  7F E4 FB 78 */	mr r4, r31
/* 80518A68  38 A0 00 00 */	li r5, 0
/* 80518A6C  7D 89 03 A6 */	mtctr r12
/* 80518A70  4E 80 04 21 */	bctrl 
lbl_80518A74:
/* 80518A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80518A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80518A7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80518A80  7C 08 03 A6 */	mtlr r0
/* 80518A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80518A88  4E 80 00 20 */	blr 
