lbl_80637104:
/* 80637104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637108  7C 08 02 A6 */	mflr r0
/* 8063710C  7C 68 1B 78 */	mr r8, r3
/* 80637110  3C C0 80 63 */	lis r6, aSumfruitclk_DwBefore@ha /* 0x806370B0@ha */
/* 80637114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637118  3C 80 80 63 */	lis r4, func_806370A8@ha /* 0x806370A8@ha */
/* 8063711C  38 E4 70 A8 */	addi r7, r4, func_806370A8@l /* 0x806370A8@l */
/* 80637120  7C A3 2B 78 */	mr r3, r5
/* 80637124  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80637128  38 C6 70 B0 */	addi r6, r6, aSumfruitclk_DwBefore@l /* 0x806370B0@l */
/* 8063712C  38 88 01 34 */	addi r4, r8, 0x134
/* 80637130  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80637134  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80637138  38 A5 02 10 */	addi r5, r5, 0x210
/* 8063713C  7C A8 2A 14 */	add r5, r8, r5
/* 80637140  4B D3 A5 F9 */	bl cKF_Si3_draw_R_SV
/* 80637144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637148  7C 08 03 A6 */	mtlr r0
/* 8063714C  38 21 00 10 */	addi r1, r1, 0x10
/* 80637150  4E 80 00 20 */	blr 
