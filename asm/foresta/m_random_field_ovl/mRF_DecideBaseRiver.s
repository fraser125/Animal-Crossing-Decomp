lbl_80509ABC:
/* 80509ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80509AC0  7C 08 02 A6 */	mflr r0
/* 80509AC4  3C A0 81 1D */	lis r5, data_811D3208@ha /* 0x811D3208@ha */
/* 80509AC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80509ACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80509AD0  7C 9F 23 78 */	mr r31, r4
/* 80509AD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80509AD8  7C 7E 1B 78 */	mr r30, r3
/* 80509ADC  38 65 32 08 */	addi r3, r5, data_811D3208@l /* 0x811D3208@l */
/* 80509AE0  4B FF F4 A5 */	bl mRF_CpyBlockData
/* 80509AE4  3C 80 81 1D */	lis r4, data_811D3208@ha /* 0x811D3208@ha */
/* 80509AE8  7F C3 F3 78 */	mr r3, r30
/* 80509AEC  38 84 32 08 */	addi r4, r4, data_811D3208@l /* 0x811D3208@l */
/* 80509AF0  4B FF F4 95 */	bl mRF_CpyBlockData
/* 80509AF4  3C 80 81 1D */	lis r4, data_811D3208@ha /* 0x811D3208@ha */
/* 80509AF8  7F E3 FB 78 */	mr r3, r31
/* 80509AFC  38 84 32 08 */	addi r4, r4, data_811D3208@l /* 0x811D3208@l */
/* 80509B00  4B FF F4 85 */	bl mRF_CpyBlockData
/* 80509B04  7F C3 F3 78 */	mr r3, r30
/* 80509B08  7F E4 FB 78 */	mr r4, r31
/* 80509B0C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80509B10  38 C1 00 08 */	addi r6, r1, 8
/* 80509B14  4B FF FD 01 */	bl mRF_TraceRiverPart1
/* 80509B18  2C 03 00 00 */	cmpwi r3, 0
/* 80509B1C  40 82 00 0C */	bne lbl_80509B28
/* 80509B20  38 60 00 00 */	li r3, 0
/* 80509B24  48 00 00 50 */	b lbl_80509B74
lbl_80509B28:
/* 80509B28  3C 60 81 1D */	lis r3, challenge_flag@ha /* 0x811D3250@ha */
/* 80509B2C  38 80 00 38 */	li r4, 0x38
/* 80509B30  38 63 32 50 */	addi r3, r3, challenge_flag@l /* 0x811D3250@l */
/* 80509B34  4B FF FE B5 */	bl mRF_InitFlag
/* 80509B38  3C 60 81 1D */	lis r3, challenge_flag@ha /* 0x811D3250@ha */
/* 80509B3C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80509B40  38 E3 32 50 */	addi r7, r3, challenge_flag@l /* 0x811D3250@l */
/* 80509B44  80 C1 00 08 */	lwz r6, 8(r1)
/* 80509B48  7F C3 F3 78 */	mr r3, r30
/* 80509B4C  7F E4 FB 78 */	mr r4, r31
/* 80509B50  4B FF FA 75 */	bl mRF_TraceRiverPart2
/* 80509B54  2C 03 00 00 */	cmpwi r3, 0
/* 80509B58  41 82 00 18 */	beq lbl_80509B70
/* 80509B5C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80509B60  7F C3 F3 78 */	mr r3, r30
/* 80509B64  80 A1 00 08 */	lwz r5, 8(r1)
/* 80509B68  4B FF FE A1 */	bl mRF_LastCheckRiver
/* 80509B6C  48 00 00 08 */	b lbl_80509B74
lbl_80509B70:
/* 80509B70  38 60 00 00 */	li r3, 0
lbl_80509B74:
/* 80509B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80509B78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80509B7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80509B80  7C 08 03 A6 */	mtlr r0
/* 80509B84  38 21 00 20 */	addi r1, r1, 0x20
/* 80509B88  4E 80 00 20 */	blr 
