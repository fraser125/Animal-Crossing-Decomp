lbl_80516B8C:
/* 80516B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516B90  7C 08 02 A6 */	mflr r0
/* 80516B94  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x8069FDBC@ha */
/* 80516B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516B9C  54 A0 10 3A */	slwi r0, r5, 2
/* 80516BA0  38 A6 FD BC */	addi r5, r6, sche_proc@l /* 0x8069FDBC@l */
/* 80516BA4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80516BA8  7D 89 03 A6 */	mtctr r12
/* 80516BAC  4E 80 04 21 */	bctrl 
/* 80516BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516BB4  7C 08 03 A6 */	mtlr r0
/* 80516BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80516BBC  4E 80 00 20 */	blr 
