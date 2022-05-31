lbl_80525D74:
/* 80525D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525D78  7C 08 02 A6 */	mflr r0
/* 80525D7C  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A0E1C@ha */
/* 80525D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525D84  54 A0 10 3A */	slwi r0, r5, 2
/* 80525D88  38 A6 0E 1C */	addi r5, r6, sche_proc@l /* 0x806A0E1C@l */
/* 80525D8C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80525D90  7D 89 03 A6 */	mtctr r12
/* 80525D94  4E 80 04 21 */	bctrl 
/* 80525D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525D9C  7C 08 03 A6 */	mtlr r0
/* 80525DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80525DA4  4E 80 00 20 */	blr 
