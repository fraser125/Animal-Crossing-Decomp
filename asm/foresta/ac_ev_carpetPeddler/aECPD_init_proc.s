lbl_8051C84C:
/* 8051C84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C850  7C 08 02 A6 */	mflr r0
/* 8051C854  3C C0 80 6A */	lis r6, init_proc@ha /* 0x806A0228@ha */
/* 8051C858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C85C  54 A0 10 3A */	slwi r0, r5, 2
/* 8051C860  38 A6 02 28 */	addi r5, r6, init_proc@l /* 0x806A0228@l */
/* 8051C864  7D 85 00 2E */	lwzx r12, r5, r0
/* 8051C868  7D 89 03 A6 */	mtctr r12
/* 8051C86C  4E 80 04 21 */	bctrl 
/* 8051C870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C874  7C 08 03 A6 */	mtlr r0
/* 8051C878  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C87C  4E 80 00 20 */	blr 
