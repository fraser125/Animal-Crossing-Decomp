lbl_8050D6C0:
/* 8050D6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050D6C4  7C 08 02 A6 */	mflr r0
/* 8050D6C8  3C C0 80 6A */	lis r6, act_proc@ha /* 0x8069F078@ha */
/* 8050D6CC  54 87 10 3A */	slwi r7, r4, 2
/* 8050D6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050D6D4  38 C6 F0 78 */	addi r6, r6, act_proc@l /* 0x8069F078@l */
/* 8050D6D8  90 83 01 78 */	stw r4, 0x178(r3)
/* 8050D6DC  3C 80 80 6A */	lis r4, init_proc@ha /* 0x8069F060@ha */
/* 8050D6E0  7C 06 38 2E */	lwzx r0, r6, r7
/* 8050D6E4  38 C4 F0 60 */	addi r6, r4, init_proc@l /* 0x8069F060@l */
/* 8050D6E8  7C A4 2B 78 */	mr r4, r5
/* 8050D6EC  90 03 01 74 */	stw r0, 0x174(r3)
/* 8050D6F0  7D 86 38 2E */	lwzx r12, r6, r7
/* 8050D6F4  7D 89 03 A6 */	mtctr r12
/* 8050D6F8  4E 80 04 21 */	bctrl 
/* 8050D6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D700  7C 08 03 A6 */	mtlr r0
/* 8050D704  38 21 00 10 */	addi r1, r1, 0x10
/* 8050D708  4E 80 00 20 */	blr 
