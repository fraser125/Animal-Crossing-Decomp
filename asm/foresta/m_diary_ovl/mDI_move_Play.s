lbl_805D03D0:
/* 805D03D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D03D4  7C 08 02 A6 */	mflr r0
/* 805D03D8  3C A0 80 6D */	lis r5, move_proc@ha /* 0x806CB984@ha */
/* 805D03DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D03E0  38 C5 B9 84 */	addi r6, r5, move_proc@l /* 0x806CB984@l */
/* 805D03E4  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805D03E8  80 A7 09 E8 */	lwz r5, 0x9e8(r7)
/* 805D03EC  A8 05 00 1C */	lha r0, 0x1c(r5)
/* 805D03F0  54 00 10 3A */	slwi r0, r0, 2
/* 805D03F4  7D 86 00 2E */	lwzx r12, r6, r0
/* 805D03F8  7D 89 03 A6 */	mtctr r12
/* 805D03FC  4E 80 04 21 */	bctrl 
/* 805D0400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D0404  7C 08 03 A6 */	mtlr r0
/* 805D0408  38 21 00 10 */	addi r1, r1, 0x10
/* 805D040C  4E 80 00 20 */	blr 
