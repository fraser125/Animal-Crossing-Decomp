lbl_8041065C:
/* 8041065C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410660  7C 08 02 A6 */	mflr r0
/* 80410664  38 63 20 D8 */	addi r3, r3, 0x20d8
/* 80410668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041066C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80410670  3B E0 00 00 */	li r31, 0
/* 80410674  81 83 02 3C */	lwz r12, 0x23c(r3)
/* 80410678  7D 89 03 A6 */	mtctr r12
/* 8041067C  4E 80 04 21 */	bctrl 
/* 80410680  2C 03 00 00 */	cmpwi r3, 0
/* 80410684  41 82 00 08 */	beq lbl_8041068C
/* 80410688  3B E0 00 01 */	li r31, 1
lbl_8041068C:
/* 8041068C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410690  7F E3 FB 78 */	mr r3, r31
/* 80410694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80410698  7C 08 03 A6 */	mtlr r0
/* 8041069C  38 21 00 10 */	addi r1, r1, 0x10
/* 804106A0  4E 80 00 20 */	blr 