lbl_805DC884:
/* 805DC884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC888  7C 08 02 A6 */	mflr r0
/* 805DC88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC894  93 C1 00 08 */	stw r30, 8(r1)
/* 805DC898  7C 7E 1B 78 */	mr r30, r3
/* 805DC89C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DC8A0  81 84 07 B0 */	lwz r12, 0x7b0(r4)
/* 805DC8A4  3B E4 07 A4 */	addi r31, r4, 0x7a4
/* 805DC8A8  7D 89 03 A6 */	mtctr r12
/* 805DC8AC  4E 80 04 21 */	bctrl 
/* 805DC8B0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805DC8B4  3C 60 80 6D */	lis r3, data_806CCF68@ha /* 0x806CCF68@ha */
/* 805DC8B8  38 A3 CF 68 */	addi r5, r3, data_806CCF68@l /* 0x806CCF68@l */
/* 805DC8BC  7F C3 F3 78 */	mr r3, r30
/* 805DC8C0  54 00 10 3A */	slwi r0, r0, 2
/* 805DC8C4  7F E4 FB 78 */	mr r4, r31
/* 805DC8C8  7D 85 00 2E */	lwzx r12, r5, r0
/* 805DC8CC  7D 89 03 A6 */	mtctr r12
/* 805DC8D0  4E 80 04 21 */	bctrl 
/* 805DC8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC8D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC8DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DC8E0  7C 08 03 A6 */	mtlr r0
/* 805DC8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC8E8  4E 80 00 20 */	blr 
