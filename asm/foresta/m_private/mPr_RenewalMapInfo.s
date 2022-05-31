lbl_803E2650:
/* 803E2650  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2654  7C 08 02 A6 */	mflr r0
/* 803E2658  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E265C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2660  4B CB 88 71 */	bl func_8009AED0
/* 803E2664  7C 7C 1B 78 */	mr r28, r3
/* 803E2668  7C 9D 23 78 */	mr r29, r4
/* 803E266C  4B FF FE 39 */	bl mPr_GetLandMapIdx
/* 803E2670  7C 7F 1B 78 */	mr r31, r3
/* 803E2674  2C 1F FF FF */	cmpwi r31, -1
/* 803E2678  41 82 00 48 */	beq lbl_803E26C0
/* 803E267C  1C 1F 00 0A */	mulli r0, r31, 0xa
/* 803E2680  38 61 00 08 */	addi r3, r1, 8
/* 803E2684  7F DC 02 14 */	add r30, r28, r0
/* 803E2688  7F C4 F3 78 */	mr r4, r30
/* 803E268C  4B FF FD 25 */	bl mPr_CopyMapInfo
/* 803E2690  7F C3 F3 78 */	mr r3, r30
/* 803E2694  7C 9F E8 50 */	subf r4, r31, r29
/* 803E2698  4B FF FE C5 */	bl mPr_PushMapInfo
/* 803E269C  7F 83 E3 78 */	mr r3, r28
/* 803E26A0  7F A4 EB 78 */	mr r4, r29
/* 803E26A4  4B FF FD 85 */	bl mPr_GetMapFreeIdx
/* 803E26A8  2C 03 FF FF */	cmpwi r3, -1
/* 803E26AC  41 82 00 14 */	beq lbl_803E26C0
/* 803E26B0  1C 03 00 0A */	mulli r0, r3, 0xa
/* 803E26B4  38 81 00 08 */	addi r4, r1, 8
/* 803E26B8  7C 7C 02 14 */	add r3, r28, r0
/* 803E26BC  4B FF FC F5 */	bl mPr_CopyMapInfo
lbl_803E26C0:
/* 803E26C0  39 61 00 30 */	addi r11, r1, 0x30
/* 803E26C4  4B CB 88 59 */	bl func_8009AF1C
/* 803E26C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E26CC  7C 08 03 A6 */	mtlr r0
/* 803E26D0  38 21 00 30 */	addi r1, r1, 0x30
/* 803E26D4  4E 80 00 20 */	blr 
