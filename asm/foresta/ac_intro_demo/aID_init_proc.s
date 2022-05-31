lbl_8042B4E0:
/* 8042B4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B4E4  7C 08 02 A6 */	mflr r0
/* 8042B4E8  3C C0 80 68 */	lis r6, init_proc@ha /* 0x80684178@ha */
/* 8042B4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B4F0  54 A0 10 3A */	slwi r0, r5, 2
/* 8042B4F4  38 A6 41 78 */	addi r5, r6, init_proc@l /* 0x80684178@l */
/* 8042B4F8  7D 85 00 2E */	lwzx r12, r5, r0
/* 8042B4FC  7D 89 03 A6 */	mtctr r12
/* 8042B500  4E 80 04 21 */	bctrl 
/* 8042B504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B508  7C 08 03 A6 */	mtlr r0
/* 8042B50C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B510  4E 80 00 20 */	blr 
