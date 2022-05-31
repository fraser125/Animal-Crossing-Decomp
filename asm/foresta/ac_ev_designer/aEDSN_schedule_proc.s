lbl_8051DED8:
/* 8051DED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051DEDC  7C 08 02 A6 */	mflr r0
/* 8051DEE0  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A04C0@ha */
/* 8051DEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051DEE8  54 A0 10 3A */	slwi r0, r5, 2
/* 8051DEEC  38 A6 04 C0 */	addi r5, r6, sche_proc@l /* 0x806A04C0@l */
/* 8051DEF0  7D 85 00 2E */	lwzx r12, r5, r0
/* 8051DEF4  7D 89 03 A6 */	mtctr r12
/* 8051DEF8  4E 80 04 21 */	bctrl 
/* 8051DEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051DF00  7C 08 03 A6 */	mtlr r0
/* 8051DF04  38 21 00 10 */	addi r1, r1, 0x10
/* 8051DF08  4E 80 00 20 */	blr 
