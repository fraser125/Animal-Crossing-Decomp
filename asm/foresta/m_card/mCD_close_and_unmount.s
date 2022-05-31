lbl_803F7E14:
/* 803F7E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F7E18  7C 08 02 A6 */	mflr r0
/* 803F7E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F7E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F7E24  7C 9F 23 78 */	mr r31, r4
/* 803F7E28  4B C9 97 F5 */	bl CARDClose
/* 803F7E2C  7F E3 FB 78 */	mr r3, r31
/* 803F7E30  4B C9 89 B1 */	bl CARDUnmount
/* 803F7E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F7E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F7E3C  7C 08 03 A6 */	mtlr r0
/* 803F7E40  38 21 00 10 */	addi r1, r1, 0x10
/* 803F7E44  4E 80 00 20 */	blr 
