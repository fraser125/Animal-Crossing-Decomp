lbl_80632180:
/* 80632180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80632184  7C 08 02 A6 */	mflr r0
/* 80632188  7C 68 1B 78 */	mr r8, r3
/* 8063218C  3C C0 80 63 */	lis r6, aKonSnowclock_DwBefore@ha /* 0x8063212C@ha */
/* 80632190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80632194  3C 80 80 63 */	lis r4, func_80632058@ha /* 0x80632058@ha */
/* 80632198  38 E4 20 58 */	addi r7, r4, func_80632058@l /* 0x80632058@l */
/* 8063219C  7C A3 2B 78 */	mr r3, r5
/* 806321A0  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 806321A4  38 C6 21 2C */	addi r6, r6, aKonSnowclock_DwBefore@l /* 0x8063212C@l */
/* 806321A8  38 88 01 34 */	addi r4, r8, 0x134
/* 806321AC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806321B0  1C A0 03 00 */	mulli r5, r0, 0x300
/* 806321B4  38 A5 02 10 */	addi r5, r5, 0x210
/* 806321B8  7C A8 2A 14 */	add r5, r8, r5
/* 806321BC  4B D3 F5 7D */	bl cKF_Si3_draw_R_SV
/* 806321C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806321C4  7C 08 03 A6 */	mtlr r0
/* 806321C8  38 21 00 10 */	addi r1, r1, 0x10
/* 806321CC  4E 80 00 20 */	blr 
