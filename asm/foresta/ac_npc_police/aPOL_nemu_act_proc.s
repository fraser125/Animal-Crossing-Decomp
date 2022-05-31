lbl_8056A50C:
/* 8056A50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A510  7C 08 02 A6 */	mflr r0
/* 8056A514  3C C0 80 6C */	lis r6, act_proc_557@ha /* 0x806BE7B4@ha */
/* 8056A518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A51C  54 A0 10 3A */	slwi r0, r5, 2
/* 8056A520  38 A6 E7 B4 */	addi r5, r6, act_proc_557@l /* 0x806BE7B4@l */
/* 8056A524  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056A528  7D 89 03 A6 */	mtctr r12
/* 8056A52C  4E 80 04 21 */	bctrl 
/* 8056A530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A534  7C 08 03 A6 */	mtlr r0
/* 8056A538  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A53C  4E 80 00 20 */	blr 
