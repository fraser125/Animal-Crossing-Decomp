lbl_80638164:
/* 80638164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638168  7C 08 02 A6 */	mflr r0
/* 8063816C  7C 68 1B 78 */	mr r8, r3
/* 80638170  3C C0 80 64 */	lis r6, aSumHalClk01_DwBefore@ha /* 0x80638138@ha */
/* 80638174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638178  3C 80 80 63 */	lis r4, func_80637EB8@ha /* 0x80637EB8@ha */
/* 8063817C  38 E4 7E B8 */	addi r7, r4, func_80637EB8@l /* 0x80637EB8@l */
/* 80638180  7C A3 2B 78 */	mr r3, r5
/* 80638184  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80638188  38 C6 81 38 */	addi r6, r6, aSumHalClk01_DwBefore@l /* 0x80638138@l */
/* 8063818C  38 88 01 34 */	addi r4, r8, 0x134
/* 80638190  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80638194  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80638198  38 A5 02 10 */	addi r5, r5, 0x210
/* 8063819C  7C A8 2A 14 */	add r5, r8, r5
/* 806381A0  4B D3 95 99 */	bl cKF_Si3_draw_R_SV
/* 806381A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806381A8  7C 08 03 A6 */	mtlr r0
/* 806381AC  38 21 00 10 */	addi r1, r1, 0x10
/* 806381B0  4E 80 00 20 */	blr 
