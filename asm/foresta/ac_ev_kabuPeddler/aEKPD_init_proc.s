lbl_80521A58:
/* 80521A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521A5C  7C 08 02 A6 */	mflr r0
/* 80521A60  3C C0 80 6A */	lis r6, init_proc@ha /* 0x806A0994@ha */
/* 80521A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521A68  54 A0 10 3A */	slwi r0, r5, 2
/* 80521A6C  38 A6 09 94 */	addi r5, r6, init_proc@l /* 0x806A0994@l */
/* 80521A70  7D 85 00 2E */	lwzx r12, r5, r0
/* 80521A74  7D 89 03 A6 */	mtctr r12
/* 80521A78  4E 80 04 21 */	bctrl 
/* 80521A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521A80  7C 08 03 A6 */	mtlr r0
/* 80521A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80521A88  4E 80 00 20 */	blr 
