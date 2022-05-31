lbl_805B36D8:
/* 805B36D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B36DC  7C 08 02 A6 */	mflr r0
/* 805B36E0  3C C0 80 6C */	lis r6, init_table@ha /* 0x806C5AB0@ha */
/* 805B36E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B36E8  54 A0 10 3A */	slwi r0, r5, 2
/* 805B36EC  38 A6 5A B0 */	addi r5, r6, init_table@l /* 0x806C5AB0@l */
/* 805B36F0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805B36F4  7D 89 03 A6 */	mtctr r12
/* 805B36F8  4E 80 04 21 */	bctrl 
/* 805B36FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3700  7C 08 03 A6 */	mtlr r0
/* 805B3704  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3708  4E 80 00 20 */	blr 
