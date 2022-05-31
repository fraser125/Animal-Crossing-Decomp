lbl_8053FE4C:
/* 8053FE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FE50  7C 08 02 A6 */	mflr r0
/* 8053FE54  3C C0 80 6A */	lis r6, act_proc_2153@ha /* 0x806A3BDC@ha */
/* 8053FE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FE5C  54 A0 10 3A */	slwi r0, r5, 2
/* 8053FE60  38 A6 3B DC */	addi r5, r6, act_proc_2153@l /* 0x806A3BDC@l */
/* 8053FE64  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053FE68  7D 89 03 A6 */	mtctr r12
/* 8053FE6C  4E 80 04 21 */	bctrl 
/* 8053FE70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FE74  7C 08 03 A6 */	mtlr r0
/* 8053FE78  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FE7C  4E 80 00 20 */	blr 
