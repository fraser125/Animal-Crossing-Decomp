lbl_803ED604:
/* 803ED604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED608  7C 08 02 A6 */	mflr r0
/* 803ED60C  3C A0 80 66 */	lis r5, proc@ha /* 0x8065DC44@ha */
/* 803ED610  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED614  38 A5 DC 44 */	addi r5, r5, proc@l /* 0x8065DC44@l */
/* 803ED618  88 03 09 B2 */	lbz r0, 0x9b2(r3)
/* 803ED61C  54 00 10 3A */	slwi r0, r0, 2
/* 803ED620  7D 85 00 2E */	lwzx r12, r5, r0
/* 803ED624  7D 89 03 A6 */	mtctr r12
/* 803ED628  4E 80 04 21 */	bctrl 
/* 803ED62C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED630  7C 08 03 A6 */	mtlr r0
/* 803ED634  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED638  4E 80 00 20 */	blr 
