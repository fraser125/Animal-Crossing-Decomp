lbl_8063F560:
/* 8063F560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F564  7C 08 02 A6 */	mflr r0
/* 8063F568  7C 68 1B 78 */	mr r8, r3
/* 8063F56C  3C C0 80 64 */	lis r6, fYTW_DwBefore@ha /* 0x8063F50C@ha */
/* 8063F570  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F574  3C 80 80 64 */	lis r4, func_8063F504@ha /* 0x8063F504@ha */
/* 8063F578  38 E4 F5 04 */	addi r7, r4, func_8063F504@l /* 0x8063F504@l */
/* 8063F57C  7C A3 2B 78 */	mr r3, r5
/* 8063F580  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 8063F584  38 C6 F5 0C */	addi r6, r6, fYTW_DwBefore@l /* 0x8063F50C@l */
/* 8063F588  38 88 01 34 */	addi r4, r8, 0x134
/* 8063F58C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8063F590  1C A0 03 00 */	mulli r5, r0, 0x300
/* 8063F594  38 A5 02 10 */	addi r5, r5, 0x210
/* 8063F598  7C A8 2A 14 */	add r5, r8, r5
/* 8063F59C  4B D3 21 9D */	bl cKF_Si3_draw_R_SV
/* 8063F5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F5A4  7C 08 03 A6 */	mtlr r0
/* 8063F5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F5AC  4E 80 00 20 */	blr 
