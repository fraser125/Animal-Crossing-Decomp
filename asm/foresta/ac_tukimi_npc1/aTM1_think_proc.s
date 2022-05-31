lbl_8058E15C:
/* 8058E15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E160  7C 08 02 A6 */	mflr r0
/* 8058E164  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C24F4@ha */
/* 8058E168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E16C  54 A0 10 3A */	slwi r0, r5, 2
/* 8058E170  38 A6 24 F4 */	addi r5, r6, think_proc@l /* 0x806C24F4@l */
/* 8058E174  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058E178  7D 89 03 A6 */	mtctr r12
/* 8058E17C  4E 80 04 21 */	bctrl 
/* 8058E180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E184  7C 08 03 A6 */	mtlr r0
/* 8058E188  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E18C  4E 80 00 20 */	blr 
