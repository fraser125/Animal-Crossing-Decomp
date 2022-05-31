lbl_803DF3AC:
/* 803DF3AC  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 803DF3B0  7C 08 02 A6 */	mflr r0
/* 803DF3B4  90 01 01 54 */	stw r0, 0x154(r1)
/* 803DF3B8  39 61 01 50 */	addi r11, r1, 0x150
/* 803DF3BC  4B CB BB 19 */	bl func_8009AED4
/* 803DF3C0  7C 7D 1B 78 */	mr r29, r3
/* 803DF3C4  7C 9E 23 78 */	mr r30, r4
/* 803DF3C8  7C BF 2B 78 */	mr r31, r5
/* 803DF3CC  38 61 00 08 */	addi r3, r1, 8
/* 803DF3D0  4B FD D3 31 */	bl mMl_clear_mail
/* 803DF3D4  7F E5 FB 78 */	mr r5, r31
/* 803DF3D8  7F C6 F3 78 */	mr r6, r30
/* 803DF3DC  38 61 00 08 */	addi r3, r1, 8
/* 803DF3E0  38 80 00 57 */	li r4, 0x57
/* 803DF3E4  4B FF FD B1 */	bl mPO_delivery_mail_with_item
/* 803DF3E8  7F A3 EB 78 */	mr r3, r29
/* 803DF3EC  38 81 00 08 */	addi r4, r1, 8
/* 803DF3F0  4B FF FD 29 */	bl mPO_copy_contents
/* 803DF3F4  39 61 01 50 */	addi r11, r1, 0x150
/* 803DF3F8  4B CB BB 29 */	bl func_8009AF20
/* 803DF3FC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 803DF400  7C 08 03 A6 */	mtlr r0
/* 803DF404  38 21 01 50 */	addi r1, r1, 0x150
/* 803DF408  4E 80 00 20 */	blr 
