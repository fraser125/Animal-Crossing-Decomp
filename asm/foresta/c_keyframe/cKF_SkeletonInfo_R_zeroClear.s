lbl_80370A70:
/* 80370A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370A74  7C 08 02 A6 */	mflr r0
/* 80370A78  38 80 00 70 */	li r4, 0x70
/* 80370A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80370A80  4B CE C5 E9 */	bl bzero
/* 80370A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370A88  7C 08 03 A6 */	mtlr r0
/* 80370A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80370A90  4E 80 00 20 */	blr 
