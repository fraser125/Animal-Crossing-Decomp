lbl_80536814:
/* 80536814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80536818  7C 08 02 A6 */	mflr r0
/* 8053681C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80536820  81 83 07 D4 */	lwz r12, 0x7d4(r3)
/* 80536824  7D 89 03 A6 */	mtctr r12
/* 80536828  4E 80 04 21 */	bctrl 
/* 8053682C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536830  7C 08 03 A6 */	mtlr r0
/* 80536834  38 21 00 10 */	addi r1, r1, 0x10
/* 80536838  4E 80 00 20 */	blr 
