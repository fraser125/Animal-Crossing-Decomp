lbl_803B3980:
/* 803B3980  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B3984  7C 08 02 A6 */	mflr r0
/* 803B3988  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B398C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B3990  4B CE 75 45 */	bl func_8009AED4
/* 803B3994  7C 7D 1B 78 */	mr r29, r3
/* 803B3998  48 00 01 05 */	bl mLd_GetLandName
/* 803B399C  38 80 00 08 */	li r4, 8
/* 803B39A0  7C 7F 1B 78 */	mr r31, r3
/* 803B39A4  48 00 D2 C1 */	bl mMsg_Get_Length_String
/* 803B39A8  7C 60 1B 78 */	mr r0, r3
/* 803B39AC  7F A3 EB 78 */	mr r3, r29
/* 803B39B0  7C 1E 03 78 */	mr r30, r0
/* 803B39B4  7F E4 FB 78 */	mr r4, r31
/* 803B39B8  7F C5 F3 78 */	mr r5, r30
/* 803B39BC  48 00 70 69 */	bl func_803BAA24
/* 803B39C0  7F A3 EB 78 */	mr r3, r29
/* 803B39C4  7F C4 F3 78 */	mr r4, r30
/* 803B39C8  4B FF FF 4D */	bl mLd_AddMuraString
/* 803B39CC  20 03 00 0A */	subfic r0, r3, 0xa
/* 803B39D0  38 A0 00 20 */	li r5, 0x20
/* 803B39D4  7C 9D 1A 14 */	add r4, r29, r3
/* 803B39D8  7C 09 03 A6 */	mtctr r0
/* 803B39DC  2C 03 00 0A */	cmpwi r3, 0xa
/* 803B39E0  40 80 00 10 */	bge lbl_803B39F0
lbl_803B39E4:
/* 803B39E4  98 A4 00 00 */	stb r5, 0(r4)
/* 803B39E8  38 84 00 01 */	addi r4, r4, 1
/* 803B39EC  42 00 FF F8 */	bdnz lbl_803B39E4
lbl_803B39F0:
/* 803B39F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803B39F4  4B CE 75 2D */	bl func_8009AF20
/* 803B39F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B39FC  7C 08 03 A6 */	mtlr r0
/* 803B3A00  38 21 00 20 */	addi r1, r1, 0x20
/* 803B3A04  4E 80 00 20 */	blr 
