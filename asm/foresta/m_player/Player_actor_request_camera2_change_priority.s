lbl_804DAD1C:
/* 804DAD1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAD20  7C 08 02 A6 */	mflr r0
/* 804DAD24  38 80 00 00 */	li r4, 0
/* 804DAD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAD2C  4B EA 3D 99 */	bl Camera2_change_priority
/* 804DAD30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAD34  7C 08 03 A6 */	mtlr r0
/* 804DAD38  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAD3C  4E 80 00 20 */	blr 
