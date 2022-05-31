lbl_8050C074:
/* 8050C074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050C078  7C 08 02 A6 */	mflr r0
/* 8050C07C  3C C0 80 6A */	lis r6, act_proc@ha /* 0x8069EFD0@ha */
/* 8050C080  54 A7 10 3A */	slwi r7, r5, 2
/* 8050C084  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050C088  38 C6 EF D0 */	addi r6, r6, act_proc@l /* 0x8069EFD0@l */
/* 8050C08C  90 A3 01 7C */	stw r5, 0x17c(r3)
/* 8050C090  3C A0 80 6A */	lis r5, init_proc@ha /* 0x8069EFBC@ha */
/* 8050C094  38 A5 EF BC */	addi r5, r5, init_proc@l /* 0x8069EFBC@l */
/* 8050C098  7C 06 38 2E */	lwzx r0, r6, r7
/* 8050C09C  90 03 01 74 */	stw r0, 0x174(r3)
/* 8050C0A0  7D 85 38 2E */	lwzx r12, r5, r7
/* 8050C0A4  7D 89 03 A6 */	mtctr r12
/* 8050C0A8  4E 80 04 21 */	bctrl 
/* 8050C0AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050C0B0  7C 08 03 A6 */	mtlr r0
/* 8050C0B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8050C0B8  4E 80 00 20 */	blr 
