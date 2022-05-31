lbl_80528B0C:
/* 80528B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528B10  7C 08 02 A6 */	mflr r0
/* 80528B14  3C C0 80 6A */	lis r6, act_proc@ha /* 0x806A101C@ha */
/* 80528B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528B1C  54 A0 10 3A */	slwi r0, r5, 2
/* 80528B20  38 A6 10 1C */	addi r5, r6, act_proc@l /* 0x806A101C@l */
/* 80528B24  7D 85 00 2E */	lwzx r12, r5, r0
/* 80528B28  7D 89 03 A6 */	mtctr r12
/* 80528B2C  4E 80 04 21 */	bctrl 
/* 80528B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528B34  7C 08 03 A6 */	mtlr r0
/* 80528B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80528B3C  4E 80 00 20 */	blr 
