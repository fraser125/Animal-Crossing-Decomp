lbl_8056A80C:
/* 8056A80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A810  7C 08 02 A6 */	mflr r0
/* 8056A814  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806BE7C8@ha */
/* 8056A818  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A81C  54 A0 10 3A */	slwi r0, r5, 2
/* 8056A820  38 A6 E7 C8 */	addi r5, r6, sche_proc@l /* 0x806BE7C8@l */
/* 8056A824  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056A828  7D 89 03 A6 */	mtctr r12
/* 8056A82C  4E 80 04 21 */	bctrl 
/* 8056A830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A834  7C 08 03 A6 */	mtlr r0
/* 8056A838  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A83C  4E 80 00 20 */	blr 
