lbl_8059DD74:
/* 8059DD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059DD78  7C 08 02 A6 */	mflr r0
/* 8059DD7C  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C351C@ha */
/* 8059DD80  54 87 10 3A */	slwi r7, r4, 2
/* 8059DD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059DD88  38 C6 35 1C */	addi r6, r6, act_proc@l /* 0x806C351C@l */
/* 8059DD8C  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 8059DD90  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3500@ha */
/* 8059DD94  7C 06 38 2E */	lwzx r0, r6, r7
/* 8059DD98  38 C4 35 00 */	addi r6, r4, init_proc@l /* 0x806C3500@l */
/* 8059DD9C  7C A4 2B 78 */	mr r4, r5
/* 8059DDA0  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059DDA4  7D 86 38 2E */	lwzx r12, r6, r7
/* 8059DDA8  7D 89 03 A6 */	mtctr r12
/* 8059DDAC  4E 80 04 21 */	bctrl 
/* 8059DDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DDB4  7C 08 03 A6 */	mtlr r0
/* 8059DDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DDBC  4E 80 00 20 */	blr 
