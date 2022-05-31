lbl_80590E04:
/* 80590E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590E08  7C 08 02 A6 */	mflr r0
/* 80590E0C  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C282C@ha */
/* 80590E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590E14  54 A0 10 3A */	slwi r0, r5, 2
/* 80590E18  38 A6 28 2C */	addi r5, r6, think_proc@l /* 0x806C282C@l */
/* 80590E1C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80590E20  7D 89 03 A6 */	mtctr r12
/* 80590E24  4E 80 04 21 */	bctrl 
/* 80590E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590E2C  7C 08 03 A6 */	mtlr r0
/* 80590E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80590E34  4E 80 00 20 */	blr 
