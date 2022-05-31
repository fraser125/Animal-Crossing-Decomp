lbl_80631118:
/* 80631118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063111C  7C 08 02 A6 */	mflr r0
/* 80631120  7C 68 1B 78 */	mr r8, r3
/* 80631124  3C C0 80 63 */	lis r6, aKonAmeclock_DwBefore@ha /* 0x806310C4@ha */
/* 80631128  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063112C  3C 80 80 63 */	lis r4, func_806310BC@ha /* 0x806310BC@ha */
/* 80631130  38 E4 10 BC */	addi r7, r4, func_806310BC@l /* 0x806310BC@l */
/* 80631134  7C A3 2B 78 */	mr r3, r5
/* 80631138  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 8063113C  38 C6 10 C4 */	addi r6, r6, aKonAmeclock_DwBefore@l /* 0x806310C4@l */
/* 80631140  38 88 01 34 */	addi r4, r8, 0x134
/* 80631144  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80631148  1C A0 03 00 */	mulli r5, r0, 0x300
/* 8063114C  38 A5 02 10 */	addi r5, r5, 0x210
/* 80631150  7C A8 2A 14 */	add r5, r8, r5
/* 80631154  4B D4 05 E5 */	bl cKF_Si3_draw_R_SV
/* 80631158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063115C  7C 08 03 A6 */	mtlr r0
/* 80631160  38 21 00 10 */	addi r1, r1, 0x10
/* 80631164  4E 80 00 20 */	blr 
