lbl_80635464:
/* 80635464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635468  7C 08 02 A6 */	mflr r0
/* 8063546C  7C 68 1B 78 */	mr r8, r3
/* 80635470  7C A3 2B 78 */	mr r3, r5
/* 80635474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635478  38 88 01 34 */	addi r4, r8, 0x134
/* 8063547C  38 C0 00 00 */	li r6, 0
/* 80635480  38 E0 00 00 */	li r7, 0
/* 80635484  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80635488  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8063548C  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80635490  38 A5 02 10 */	addi r5, r5, 0x210
/* 80635494  7C A8 2A 14 */	add r5, r8, r5
/* 80635498  4B D3 C2 A1 */	bl cKF_Si3_draw_R_SV
/* 8063549C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806354A0  7C 08 03 A6 */	mtlr r0
/* 806354A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806354A8  4E 80 00 20 */	blr 
