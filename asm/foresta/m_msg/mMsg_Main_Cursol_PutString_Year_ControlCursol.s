lbl_803C3A98:
/* 803C3A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3A9C  7C 08 02 A6 */	mflr r0
/* 803C3AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C3AA8  7C 7F 1B 78 */	mr r31, r3
/* 803C3AAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C3AB0  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3AB4  80 A3 00 08 */	lwz r5, 8(r3)
/* 803C3AB8  38 63 00 20 */	addi r3, r3, 0x20
/* 803C3ABC  4B FF D6 CD */	bl mMsg_CopyYear
/* 803C3AC0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C3AC4  90 64 00 08 */	stw r3, 8(r4)
/* 803C3AC8  38 60 00 00 */	li r3, 0
/* 803C3ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3AD4  7C 08 03 A6 */	mtlr r0
/* 803C3AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3ADC  4E 80 00 20 */	blr 
