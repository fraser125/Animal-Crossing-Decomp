lbl_803B1FFC:
/* 803B1FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B2000  7C 08 02 A6 */	mflr r0
/* 803B2004  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B2008  39 61 00 20 */	addi r11, r1, 0x20
/* 803B200C  4B CE 8E C5 */	bl func_8009AED0
/* 803B2010  7C BE 2B 78 */	mr r30, r5
/* 803B2014  7C 9D 23 78 */	mr r29, r4
/* 803B2018  7C 7C 1B 78 */	mr r28, r3
/* 803B201C  7C DF 33 78 */	mr r31, r6
/* 803B2020  7F C4 F3 78 */	mr r4, r30
/* 803B2024  4B FF D7 E5 */	bl mFont_CodeSize_idx_get
/* 803B2028  3C 80 81 16 */	lis r4, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B202C  7C 66 1B 78 */	mr r6, r3
/* 803B2030  38 64 7D D8 */	addi r3, r4, mHandbill_data@l /* 0x81167DD8@l */
/* 803B2034  38 00 00 00 */	li r0, 0
/* 803B2038  90 03 01 90 */	stw r0, 0x190(r3)
/* 803B203C  7F 83 E3 78 */	mr r3, r28
/* 803B2040  7F A4 EB 78 */	mr r4, r29
/* 803B2044  7F C5 F3 78 */	mr r5, r30
/* 803B2048  7F E7 FB 78 */	mr r7, r31
/* 803B204C  7C DE 32 14 */	add r6, r30, r6
/* 803B2050  39 00 00 00 */	li r8, 0
/* 803B2054  4B FF FA 0D */	bl mHandbill_MoveDataCut
/* 803B2058  39 61 00 20 */	addi r11, r1, 0x20
/* 803B205C  4B CE 8E C1 */	bl func_8009AF1C
/* 803B2060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B2064  7C 08 03 A6 */	mtlr r0
/* 803B2068  38 21 00 20 */	addi r1, r1, 0x20
/* 803B206C  4E 80 00 20 */	blr 
