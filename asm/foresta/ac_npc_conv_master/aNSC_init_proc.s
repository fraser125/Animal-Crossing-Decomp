lbl_8054AEE8:
/* 8054AEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AEEC  7C 08 02 A6 */	mflr r0
/* 8054AEF0  3C C0 80 6A */	lis r6, init_proc@ha /* 0x806A4C80@ha */
/* 8054AEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AEF8  54 A0 10 3A */	slwi r0, r5, 2
/* 8054AEFC  38 A6 4C 80 */	addi r5, r6, init_proc@l /* 0x806A4C80@l */
/* 8054AF00  7D 85 00 2E */	lwzx r12, r5, r0
/* 8054AF04  7D 89 03 A6 */	mtctr r12
/* 8054AF08  4E 80 04 21 */	bctrl 
/* 8054AF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AF10  7C 08 03 A6 */	mtlr r0
/* 8054AF14  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AF18  4E 80 00 20 */	blr 