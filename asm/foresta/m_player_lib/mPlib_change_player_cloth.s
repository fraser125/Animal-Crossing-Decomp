lbl_803D9478:
/* 803D9478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D947C  7C 08 02 A6 */	mflr r0
/* 803D9480  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D9484  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9488  4B CC 1A 49 */	bl func_8009AED0
/* 803D948C  7C 7C 1B 78 */	mr r28, r3
/* 803D9490  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 803D9494  4B FF FB 55 */	bl Change_Player_bank_ID_Index
/* 803D9498  7F 83 E3 78 */	mr r3, r28
/* 803D949C  4B FF FE E9 */	bl mPlib_get_player_tex_p
/* 803D94A0  7C 60 1B 78 */	mr r0, r3
/* 803D94A4  7F E3 FB 78 */	mr r3, r31
/* 803D94A8  7C 1E 03 78 */	mr r30, r0
/* 803D94AC  4B FF FB 6D */	bl mPlib_Get_PlayerTexRom_p
/* 803D94B0  7C 60 1B 78 */	mr r0, r3
/* 803D94B4  7F E3 FB 78 */	mr r3, r31
/* 803D94B8  7C 1D 03 78 */	mr r29, r0
/* 803D94BC  4B FF FD C9 */	bl mPlib_Check_PlayerClothInAram
/* 803D94C0  2C 03 00 00 */	cmpwi r3, 0
/* 803D94C4  41 82 00 18 */	beq lbl_803D94DC
/* 803D94C8  7F A3 EB 78 */	mr r3, r29
/* 803D94CC  7F C4 F3 78 */	mr r4, r30
/* 803D94D0  38 A0 02 00 */	li r5, 0x200
/* 803D94D4  4B C2 D7 A1 */	bl _JW_GetResourceAram
/* 803D94D8  48 00 00 14 */	b lbl_803D94EC
lbl_803D94DC:
/* 803D94DC  7F A3 EB 78 */	mr r3, r29
/* 803D94E0  7F C4 F3 78 */	mr r4, r30
/* 803D94E4  38 A0 02 00 */	li r5, 0x200
/* 803D94E8  4B C8 3B 35 */	bl func_8005D01C
lbl_803D94EC:
/* 803D94EC  7F C3 F3 78 */	mr r3, r30
/* 803D94F0  38 80 02 00 */	li r4, 0x200
/* 803D94F4  4B CA 07 29 */	bl DCStoreRangeNoSync
/* 803D94F8  7F 83 E3 78 */	mr r3, r28
/* 803D94FC  4B FF FE D1 */	bl mPlib_get_player_pallet_p
/* 803D9500  7C 60 1B 78 */	mr r0, r3
/* 803D9504  7F E3 FB 78 */	mr r3, r31
/* 803D9508  7C 1D 03 78 */	mr r29, r0
/* 803D950C  4B FF FC 41 */	bl mPlib_Get_PlayerPalletRom_p
/* 803D9510  7C 60 1B 78 */	mr r0, r3
/* 803D9514  7F E3 FB 78 */	mr r3, r31
/* 803D9518  7C 1E 03 78 */	mr r30, r0
/* 803D951C  4B FF FD 69 */	bl mPlib_Check_PlayerClothInAram
/* 803D9520  2C 03 00 00 */	cmpwi r3, 0
/* 803D9524  41 82 00 18 */	beq lbl_803D953C
/* 803D9528  7F C3 F3 78 */	mr r3, r30
/* 803D952C  7F A4 EB 78 */	mr r4, r29
/* 803D9530  38 A0 00 20 */	li r5, 0x20
/* 803D9534  4B C2 D7 41 */	bl _JW_GetResourceAram
/* 803D9538  48 00 00 14 */	b lbl_803D954C
lbl_803D953C:
/* 803D953C  7F C3 F3 78 */	mr r3, r30
/* 803D9540  7F A4 EB 78 */	mr r4, r29
/* 803D9544  38 A0 00 20 */	li r5, 0x20
/* 803D9548  4B C8 3A D5 */	bl func_8005D01C
lbl_803D954C:
/* 803D954C  7F A3 EB 78 */	mr r3, r29
/* 803D9550  38 80 00 20 */	li r4, 0x20
/* 803D9554  4B CA 06 C9 */	bl DCStoreRangeNoSync
/* 803D9558  39 61 00 20 */	addi r11, r1, 0x20
/* 803D955C  4B CC 19 C1 */	bl func_8009AF1C
/* 803D9560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D9564  7C 08 03 A6 */	mtlr r0
/* 803D9568  38 21 00 20 */	addi r1, r1, 0x20
/* 803D956C  4E 80 00 20 */	blr 
