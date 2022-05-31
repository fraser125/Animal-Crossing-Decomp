lbl_80570374:
/* 80570374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570378  7C 08 02 A6 */	mflr r0
/* 8057037C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570380  4B E7 37 E9 */	bl mQst_GetFirstJobData
/* 80570384  88 03 00 00 */	lbz r0, 0(r3)
/* 80570388  3C 60 80 6C */	lis r3, process@ha /* 0x806BEF70@ha */
/* 8057038C  38 63 EF 70 */	addi r3, r3, process@l /* 0x806BEF70@l */
/* 80570390  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80570394  38 04 FF FD */	addi r0, r4, -3
/* 80570398  54 00 10 3A */	slwi r0, r0, 2
/* 8057039C  7D 83 00 2E */	lwzx r12, r3, r0
/* 805703A0  7D 89 03 A6 */	mtctr r12
/* 805703A4  4E 80 04 21 */	bctrl 
/* 805703A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805703AC  7C 08 03 A6 */	mtlr r0
/* 805703B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805703B4  4E 80 00 20 */	blr 
