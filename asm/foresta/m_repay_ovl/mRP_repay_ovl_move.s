lbl_805EC7DC:
/* 805EC7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC7E0  7C 08 02 A6 */	mflr r0
/* 805EC7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC7EC  93 C1 00 08 */	stw r30, 8(r1)
/* 805EC7F0  7C 7E 1B 78 */	mr r30, r3
/* 805EC7F4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805EC7F8  81 84 02 58 */	lwz r12, 0x258(r4)
/* 805EC7FC  3B E4 02 4C */	addi r31, r4, 0x24c
/* 805EC800  7D 89 03 A6 */	mtctr r12
/* 805EC804  4E 80 04 21 */	bctrl 
/* 805EC808  80 1F 00 04 */	lwz r0, 4(r31)
/* 805EC80C  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CE414@ha */
/* 805EC810  38 A3 E4 14 */	addi r5, r3, ovl_move_proc@l /* 0x806CE414@l */
/* 805EC814  7F C3 F3 78 */	mr r3, r30
/* 805EC818  54 00 10 3A */	slwi r0, r0, 2
/* 805EC81C  7F E4 FB 78 */	mr r4, r31
/* 805EC820  7D 85 00 2E */	lwzx r12, r5, r0
/* 805EC824  7D 89 03 A6 */	mtctr r12
/* 805EC828  4E 80 04 21 */	bctrl 
/* 805EC82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC834  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EC838  7C 08 03 A6 */	mtlr r0
/* 805EC83C  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC840  4E 80 00 20 */	blr 
