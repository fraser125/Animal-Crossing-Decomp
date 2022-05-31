lbl_806362FC:
/* 806362FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636300  7C 08 02 A6 */	mflr r0
/* 80636304  7C 68 1B 78 */	mr r8, r3
/* 80636308  3C C0 80 63 */	lis r6, aSumBlueClk_DwBefore@ha /* 0x806362D4@ha */
/* 8063630C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80636310  3C 80 80 63 */	lis r4, func_80635F94@ha /* 0x80635F94@ha */
/* 80636314  38 E4 5F 94 */	addi r7, r4, func_80635F94@l /* 0x80635F94@l */
/* 80636318  7C A3 2B 78 */	mr r3, r5
/* 8063631C  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80636320  38 C6 62 D4 */	addi r6, r6, aSumBlueClk_DwBefore@l /* 0x806362D4@l */
/* 80636324  38 88 01 34 */	addi r4, r8, 0x134
/* 80636328  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8063632C  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80636330  38 A5 02 10 */	addi r5, r5, 0x210
/* 80636334  7C A8 2A 14 */	add r5, r8, r5
/* 80636338  4B D3 B4 01 */	bl cKF_Si3_draw_R_SV
/* 8063633C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636340  7C 08 03 A6 */	mtlr r0
/* 80636344  38 21 00 10 */	addi r1, r1, 0x10
/* 80636348  4E 80 00 20 */	blr 
