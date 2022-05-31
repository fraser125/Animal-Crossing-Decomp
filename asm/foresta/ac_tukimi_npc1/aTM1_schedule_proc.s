lbl_8058E38C:
/* 8058E38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E390  7C 08 02 A6 */	mflr r0
/* 8058E394  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C2544@ha */
/* 8058E398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E39C  54 A0 10 3A */	slwi r0, r5, 2
/* 8058E3A0  38 A6 25 44 */	addi r5, r6, sche_proc@l /* 0x806C2544@l */
/* 8058E3A4  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058E3A8  7D 89 03 A6 */	mtctr r12
/* 8058E3AC  4E 80 04 21 */	bctrl 
/* 8058E3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E3B4  7C 08 03 A6 */	mtlr r0
/* 8058E3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E3BC  4E 80 00 20 */	blr 
