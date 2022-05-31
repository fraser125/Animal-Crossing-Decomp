lbl_80639EBC:
/* 80639EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639EC0  7C 08 02 A6 */	mflr r0
/* 80639EC4  7C 68 1B 78 */	mr r8, r3
/* 80639EC8  3C C0 80 64 */	lis r6, aSumOldClk01_dwBefore@ha /* 0x80639E68@ha */
/* 80639ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639ED0  3C 80 80 64 */	lis r4, aSumOldClk01_dwAfter@ha /* 0x80639E60@ha */
/* 80639ED4  38 E4 9E 60 */	addi r7, r4, aSumOldClk01_dwAfter@l /* 0x80639E60@l */
/* 80639ED8  7C A3 2B 78 */	mr r3, r5
/* 80639EDC  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80639EE0  38 C6 9E 68 */	addi r6, r6, aSumOldClk01_dwBefore@l /* 0x80639E68@l */
/* 80639EE4  38 88 01 34 */	addi r4, r8, 0x134
/* 80639EE8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80639EEC  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80639EF0  38 A5 02 10 */	addi r5, r5, 0x210
/* 80639EF4  7C A8 2A 14 */	add r5, r8, r5
/* 80639EF8  4B D3 78 41 */	bl cKF_Si3_draw_R_SV
/* 80639EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639F00  7C 08 03 A6 */	mtlr r0
/* 80639F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80639F08  4E 80 00 20 */	blr 
