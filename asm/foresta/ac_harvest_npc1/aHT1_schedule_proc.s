lbl_80592068:
/* 80592068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059206C  7C 08 02 A6 */	mflr r0
/* 80592070  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C29BC@ha */
/* 80592074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592078  54 A0 10 3A */	slwi r0, r5, 2
/* 8059207C  38 A6 29 BC */	addi r5, r6, sche_proc@l /* 0x806C29BC@l */
/* 80592080  7D 85 00 2E */	lwzx r12, r5, r0
/* 80592084  7D 89 03 A6 */	mtctr r12
/* 80592088  4E 80 04 21 */	bctrl 
/* 8059208C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592090  7C 08 03 A6 */	mtlr r0
/* 80592094  38 21 00 10 */	addi r1, r1, 0x10
/* 80592098  4E 80 00 20 */	blr 