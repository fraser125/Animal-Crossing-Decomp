lbl_804D9DA4:
/* 804D9DA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D9DA8  7C 08 02 A6 */	mflr r0
/* 804D9DAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D9DB0  39 61 00 40 */	addi r11, r1, 0x40
/* 804D9DB4  4B BC 10 89 */	bl func_8009AE3C
/* 804D9DB8  39 61 00 28 */	addi r11, r1, 0x28
/* 804D9DBC  4B BC 11 0D */	bl func_8009AEC8
/* 804D9DC0  7C 7A 1B 78 */	mr r26, r3
/* 804D9DC4  FF A0 08 90 */	fmr f29, f1
/* 804D9DC8  7C 9B 23 78 */	mr r27, r4
/* 804D9DCC  FF C0 10 90 */	fmr f30, f2
/* 804D9DD0  FF E0 18 90 */	fmr f31, f3
/* 804D9DD4  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804D9DD8  7C BC 2B 78 */	mr r28, r5
/* 804D9DDC  7C DD 33 78 */	mr r29, r6
/* 804D9DE0  7C FE 3B 78 */	mr r30, r7
/* 804D9DE4  48 00 6B C1 */	bl Player_actor_Get_ItemKind
/* 804D9DE8  7C 7F 07 74 */	extsb r31, r3
/* 804D9DEC  FC 20 E8 90 */	fmr f1, f29
/* 804D9DF0  FC 40 F0 90 */	fmr f2, f30
/* 804D9DF4  2C 1F 00 37 */	cmpwi r31, 0x37
/* 804D9DF8  FC 60 F8 90 */	fmr f3, f31
/* 804D9DFC  7F 43 D3 78 */	mr r3, r26
/* 804D9E00  7F E4 FB 78 */	mr r4, r31
/* 804D9E04  7F 85 E3 78 */	mr r5, r28
/* 804D9E08  38 00 00 00 */	li r0, 0
/* 804D9E0C  41 80 00 10 */	blt lbl_804D9E1C
/* 804D9E10  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 804D9E14  40 80 00 08 */	bge lbl_804D9E1C
/* 804D9E18  38 00 00 01 */	li r0, 1
lbl_804D9E1C:
/* 804D9E1C  7C 00 00 34 */	cntlzw r0, r0
/* 804D9E20  54 06 D9 7E */	srwi r6, r0, 5
/* 804D9E24  48 00 72 89 */	bl Player_actor_LoadOrDestruct_Item
/* 804D9E28  2C 1F 00 00 */	cmpwi r31, 0
/* 804D9E2C  41 80 00 14 */	blt lbl_804D9E40
/* 804D9E30  7F E3 FB 78 */	mr r3, r31
/* 804D9E34  4B EF EE 01 */	bl mPlib_Get_BasicPlayerAnimeIndex_fromItemKind
/* 804D9E38  90 7D 00 00 */	stw r3, 0(r29)
/* 804D9E3C  48 00 00 08 */	b lbl_804D9E44
lbl_804D9E40:
/* 804D9E40  93 7D 00 00 */	stw r27, 0(r29)
lbl_804D9E44:
/* 804D9E44  7F E3 FB 78 */	mr r3, r31
/* 804D9E48  48 00 6C 45 */	bl Player_actor_Get_BasicItemMainIndex_fromItemKind
/* 804D9E4C  7C 64 1B 78 */	mr r4, r3
/* 804D9E50  7F 43 D3 78 */	mr r3, r26
/* 804D9E54  4B FF B8 39 */	bl Player_actor_Set_now_item_main_index
/* 804D9E58  9B FA 11 2B */	stb r31, 0x112b(r26)
/* 804D9E5C  80 7D 00 00 */	lwz r3, 0(r29)
/* 804D9E60  4B EF ED FD */	bl mPlib_Get_BasicPartTableIndex_fromAnimeIndex
/* 804D9E64  90 7E 00 00 */	stw r3, 0(r30)
/* 804D9E68  39 61 00 40 */	addi r11, r1, 0x40
/* 804D9E6C  4B BC 10 1D */	bl func_8009AE88
/* 804D9E70  39 61 00 28 */	addi r11, r1, 0x28
/* 804D9E74  4B BC 10 A1 */	bl func_8009AF14
/* 804D9E78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D9E7C  7C 08 03 A6 */	mtlr r0
/* 804D9E80  38 21 00 40 */	addi r1, r1, 0x40
/* 804D9E84  4E 80 00 20 */	blr 
