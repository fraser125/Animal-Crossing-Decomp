lbl_8050B19C:
/* 8050B19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B1A0  7C 08 02 A6 */	mflr r0
/* 8050B1A4  38 60 00 64 */	li r3, 0x64
/* 8050B1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B1AC  4B FF DC 35 */	bl mRF_GetRandom
/* 8050B1B0  38 80 00 0F */	li r4, 0xf
/* 8050B1B4  7C 80 1A 78 */	xor r0, r4, r3
/* 8050B1B8  7C 03 0E 70 */	srawi r3, r0, 1
/* 8050B1BC  7C 00 20 38 */	and r0, r0, r4
/* 8050B1C0  7C 00 18 50 */	subf r0, r0, r3
/* 8050B1C4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8050B1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B1CC  7C 08 03 A6 */	mtlr r0
/* 8050B1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B1D4  4E 80 00 20 */	blr 
