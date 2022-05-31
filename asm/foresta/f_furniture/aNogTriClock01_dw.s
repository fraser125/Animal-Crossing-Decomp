lbl_80634DF0:
/* 80634DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80634DF4  7C 08 02 A6 */	mflr r0
/* 80634DF8  7C 68 1B 78 */	mr r8, r3
/* 80634DFC  3C C0 80 63 */	lis r6, aNogTriClock01_DwBefore@ha /* 0x80634D9C@ha */
/* 80634E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80634E04  3C 80 80 63 */	lis r4, func_80634D94@ha /* 0x80634D94@ha */
/* 80634E08  38 E4 4D 94 */	addi r7, r4, func_80634D94@l /* 0x80634D94@l */
/* 80634E0C  7C A3 2B 78 */	mr r3, r5
/* 80634E10  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80634E14  38 C6 4D 9C */	addi r6, r6, aNogTriClock01_DwBefore@l /* 0x80634D9C@l */
/* 80634E18  38 88 01 34 */	addi r4, r8, 0x134
/* 80634E1C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80634E20  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80634E24  38 A5 02 10 */	addi r5, r5, 0x210
/* 80634E28  7C A8 2A 14 */	add r5, r8, r5
/* 80634E2C  4B D3 C9 0D */	bl cKF_Si3_draw_R_SV
/* 80634E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634E34  7C 08 03 A6 */	mtlr r0
/* 80634E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80634E3C  4E 80 00 20 */	blr 
