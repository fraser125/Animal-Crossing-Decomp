lbl_806325BC:
/* 806325BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806325C0  7C 08 02 A6 */	mflr r0
/* 806325C4  7C 68 1B 78 */	mr r8, r3
/* 806325C8  3C C0 80 63 */	lis r6, aKonWaclock_DwBefore@ha /* 0x80632590@ha */
/* 806325CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806325D0  3C 80 80 63 */	lis r4, func_80632588@ha /* 0x80632588@ha */
/* 806325D4  38 E4 25 88 */	addi r7, r4, func_80632588@l /* 0x80632588@l */
/* 806325D8  7C A3 2B 78 */	mr r3, r5
/* 806325DC  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 806325E0  38 C6 25 90 */	addi r6, r6, aKonWaclock_DwBefore@l /* 0x80632590@l */
/* 806325E4  38 88 01 34 */	addi r4, r8, 0x134
/* 806325E8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806325EC  1C A0 03 00 */	mulli r5, r0, 0x300
/* 806325F0  38 A5 02 10 */	addi r5, r5, 0x210
/* 806325F4  7C A8 2A 14 */	add r5, r8, r5
/* 806325F8  4B D3 F1 41 */	bl cKF_Si3_draw_R_SV
/* 806325FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80632600  7C 08 03 A6 */	mtlr r0
/* 80632604  38 21 00 10 */	addi r1, r1, 0x10
/* 80632608  4E 80 00 20 */	blr 
