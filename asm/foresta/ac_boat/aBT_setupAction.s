lbl_805A834C:
/* 805A834C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8350  7C 08 02 A6 */	mflr r0
/* 805A8354  3C C0 80 6C */	lis r6, process@ha /* 0x806C4420@ha */
/* 805A8358  54 A7 10 3A */	slwi r7, r5, 2
/* 805A835C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8360  38 C6 44 20 */	addi r6, r6, process@l /* 0x806C4420@l */
/* 805A8364  90 A3 02 B4 */	stw r5, 0x2b4(r3)
/* 805A8368  3C A0 80 6C */	lis r5, init_proc@ha /* 0x806C43E4@ha */
/* 805A836C  38 A5 43 E4 */	addi r5, r5, init_proc@l /* 0x806C43E4@l */
/* 805A8370  7C 06 38 2E */	lwzx r0, r6, r7
/* 805A8374  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805A8378  7D 85 38 2E */	lwzx r12, r5, r7
/* 805A837C  7D 89 03 A6 */	mtctr r12
/* 805A8380  4E 80 04 21 */	bctrl 
/* 805A8384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8388  7C 08 03 A6 */	mtlr r0
/* 805A838C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8390  4E 80 00 20 */	blr 
