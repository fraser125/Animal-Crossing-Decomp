lbl_80528CAC:
/* 80528CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528CB0  7C 08 02 A6 */	mflr r0
/* 80528CB4  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A1030@ha */
/* 80528CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528CBC  54 A0 10 3A */	slwi r0, r5, 2
/* 80528CC0  38 A6 10 30 */	addi r5, r6, think_proc@l /* 0x806A1030@l */
/* 80528CC4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80528CC8  7D 89 03 A6 */	mtctr r12
/* 80528CCC  4E 80 04 21 */	bctrl 
/* 80528CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528CD4  7C 08 03 A6 */	mtlr r0
/* 80528CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80528CDC  4E 80 00 20 */	blr 
