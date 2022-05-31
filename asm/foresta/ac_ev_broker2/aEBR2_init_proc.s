lbl_8051BB30:
/* 8051BB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BB34  7C 08 02 A6 */	mflr r0
/* 8051BB38  3C A0 80 6A */	lis r5, init_proc@ha /* 0x806A0144@ha */
/* 8051BB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BB40  54 80 10 3A */	slwi r0, r4, 2
/* 8051BB44  38 85 01 44 */	addi r4, r5, init_proc@l /* 0x806A0144@l */
/* 8051BB48  7D 84 00 2E */	lwzx r12, r4, r0
/* 8051BB4C  7D 89 03 A6 */	mtctr r12
/* 8051BB50  4E 80 04 21 */	bctrl 
/* 8051BB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BB58  7C 08 03 A6 */	mtlr r0
/* 8051BB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BB60  4E 80 00 20 */	blr 
