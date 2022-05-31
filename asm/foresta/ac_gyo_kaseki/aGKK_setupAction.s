lbl_805A6B58:
/* 805A6B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6B5C  7C 08 02 A6 */	mflr r0
/* 805A6B60  3C A0 80 6C */	lis r5, act_proc@ha /* 0x806C4310@ha */
/* 805A6B64  54 86 10 3A */	slwi r6, r4, 2
/* 805A6B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6B6C  38 A5 43 10 */	addi r5, r5, act_proc@l /* 0x806C4310@l */
/* 805A6B70  90 83 01 E0 */	stw r4, 0x1e0(r3)
/* 805A6B74  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C42E4@ha */
/* 805A6B78  38 84 42 E4 */	addi r4, r4, init_proc@l /* 0x806C42E4@l */
/* 805A6B7C  7C 05 30 2E */	lwzx r0, r5, r6
/* 805A6B80  90 03 01 E4 */	stw r0, 0x1e4(r3)
/* 805A6B84  7D 84 30 2E */	lwzx r12, r4, r6
/* 805A6B88  7D 89 03 A6 */	mtctr r12
/* 805A6B8C  4E 80 04 21 */	bctrl 
/* 805A6B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6B94  7C 08 03 A6 */	mtlr r0
/* 805A6B98  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6B9C  4E 80 00 20 */	blr 
