lbl_8054CDAC:
/* 8054CDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CDB0  7C 08 02 A6 */	mflr r0
/* 8054CDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054CDBC  3B E0 00 00 */	li r31, 0
/* 8054CDC0  93 C1 00 08 */	stw r30, 8(r1)
/* 8054CDC4  7C 7E 1B 78 */	mr r30, r3
/* 8054CDC8  81 83 09 A4 */	lwz r12, 0x9a4(r3)
/* 8054CDCC  7D 89 03 A6 */	mtctr r12
/* 8054CDD0  4E 80 04 21 */	bctrl 
/* 8054CDD4  7F C4 F3 78 */	mr r4, r30
/* 8054CDD8  38 60 00 07 */	li r3, 7
/* 8054CDDC  4B E4 D4 89 */	bl mDemo_Check
/* 8054CDE0  2C 03 00 00 */	cmpwi r3, 0
/* 8054CDE4  40 82 00 08 */	bne lbl_8054CDEC
/* 8054CDE8  3B E0 00 01 */	li r31, 1
lbl_8054CDEC:
/* 8054CDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CDF0  7F E3 FB 78 */	mr r3, r31
/* 8054CDF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054CDF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054CDFC  7C 08 03 A6 */	mtlr r0
/* 8054CE00  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CE04  4E 80 00 20 */	blr 
