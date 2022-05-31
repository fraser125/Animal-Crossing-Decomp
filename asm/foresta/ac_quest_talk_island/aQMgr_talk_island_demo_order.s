lbl_80490FC8:
/* 80490FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490FCC  7C 08 02 A6 */	mflr r0
/* 80490FD0  3C 80 80 69 */	lis r4, order_proc@ha /* 0x8068B410@ha */
/* 80490FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490FD8  38 84 B4 10 */	addi r4, r4, order_proc@l /* 0x8068B410@l */
/* 80490FDC  A0 03 01 B4 */	lhz r0, 0x1b4(r3)
/* 80490FE0  54 00 10 3A */	slwi r0, r0, 2
/* 80490FE4  7D 84 00 2E */	lwzx r12, r4, r0
/* 80490FE8  7D 89 03 A6 */	mtctr r12
/* 80490FEC  4E 80 04 21 */	bctrl 
/* 80490FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490FF4  7C 08 03 A6 */	mtlr r0
/* 80490FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80490FFC  4E 80 00 20 */	blr 
