lbl_8056A4D8:
/* 8056A4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A4DC  7C 08 02 A6 */	mflr r0
/* 8056A4E0  3C C0 80 6C */	lis r6, act_proc_552@ha /* 0x806BE7A8@ha */
/* 8056A4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A4E8  54 A0 10 3A */	slwi r0, r5, 2
/* 8056A4EC  38 A6 E7 A8 */	addi r5, r6, act_proc_552@l /* 0x806BE7A8@l */
/* 8056A4F0  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056A4F4  7D 89 03 A6 */	mtctr r12
/* 8056A4F8  4E 80 04 21 */	bctrl 
/* 8056A4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A500  7C 08 03 A6 */	mtlr r0
/* 8056A504  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A508  4E 80 00 20 */	blr 
