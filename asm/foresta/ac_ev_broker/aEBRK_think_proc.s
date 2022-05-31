lbl_8051A488:
/* 8051A488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A48C  7C 08 02 A6 */	mflr r0
/* 8051A490  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A009C@ha */
/* 8051A494  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A498  54 A0 10 3A */	slwi r0, r5, 2
/* 8051A49C  38 A6 00 9C */	addi r5, r6, think_proc@l /* 0x806A009C@l */
/* 8051A4A0  7D 85 00 2E */	lwzx r12, r5, r0
/* 8051A4A4  7D 89 03 A6 */	mtctr r12
/* 8051A4A8  4E 80 04 21 */	bctrl 
/* 8051A4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A4B0  7C 08 03 A6 */	mtlr r0
/* 8051A4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A4B8  4E 80 00 20 */	blr 
