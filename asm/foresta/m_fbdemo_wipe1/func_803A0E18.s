lbl_803A0E18:
/* 803A0E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A0E1C  7C 08 02 A6 */	mflr r0
/* 803A0E20  38 80 02 18 */	li r4, 0x218
/* 803A0E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A0E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A0E2C  7C 7F 1B 78 */	mr r31, r3
/* 803A0E30  4B CB C2 39 */	bl bzero
/* 803A0E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A0E38  7F E3 FB 78 */	mr r3, r31
/* 803A0E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A0E40  7C 08 03 A6 */	mtlr r0
/* 803A0E44  38 21 00 10 */	addi r1, r1, 0x10
/* 803A0E48  4E 80 00 20 */	blr 
