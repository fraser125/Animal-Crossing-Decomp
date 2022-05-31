lbl_8059BF90:
/* 8059BF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BF94  7C 08 02 A6 */	mflr r0
/* 8059BF98  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C3440@ha */
/* 8059BF9C  54 87 10 3A */	slwi r7, r4, 2
/* 8059BFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BFA4  38 C6 34 40 */	addi r6, r6, act_proc@l /* 0x806C3440@l */
/* 8059BFA8  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 8059BFAC  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3434@ha */
/* 8059BFB0  7C 06 38 2E */	lwzx r0, r6, r7
/* 8059BFB4  38 C4 34 34 */	addi r6, r4, init_proc@l /* 0x806C3434@l */
/* 8059BFB8  7C A4 2B 78 */	mr r4, r5
/* 8059BFBC  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059BFC0  7D 86 38 2E */	lwzx r12, r6, r7
/* 8059BFC4  7D 89 03 A6 */	mtctr r12
/* 8059BFC8  4E 80 04 21 */	bctrl 
/* 8059BFCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BFD0  7C 08 03 A6 */	mtlr r0
/* 8059BFD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BFD8  4E 80 00 20 */	blr 
