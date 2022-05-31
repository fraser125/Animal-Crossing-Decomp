lbl_8051699C:
/* 8051699C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805169A0  7C 08 02 A6 */	mflr r0
/* 805169A4  3C C0 80 6A */	lis r6, think_proc@ha /* 0x8069FDB4@ha */
/* 805169A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805169AC  54 A0 10 3A */	slwi r0, r5, 2
/* 805169B0  38 A6 FD B4 */	addi r5, r6, think_proc@l /* 0x8069FDB4@l */
/* 805169B4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805169B8  7D 89 03 A6 */	mtctr r12
/* 805169BC  4E 80 04 21 */	bctrl 
/* 805169C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805169C4  7C 08 03 A6 */	mtlr r0
/* 805169C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805169CC  4E 80 00 20 */	blr 
