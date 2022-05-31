lbl_8063C1B4:
/* 8063C1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063C1B8  7C 08 02 A6 */	mflr r0
/* 8063C1BC  7C 68 1B 78 */	mr r8, r3
/* 8063C1C0  3C C0 80 64 */	lis r6, aSumXClk_DwBefore@ha /* 0x8063C18C@ha */
/* 8063C1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063C1C8  3C 80 80 64 */	lis r4, func_8063BE4C@ha /* 0x8063BE4C@ha */
/* 8063C1CC  38 E4 BE 4C */	addi r7, r4, func_8063BE4C@l /* 0x8063BE4C@l */
/* 8063C1D0  7C A3 2B 78 */	mr r3, r5
/* 8063C1D4  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 8063C1D8  38 C6 C1 8C */	addi r6, r6, aSumXClk_DwBefore@l /* 0x8063C18C@l */
/* 8063C1DC  38 88 01 34 */	addi r4, r8, 0x134
/* 8063C1E0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8063C1E4  1C A0 03 00 */	mulli r5, r0, 0x300
/* 8063C1E8  38 A5 02 10 */	addi r5, r5, 0x210
/* 8063C1EC  7C A8 2A 14 */	add r5, r8, r5
/* 8063C1F0  4B D3 55 49 */	bl cKF_Si3_draw_R_SV
/* 8063C1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063C1F8  7C 08 03 A6 */	mtlr r0
/* 8063C1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063C200  4E 80 00 20 */	blr 
