lbl_806318C0:
/* 806318C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806318C4  7C 08 02 A6 */	mflr r0
/* 806318C8  7C 68 1B 78 */	mr r8, r3
/* 806318CC  3C C0 80 63 */	lis r6, aKonGrclock_DwBefore@ha /* 0x8063186C@ha */
/* 806318D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806318D4  3C 80 80 63 */	lis r4, func_80631864@ha /* 0x80631864@ha */
/* 806318D8  38 E4 18 64 */	addi r7, r4, func_80631864@l /* 0x80631864@l */
/* 806318DC  7C A3 2B 78 */	mr r3, r5
/* 806318E0  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 806318E4  38 C6 18 6C */	addi r6, r6, aKonGrclock_DwBefore@l /* 0x8063186C@l */
/* 806318E8  38 88 01 34 */	addi r4, r8, 0x134
/* 806318EC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806318F0  1C A0 03 00 */	mulli r5, r0, 0x300
/* 806318F4  38 A5 02 10 */	addi r5, r5, 0x210
/* 806318F8  7C A8 2A 14 */	add r5, r8, r5
/* 806318FC  4B D3 FE 3D */	bl cKF_Si3_draw_R_SV
/* 80631900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631904  7C 08 03 A6 */	mtlr r0
/* 80631908  38 21 00 10 */	addi r1, r1, 0x10
/* 8063190C  4E 80 00 20 */	blr 
