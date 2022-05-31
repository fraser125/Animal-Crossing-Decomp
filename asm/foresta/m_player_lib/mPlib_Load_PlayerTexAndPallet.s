lbl_803D97CC:
/* 803D97CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D97D0  7C 08 02 A6 */	mflr r0
/* 803D97D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D97D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803D97DC  4B CC 16 F5 */	bl func_8009AED0
/* 803D97E0  7C BE 2B 79 */	or. r30, r5, r5
/* 803D97E4  7C 7C 1B 78 */	mr r28, r3
/* 803D97E8  7C 9D 23 78 */	mr r29, r4
/* 803D97EC  41 80 00 A8 */	blt lbl_803D9894
/* 803D97F0  2C 1E 01 08 */	cmpwi r30, 0x108
/* 803D97F4  40 80 00 A0 */	bge lbl_803D9894
/* 803D97F8  28 1C 00 00 */	cmplwi r28, 0
/* 803D97FC  41 82 00 98 */	beq lbl_803D9894
/* 803D9800  28 1D 00 00 */	cmplwi r29, 0
/* 803D9804  41 82 00 90 */	beq lbl_803D9894
/* 803D9808  7F C3 F3 78 */	mr r3, r30
/* 803D980C  4B FF F8 0D */	bl mPlib_Get_PlayerTexRom_p
/* 803D9810  7C 60 1B 78 */	mr r0, r3
/* 803D9814  7F C3 F3 78 */	mr r3, r30
/* 803D9818  7C 1F 03 78 */	mr r31, r0
/* 803D981C  4B FF F9 31 */	bl mPlib_Get_PlayerPalletRom_p
/* 803D9820  7C 60 1B 78 */	mr r0, r3
/* 803D9824  7F C3 F3 78 */	mr r3, r30
/* 803D9828  7C 1E 03 78 */	mr r30, r0
/* 803D982C  4B FF FA 59 */	bl mPlib_Check_PlayerClothInAram
/* 803D9830  2C 03 00 00 */	cmpwi r3, 0
/* 803D9834  41 82 00 28 */	beq lbl_803D985C
/* 803D9838  7F E3 FB 78 */	mr r3, r31
/* 803D983C  7F 84 E3 78 */	mr r4, r28
/* 803D9840  38 A0 02 00 */	li r5, 0x200
/* 803D9844  4B C2 D4 31 */	bl _JW_GetResourceAram
/* 803D9848  7F C3 F3 78 */	mr r3, r30
/* 803D984C  7F A4 EB 78 */	mr r4, r29
/* 803D9850  38 A0 00 20 */	li r5, 0x20
/* 803D9854  4B C2 D4 21 */	bl _JW_GetResourceAram
/* 803D9858  48 00 00 24 */	b lbl_803D987C
lbl_803D985C:
/* 803D985C  7F E3 FB 78 */	mr r3, r31
/* 803D9860  7F 84 E3 78 */	mr r4, r28
/* 803D9864  38 A0 02 00 */	li r5, 0x200
/* 803D9868  4B C8 37 B5 */	bl func_8005D01C
/* 803D986C  7F C3 F3 78 */	mr r3, r30
/* 803D9870  7F A4 EB 78 */	mr r4, r29
/* 803D9874  38 A0 00 20 */	li r5, 0x20
/* 803D9878  4B C8 37 A5 */	bl func_8005D01C
lbl_803D987C:
/* 803D987C  7F 83 E3 78 */	mr r3, r28
/* 803D9880  38 80 02 00 */	li r4, 0x200
/* 803D9884  4B CA 03 99 */	bl DCStoreRangeNoSync
/* 803D9888  7F A3 EB 78 */	mr r3, r29
/* 803D988C  38 80 00 20 */	li r4, 0x20
/* 803D9890  4B CA 03 8D */	bl DCStoreRangeNoSync
lbl_803D9894:
/* 803D9894  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9898  4B CC 16 85 */	bl func_8009AF1C
/* 803D989C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D98A0  7C 08 03 A6 */	mtlr r0
/* 803D98A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803D98A8  4E 80 00 20 */	blr 
