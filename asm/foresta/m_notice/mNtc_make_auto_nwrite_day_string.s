lbl_803CA7FC:
/* 803CA7FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CA800  7C 08 02 A6 */	mflr r0
/* 803CA804  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CA808  39 61 00 30 */	addi r11, r1, 0x30
/* 803CA80C  4B CD 06 C9 */	bl func_8009AED4
/* 803CA810  7C 7F 1B 78 */	mr r31, r3
/* 803CA814  7C BD 2B 78 */	mr r29, r5
/* 803CA818  38 61 00 08 */	addi r3, r1, 8
/* 803CA81C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803CA820  48 02 46 09 */	bl mString_Load_MonthStringFromRom
/* 803CA824  7C 60 1B 78 */	mr r0, r3
/* 803CA828  7F E3 FB 78 */	mr r3, r31
/* 803CA82C  7C 1E 03 78 */	mr r30, r0
/* 803CA830  38 81 00 08 */	addi r4, r1, 8
/* 803CA834  7F C5 F3 78 */	mr r5, r30
/* 803CA838  4B FF 01 ED */	bl func_803BAA24
/* 803CA83C  7F FF F2 14 */	add r31, r31, r30
/* 803CA840  38 00 00 20 */	li r0, 0x20
/* 803CA844  98 1F 00 00 */	stb r0, 0(r31)
/* 803CA848  38 61 00 08 */	addi r3, r1, 8
/* 803CA84C  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 803CA850  48 02 46 91 */	bl mString_Load_DayStringFromRom
/* 803CA854  7C 60 1B 78 */	mr r0, r3
/* 803CA858  38 7F 00 01 */	addi r3, r31, 1
/* 803CA85C  7C 1F 03 78 */	mr r31, r0
/* 803CA860  38 81 00 08 */	addi r4, r1, 8
/* 803CA864  7F E5 FB 78 */	mr r5, r31
/* 803CA868  4B FF 01 BD */	bl func_803BAA24
/* 803CA86C  38 7F 00 01 */	addi r3, r31, 1
/* 803CA870  39 61 00 30 */	addi r11, r1, 0x30
/* 803CA874  7C 7E 1A 14 */	add r3, r30, r3
/* 803CA878  4B CD 06 A9 */	bl func_8009AF20
/* 803CA87C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CA880  7C 08 03 A6 */	mtlr r0
/* 803CA884  38 21 00 30 */	addi r1, r1, 0x30
/* 803CA888  4E 80 00 20 */	blr 
