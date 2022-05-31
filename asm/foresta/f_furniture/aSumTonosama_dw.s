lbl_8063B290:
/* 8063B290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B294  7C 08 02 A6 */	mflr r0
/* 8063B298  7C 68 1B 78 */	mr r8, r3
/* 8063B29C  7C A3 2B 78 */	mr r3, r5
/* 8063B2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B2A4  38 88 01 34 */	addi r4, r8, 0x134
/* 8063B2A8  38 C0 00 00 */	li r6, 0
/* 8063B2AC  38 E0 00 00 */	li r7, 0
/* 8063B2B0  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 8063B2B4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8063B2B8  1C A0 03 00 */	mulli r5, r0, 0x300
/* 8063B2BC  38 A5 02 10 */	addi r5, r5, 0x210
/* 8063B2C0  7C A8 2A 14 */	add r5, r8, r5
/* 8063B2C4  4B D3 64 75 */	bl cKF_Si3_draw_R_SV
/* 8063B2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B2CC  7C 08 03 A6 */	mtlr r0
/* 8063B2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B2D4  4E 80 00 20 */	blr 
