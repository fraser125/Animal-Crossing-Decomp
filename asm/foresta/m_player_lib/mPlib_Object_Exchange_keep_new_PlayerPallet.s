lbl_803D9200:
/* 803D9200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D9204  7C 08 02 A6 */	mflr r0
/* 803D9208  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D920C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9210  4B CC 1C C1 */	bl func_8009AED0
/* 803D9214  7C 7C 1B 78 */	mr r28, r3
/* 803D9218  7C 9D 23 78 */	mr r29, r4
/* 803D921C  7C BE 2B 78 */	mr r30, r5
/* 803D9220  4B FF FF AD */	bl mPlib_Get_UsePalletRom_p
/* 803D9224  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D9228  7C 7F 1B 78 */	mr r31, r3
/* 803D922C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D9230  3C 84 00 02 */	addis r4, r4, 2
/* 803D9234  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 803D9238  A0 63 10 88 */	lhz r3, 0x1088(r3)
/* 803D923C  48 00 00 49 */	bl mPlib_Check_PlayerClothInAram
/* 803D9240  7C 67 1B 78 */	mr r7, r3
/* 803D9244  7F 83 E3 78 */	mr r3, r28
/* 803D9248  7F E5 FB 78 */	mr r5, r31
/* 803D924C  38 80 00 0F */	li r4, 0xf
/* 803D9250  38 C0 00 20 */	li r6, 0x20
/* 803D9254  4B FF FC C1 */	bl mPlib_Object_Exchange_keep_new
/* 803D9258  3C 80 80 66 */	lis r4, Player_Pallet_bank_ID@ha /* 0x8065BC0C@ha */
/* 803D925C  7C BE 1A 14 */	add r5, r30, r3
/* 803D9260  57 A0 10 3A */	slwi r0, r29, 2
/* 803D9264  38 64 BC 0C */	addi r3, r4, Player_Pallet_bank_ID@l /* 0x8065BC0C@l */
/* 803D9268  7C A3 01 2E */	stwx r5, r3, r0
/* 803D926C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9270  4B CC 1C AD */	bl func_8009AF1C
/* 803D9274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D9278  7C 08 03 A6 */	mtlr r0
/* 803D927C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D9280  4E 80 00 20 */	blr 
