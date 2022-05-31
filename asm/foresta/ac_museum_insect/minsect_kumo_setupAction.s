lbl_80469EC8:
/* 80469EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80469ECC  7C 08 02 A6 */	mflr r0
/* 80469ED0  3C C0 80 68 */	lis r6, init_proc_3822@ha /* 0x80686D24@ha */
/* 80469ED4  3C E0 80 68 */	lis r7, move_proc_3823@ha /* 0x80686D38@ha */
/* 80469ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80469EDC  54 88 10 3A */	slwi r8, r4, 2
/* 80469EE0  38 87 6D 38 */	addi r4, r7, move_proc_3823@l /* 0x80686D38@l */
/* 80469EE4  38 C6 6D 24 */	addi r6, r6, init_proc_3822@l /* 0x80686D24@l */
/* 80469EE8  7C 04 40 2E */	lwzx r0, r4, r8
/* 80469EEC  7C A4 2B 78 */	mr r4, r5
/* 80469EF0  90 03 00 04 */	stw r0, 4(r3)
/* 80469EF4  7D 86 40 2E */	lwzx r12, r6, r8
/* 80469EF8  7D 89 03 A6 */	mtctr r12
/* 80469EFC  4E 80 04 21 */	bctrl 
/* 80469F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80469F04  7C 08 03 A6 */	mtlr r0
/* 80469F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80469F0C  4E 80 00 20 */	blr 
