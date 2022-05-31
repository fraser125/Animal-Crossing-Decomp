lbl_803CA328:
/* 803CA328  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803CA32C  7C 08 02 A6 */	mflr r0
/* 803CA330  90 01 00 44 */	stw r0, 0x44(r1)
/* 803CA334  39 61 00 40 */	addi r11, r1, 0x40
/* 803CA338  4B CD 0B 9D */	bl func_8009AED4
/* 803CA33C  7C 9D 23 78 */	mr r29, r4
/* 803CA340  7C 64 1B 78 */	mr r4, r3
/* 803CA344  7C BE 2B 78 */	mr r30, r5
/* 803CA348  7C DF 33 78 */	mr r31, r6
/* 803CA34C  38 61 00 0C */	addi r3, r1, 0xc
/* 803CA350  48 00 76 01 */	bl mNpc_GetNpcWorldNameAnm
/* 803CA354  38 81 00 0C */	addi r4, r1, 0xc
/* 803CA358  38 60 00 01 */	li r3, 1
/* 803CA35C  38 A0 00 08 */	li r5, 8
/* 803CA360  4B FE 75 F9 */	bl mHandbill_Set_free_str
/* 803CA364  7F A4 EB 78 */	mr r4, r29
/* 803CA368  38 61 00 1C */	addi r3, r1, 0x1c
/* 803CA36C  4B FE B6 39 */	bl mIN_copy_name_str
/* 803CA370  7F A3 EB 78 */	mr r3, r29
/* 803CA374  4B FE B7 A5 */	bl mIN_get_item_article
/* 803CA378  7C 66 1B 78 */	mr r6, r3
/* 803CA37C  38 81 00 1C */	addi r4, r1, 0x1c
/* 803CA380  38 60 00 02 */	li r3, 2
/* 803CA384  38 A0 00 10 */	li r5, 0x10
/* 803CA388  4B FE 76 69 */	bl mHandbill_Set_free_str_art
/* 803CA38C  3C 60 80 66 */	lis r3, choume_str@ha /* 0x8065ADDC@ha */
/* 803CA390  38 81 00 08 */	addi r4, r1, 8
/* 803CA394  38 A3 AD DC */	addi r5, r3, choume_str@l /* 0x8065ADDC@l */
/* 803CA398  38 60 00 03 */	li r3, 3
/* 803CA39C  7C 05 F8 AE */	lbzx r0, r5, r31
/* 803CA3A0  38 A0 00 01 */	li r5, 1
/* 803CA3A4  98 01 00 08 */	stb r0, 8(r1)
/* 803CA3A8  4B FE 75 B1 */	bl mHandbill_Set_free_str
/* 803CA3AC  38 1E 00 30 */	addi r0, r30, 0x30
/* 803CA3B0  38 81 00 08 */	addi r4, r1, 8
/* 803CA3B4  98 01 00 08 */	stb r0, 8(r1)
/* 803CA3B8  38 60 00 04 */	li r3, 4
/* 803CA3BC  38 A0 00 01 */	li r5, 1
/* 803CA3C0  4B FE 75 99 */	bl mHandbill_Set_free_str
/* 803CA3C4  38 61 00 14 */	addi r3, r1, 0x14
/* 803CA3C8  4B FF FF 11 */	bl mNtc_set_landname_string
/* 803CA3CC  7C 65 1B 78 */	mr r5, r3
/* 803CA3D0  38 81 00 14 */	addi r4, r1, 0x14
/* 803CA3D4  38 60 00 05 */	li r3, 5
/* 803CA3D8  4B FE 75 81 */	bl mHandbill_Set_free_str
/* 803CA3DC  39 61 00 40 */	addi r11, r1, 0x40
/* 803CA3E0  4B CD 0B 41 */	bl func_8009AF20
/* 803CA3E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803CA3E8  7C 08 03 A6 */	mtlr r0
/* 803CA3EC  38 21 00 40 */	addi r1, r1, 0x40
/* 803CA3F0  4E 80 00 20 */	blr 
