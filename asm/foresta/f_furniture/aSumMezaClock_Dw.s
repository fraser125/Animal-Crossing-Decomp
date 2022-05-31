lbl_80639A34:
/* 80639A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639A38  7C 08 02 A6 */	mflr r0
/* 80639A3C  7C 68 1B 78 */	mr r8, r3
/* 80639A40  3C C0 80 64 */	lis r6, aSumMezaClock_DwBefore@ha /* 0x806399E0@ha */
/* 80639A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639A48  3C 80 80 64 */	lis r4, func_8063990C@ha /* 0x8063990C@ha */
/* 80639A4C  38 E4 99 0C */	addi r7, r4, func_8063990C@l /* 0x8063990C@l */
/* 80639A50  7C A3 2B 78 */	mr r3, r5
/* 80639A54  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80639A58  38 C6 99 E0 */	addi r6, r6, aSumMezaClock_DwBefore@l /* 0x806399E0@l */
/* 80639A5C  38 88 01 34 */	addi r4, r8, 0x134
/* 80639A60  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80639A64  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80639A68  38 A5 02 10 */	addi r5, r5, 0x210
/* 80639A6C  7C A8 2A 14 */	add r5, r8, r5
/* 80639A70  4B D3 7C C9 */	bl cKF_Si3_draw_R_SV
/* 80639A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639A78  7C 08 03 A6 */	mtlr r0
/* 80639A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80639A80  4E 80 00 20 */	blr 
