lbl_80631260:
/* 80631260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631264  7C 08 02 A6 */	mflr r0
/* 80631268  7C 68 1B 78 */	mr r8, r3
/* 8063126C  3C C0 80 63 */	lis r6, aKonAtqclock_DwBefore@ha /* 0x8063120C@ha */
/* 80631270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631274  3C 80 80 63 */	lis r4, func_80631204@ha /* 0x80631204@ha */
/* 80631278  38 E4 12 04 */	addi r7, r4, func_80631204@l /* 0x80631204@l */
/* 8063127C  7C A3 2B 78 */	mr r3, r5
/* 80631280  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80631284  38 C6 12 0C */	addi r6, r6, aKonAtqclock_DwBefore@l /* 0x8063120C@l */
/* 80631288  38 88 01 34 */	addi r4, r8, 0x134
/* 8063128C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80631290  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80631294  38 A5 02 10 */	addi r5, r5, 0x210
/* 80631298  7C A8 2A 14 */	add r5, r8, r5
/* 8063129C  4B D4 04 9D */	bl cKF_Si3_draw_R_SV
/* 806312A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806312A4  7C 08 03 A6 */	mtlr r0
/* 806312A8  38 21 00 10 */	addi r1, r1, 0x10
/* 806312AC  4E 80 00 20 */	blr 
