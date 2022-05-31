lbl_80470D14:
/* 80470D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470D18  7C 08 02 A6 */	mflr r0
/* 80470D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470D24  7C 7F 1B 78 */	mr r31, r3
/* 80470D28  7C 83 23 78 */	mr r3, r4
/* 80470D2C  4B FF FF 69 */	bl aMR_GetWeight
/* 80470D30  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470D34  80 BF 04 C8 */	lwz r5, 0x4c8(r31)
/* 80470D38  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80470D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470D40  80 04 00 08 */	lwz r0, 8(r4)
/* 80470D44  7C A5 1A 14 */	add r5, r5, r3
/* 80470D48  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 80470D4C  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 80470D50  7C 05 00 10 */	subfc r0, r5, r0
/* 80470D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470D58  7C 64 19 14 */	adde r3, r4, r3
/* 80470D5C  7C 08 03 A6 */	mtlr r0
/* 80470D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80470D64  4E 80 00 20 */	blr 
