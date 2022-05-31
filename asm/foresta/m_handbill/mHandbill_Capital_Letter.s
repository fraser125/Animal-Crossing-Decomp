lbl_803B2070:
/* 803B2070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B2074  7C 08 02 A6 */	mflr r0
/* 803B2078  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B207C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B2080  4B CE 8E 51 */	bl func_8009AED0
/* 803B2084  7C BE 2B 78 */	mr r30, r5
/* 803B2088  7C 9D 23 78 */	mr r29, r4
/* 803B208C  7C 7C 1B 78 */	mr r28, r3
/* 803B2090  7C DF 33 78 */	mr r31, r6
/* 803B2094  7F C4 F3 78 */	mr r4, r30
/* 803B2098  4B FF D7 71 */	bl mFont_CodeSize_idx_get
/* 803B209C  3C 80 81 16 */	lis r4, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B20A0  7C 66 1B 78 */	mr r6, r3
/* 803B20A4  38 64 7D D8 */	addi r3, r4, mHandbill_data@l /* 0x81167DD8@l */
/* 803B20A8  38 00 00 01 */	li r0, 1
/* 803B20AC  90 03 01 94 */	stw r0, 0x194(r3)
/* 803B20B0  7F 83 E3 78 */	mr r3, r28
/* 803B20B4  7F A4 EB 78 */	mr r4, r29
/* 803B20B8  7F C5 F3 78 */	mr r5, r30
/* 803B20BC  7F E7 FB 78 */	mr r7, r31
/* 803B20C0  7C DE 32 14 */	add r6, r30, r6
/* 803B20C4  39 00 00 00 */	li r8, 0
/* 803B20C8  4B FF F9 99 */	bl mHandbill_MoveDataCut
/* 803B20CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803B20D0  4B CE 8E 4D */	bl func_8009AF1C
/* 803B20D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B20D8  7C 08 03 A6 */	mtlr r0
/* 803B20DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803B20E0  4E 80 00 20 */	blr 
