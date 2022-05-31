lbl_803A0AA4:
/* 803A0AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A0AA8  7C 08 02 A6 */	mflr r0
/* 803A0AAC  38 80 00 90 */	li r4, 0x90
/* 803A0AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A0AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A0AB8  7C 7F 1B 78 */	mr r31, r3
/* 803A0ABC  4B CB C5 AD */	bl bzero
/* 803A0AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A0AC4  7F E3 FB 78 */	mr r3, r31
/* 803A0AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A0ACC  7C 08 03 A6 */	mtlr r0
/* 803A0AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A0AD4  4E 80 00 20 */	blr 
