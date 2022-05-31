lbl_803C7E28:
/* 803C7E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7E2C  7C 08 02 A6 */	mflr r0
/* 803C7E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7E38  3B E0 00 00 */	li r31, 0
/* 803C7E3C  93 C1 00 08 */	stw r30, 8(r1)
/* 803C7E40  3B C0 00 00 */	li r30, 0
lbl_803C7E44:
/* 803C7E44  7F E3 FB 78 */	mr r3, r31
/* 803C7E48  4B FF F5 91 */	bl func_803C73D8
/* 803C7E4C  2C 03 00 01 */	cmpwi r3, 1
/* 803C7E50  41 80 00 10 */	blt lbl_803C7E60
/* 803C7E54  2C 03 00 05 */	cmpwi r3, 5
/* 803C7E58  41 81 00 08 */	bgt lbl_803C7E60
/* 803C7E5C  3B DE 00 01 */	addi r30, r30, 1
lbl_803C7E60:
/* 803C7E60  3B FF 00 01 */	addi r31, r31, 1
/* 803C7E64  2C 1F 00 19 */	cmpwi r31, 0x19
/* 803C7E68  41 80 FF DC */	blt lbl_803C7E44
/* 803C7E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7E70  7F C3 F3 78 */	mr r3, r30
/* 803C7E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C7E78  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C7E7C  7C 08 03 A6 */	mtlr r0
/* 803C7E80  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7E84  4E 80 00 20 */	blr 
