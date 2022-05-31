lbl_803D90C8:
/* 803D90C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D90CC  7C 08 02 A6 */	mflr r0
/* 803D90D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D90D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D90D8  4B CC 1D F9 */	bl func_8009AED0
/* 803D90DC  7C 7C 1B 78 */	mr r28, r3
/* 803D90E0  7C 9D 23 78 */	mr r29, r4
/* 803D90E4  7C BE 2B 78 */	mr r30, r5
/* 803D90E8  4B FF FF AD */	bl mPlib_Get_UseTexRom_p
/* 803D90EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D90F0  7C 7F 1B 78 */	mr r31, r3
/* 803D90F4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D90F8  3C 84 00 02 */	addis r4, r4, 2
/* 803D90FC  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 803D9100  A0 63 10 88 */	lhz r3, 0x1088(r3)
/* 803D9104  48 00 01 81 */	bl mPlib_Check_PlayerClothInAram
/* 803D9108  7C 67 1B 78 */	mr r7, r3
/* 803D910C  7F 83 E3 78 */	mr r3, r28
/* 803D9110  7F E5 FB 78 */	mr r5, r31
/* 803D9114  38 80 00 0E */	li r4, 0xe
/* 803D9118  38 C0 02 00 */	li r6, 0x200
/* 803D911C  4B FF FD F9 */	bl mPlib_Object_Exchange_keep_new
/* 803D9120  3C 80 80 66 */	lis r4, Player_Tex_bank_ID@ha /* 0x8065BC04@ha */
/* 803D9124  7C BE 1A 14 */	add r5, r30, r3
/* 803D9128  57 A0 10 3A */	slwi r0, r29, 2
/* 803D912C  38 64 BC 04 */	addi r3, r4, Player_Tex_bank_ID@l /* 0x8065BC04@l */
/* 803D9130  7C A3 01 2E */	stwx r5, r3, r0
/* 803D9134  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9138  4B CC 1D E5 */	bl func_8009AF1C
/* 803D913C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D9140  7C 08 03 A6 */	mtlr r0
/* 803D9144  38 21 00 20 */	addi r1, r1, 0x20
/* 803D9148  4E 80 00 20 */	blr 
