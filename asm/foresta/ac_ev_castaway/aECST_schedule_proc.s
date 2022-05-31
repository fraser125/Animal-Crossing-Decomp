lbl_8051CBE8:
/* 8051CBE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051CBEC  7C 08 02 A6 */	mflr r0
/* 8051CBF0  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A02EC@ha */
/* 8051CBF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051CBF8  54 A0 10 3A */	slwi r0, r5, 2
/* 8051CBFC  38 A6 02 EC */	addi r5, r6, sche_proc@l /* 0x806A02EC@l */
/* 8051CC00  7D 85 00 2E */	lwzx r12, r5, r0
/* 8051CC04  7D 89 03 A6 */	mtctr r12
/* 8051CC08  4E 80 04 21 */	bctrl 
/* 8051CC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051CC10  7C 08 03 A6 */	mtlr r0
/* 8051CC14  38 21 00 10 */	addi r1, r1, 0x10
/* 8051CC18  4E 80 00 20 */	blr 
