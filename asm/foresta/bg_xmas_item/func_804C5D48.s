lbl_804C5D48:
/* 804C5D48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C5D4C  7C 08 02 A6 */	mflr r0
/* 804C5D50  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C5D54  39 61 00 50 */	addi r11, r1, 0x50
/* 804C5D58  4B BD 51 5D */	bl func_8009AEB4
/* 804C5D5C  7C 7B 1B 78 */	mr r27, r3
/* 804C5D60  3C A0 80 6A */	lis r5, data_80698C10@ha /* 0x80698C10@ha */
/* 804C5D64  3B DB 15 6C */	addi r30, r27, 0x156c
/* 804C5D68  7C 9C 23 78 */	mr r28, r4
/* 804C5D6C  3B E5 8C 10 */	addi r31, r5, data_80698C10@l /* 0x80698C10@l */
/* 804C5D70  3F BE 00 01 */	addis r29, r30, 1
/* 804C5D74  48 00 04 75 */	bl bIT_clip_ct
/* 804C5D78  7F A3 EB 78 */	mr r3, r29
/* 804C5D7C  38 63 25 54 */	addi r3, r3, 0x2554
/* 804C5D80  4B EE 1B B1 */	bl mFI_InitItemTable
/* 804C5D84  7F 83 E3 78 */	mr r3, r28
/* 804C5D88  4B F1 38 B9 */	bl get_player_actor_withoutCheck
/* 804C5D8C  7C 78 1B 78 */	mr r24, r3
/* 804C5D90  4B ED 97 1D */	bl mEvMN_GetEventTypeMap
/* 804C5D94  28 18 00 00 */	cmplwi r24, 0
/* 804C5D98  7C 75 1B 78 */	mr r21, r3
/* 804C5D9C  41 82 00 38 */	beq lbl_804C5DD4
/* 804C5DA0  80 D8 00 28 */	lwz r6, 0x28(r24)
/* 804C5DA4  7F A3 EB 78 */	mr r3, r29
/* 804C5DA8  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 804C5DAC  38 81 00 08 */	addi r4, r1, 8
/* 804C5DB0  38 BF 2F D4 */	addi r5, r31, 0x2fd4
/* 804C5DB4  38 63 25 54 */	addi r3, r3, 0x2554
/* 804C5DB8  90 C1 00 08 */	stw r6, 8(r1)
/* 804C5DBC  38 C0 01 20 */	li r6, 0x120
/* 804C5DC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C5DC4  80 18 00 30 */	lwz r0, 0x30(r24)
/* 804C5DC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C5DCC  4B EE 1F CD */	bl mFI_GetItemTable
/* 804C5DD0  4B EE 20 A1 */	bl mFI_BornItemON
lbl_804C5DD4:
/* 804C5DD4  3F 1E 00 01 */	addis r24, r30, 1
/* 804C5DD8  3A C0 00 00 */	li r22, 0
/* 804C5DDC  3B 40 00 00 */	li r26, 0
/* 804C5DE0  3B 20 00 00 */	li r25, 0
/* 804C5DE4  48 00 00 64 */	b lbl_804C5E48
lbl_804C5DE8:
/* 804C5DE8  7C 7E CA 14 */	add r3, r30, r25
/* 804C5DEC  3C BA 00 01 */	addis r5, r26, 1
/* 804C5DF0  3E E3 00 01 */	addis r23, r3, 1
/* 804C5DF4  88 77 25 58 */	lbz r3, 0x2558(r23)
/* 804C5DF8  38 A5 21 54 */	addi r5, r5, 0x2154
/* 804C5DFC  88 97 25 59 */	lbz r4, 0x2559(r23)
/* 804C5E00  7C BE 2A 14 */	add r5, r30, r5
/* 804C5E04  7C 63 07 74 */	extsb r3, r3
/* 804C5E08  7C 84 07 74 */	extsb r4, r4
/* 804C5E0C  48 00 4F 6D */	bl bIT_common_clear_treeatr
/* 804C5E10  2C 15 FF FF */	cmpwi r21, -1
/* 804C5E14  41 82 00 14 */	beq lbl_804C5E28
/* 804C5E18  7E A3 AB 78 */	mr r3, r21
/* 804C5E1C  4B ED 96 4D */	bl mEvMN_GetMapIdx
/* 804C5E20  2C 03 FF FF */	cmpwi r3, -1
/* 804C5E24  40 82 00 18 */	bne lbl_804C5E3C
lbl_804C5E28:
/* 804C5E28  88 77 25 58 */	lbz r3, 0x2558(r23)
/* 804C5E2C  88 97 25 59 */	lbz r4, 0x2559(r23)
/* 804C5E30  7C 63 07 74 */	extsb r3, r3
/* 804C5E34  7C 84 07 74 */	extsb r4, r4
/* 804C5E38  4B EE 37 E9 */	bl mFI_ClearHoleBlock
lbl_804C5E3C:
/* 804C5E3C  3A D6 00 01 */	addi r22, r22, 1
/* 804C5E40  3B 5A 01 00 */	addi r26, r26, 0x100
/* 804C5E44  3B 39 00 10 */	addi r25, r25, 0x10
lbl_804C5E48:
/* 804C5E48  80 18 25 54 */	lwz r0, 0x2554(r24)
/* 804C5E4C  7C 16 00 00 */	cmpw r22, r0
/* 804C5E50  41 80 FF 98 */	blt lbl_804C5DE8
/* 804C5E54  38 80 00 00 */	li r4, 0
/* 804C5E58  38 A0 00 00 */	li r5, 0
/* 804C5E5C  38 C0 00 00 */	li r6, 0
lbl_804C5E60:
/* 804C5E60  7D 5E 32 14 */	add r10, r30, r6
/* 804C5E64  38 00 00 7C */	li r0, 0x7c
/* 804C5E68  7C 7B 2A 14 */	add r3, r27, r5
/* 804C5E6C  B0 0A 48 4C */	sth r0, 0x484c(r10)
/* 804C5E70  38 E3 05 78 */	addi r7, r3, 0x578
/* 804C5E74  38 00 01 01 */	li r0, 0x101
/* 804C5E78  90 EA 48 48 */	stw r7, 0x4848(r10)
/* 804C5E7C  38 E0 00 00 */	li r7, 0
/* 804C5E80  39 00 00 00 */	li r8, 0
/* 804C5E84  7C 09 03 A6 */	mtctr r0
lbl_804C5E88:
/* 804C5E88  39 28 01 74 */	addi r9, r8, 0x174
/* 804C5E8C  38 07 00 40 */	addi r0, r7, 0x40
/* 804C5E90  7D 23 4A 14 */	add r9, r3, r9
/* 804C5E94  39 08 00 04 */	addi r8, r8, 4
/* 804C5E98  7D 2A 01 2E */	stwx r9, r10, r0
/* 804C5E9C  38 E7 00 48 */	addi r7, r7, 0x48
/* 804C5EA0  42 00 FF E8 */	bdnz lbl_804C5E88
/* 804C5EA4  39 80 00 00 */	li r12, 0
/* 804C5EA8  38 00 01 01 */	li r0, 0x101
/* 804C5EAC  7D 88 63 78 */	mr r8, r12
/* 804C5EB0  38 E0 00 00 */	li r7, 0
/* 804C5EB4  39 20 00 03 */	li r9, 3
/* 804C5EB8  7C 09 03 A6 */	mtctr r0
lbl_804C5EBC:
/* 804C5EBC  38 0C FF FF */	addi r0, r12, -1
/* 804C5EC0  7D 63 3A 14 */	add r11, r3, r7
/* 804C5EC4  54 0A 07 3E */	clrlwi r10, r0, 0x1c
/* 804C5EC8  39 8C 00 01 */	addi r12, r12, 1
/* 804C5ECC  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 804C5ED0  38 E7 00 04 */	addi r7, r7, 4
/* 804C5ED4  7D 4A 02 14 */	add r10, r10, r0
/* 804C5ED8  7C 0A 4B D6 */	divw r0, r10, r9
/* 804C5EDC  7C 00 49 D6 */	mullw r0, r0, r9
/* 804C5EE0  7C 00 50 50 */	subf r0, r0, r10
/* 804C5EE4  B0 0B 01 74 */	sth r0, 0x174(r11)
/* 804C5EE8  B1 0B 01 76 */	sth r8, 0x176(r11)
/* 804C5EEC  42 00 FF D0 */	bdnz lbl_804C5EBC
/* 804C5EF0  38 84 00 01 */	addi r4, r4, 1
/* 804C5EF4  38 C6 48 54 */	addi r6, r6, 0x4854
/* 804C5EF8  2C 04 00 04 */	cmpwi r4, 4
/* 804C5EFC  38 A5 04 FE */	addi r5, r5, 0x4fe
/* 804C5F00  41 80 FF 60 */	blt lbl_804C5E60
/* 804C5F04  38 00 00 04 */	li r0, 4
/* 804C5F08  38 A0 00 00 */	li r5, 0
/* 804C5F0C  38 60 00 00 */	li r3, 0
/* 804C5F10  7C 09 03 A6 */	mtctr r0
lbl_804C5F14:
/* 804C5F14  3C 83 00 01 */	addis r4, r3, 1
/* 804C5F18  38 63 00 04 */	addi r3, r3, 4
/* 804C5F1C  38 84 39 F4 */	addi r4, r4, 0x39f4
/* 804C5F20  7C BE 21 2E */	stwx r5, r30, r4
/* 804C5F24  38 A5 00 01 */	addi r5, r5, 1
/* 804C5F28  42 00 FF EC */	bdnz lbl_804C5F14
/* 804C5F2C  38 00 00 26 */	li r0, 0x26
/* 804C5F30  3C A0 81 16 */	lis r5, g_fdinfo@ha /* 0x81167A58@ha */
/* 804C5F34  B0 1D 25 C8 */	sth r0, 0x25c8(r29)
/* 804C5F38  38 1F 28 24 */	addi r0, r31, 0x2824
/* 804C5F3C  3C 80 80 75 */	lis r4, obj_g_hole_pal@ha /* 0x807522E0@ha */
/* 804C5F40  3C 60 80 75 */	lis r3, data_807522C0@ha /* 0x807522C0@ha */
/* 804C5F44  90 1D 25 98 */	stw r0, 0x2598(r29)
/* 804C5F48  39 05 7A 58 */	addi r8, r5, g_fdinfo@l /* 0x81167A58@l */
/* 804C5F4C  38 C4 22 E0 */	addi r6, r4, obj_g_hole_pal@l /* 0x807522E0@l */
/* 804C5F50  38 A3 22 C0 */	addi r5, r3, data_807522C0@l /* 0x807522C0@l */
/* 804C5F54  80 E8 00 00 */	lwz r7, 0(r8)
/* 804C5F58  3C 9E 00 01 */	addis r4, r30, 1
/* 804C5F5C  38 1F 00 24 */	addi r0, r31, 0x24
/* 804C5F60  7F C3 F3 78 */	mr r3, r30
/* 804C5F64  80 E7 00 54 */	lwz r7, 0x54(r7)
/* 804C5F68  90 FD 25 A4 */	stw r7, 0x25a4(r29)
/* 804C5F6C  80 E8 00 00 */	lwz r7, 0(r8)
/* 804C5F70  80 E7 00 58 */	lwz r7, 0x58(r7)
/* 804C5F74  90 FD 25 A8 */	stw r7, 0x25a8(r29)
/* 804C5F78  80 E8 00 00 */	lwz r7, 0(r8)
/* 804C5F7C  80 E7 00 5C */	lwz r7, 0x5c(r7)
/* 804C5F80  90 FD 25 AC */	stw r7, 0x25ac(r29)
/* 804C5F84  80 E8 00 00 */	lwz r7, 0(r8)
/* 804C5F88  80 E7 00 60 */	lwz r7, 0x60(r7)
/* 804C5F8C  90 FD 25 B0 */	stw r7, 0x25b0(r29)
/* 804C5F90  80 E8 00 00 */	lwz r7, 0(r8)
/* 804C5F94  80 E7 00 68 */	lwz r7, 0x68(r7)
/* 804C5F98  90 FD 25 BC */	stw r7, 0x25bc(r29)
/* 804C5F9C  80 E8 00 00 */	lwz r7, 0(r8)
/* 804C5FA0  80 E7 00 6C */	lwz r7, 0x6c(r7)
/* 804C5FA4  90 FD 25 C0 */	stw r7, 0x25c0(r29)
/* 804C5FA8  80 E8 00 00 */	lwz r7, 0(r8)
/* 804C5FAC  80 E7 00 70 */	lwz r7, 0x70(r7)
/* 804C5FB0  90 FD 25 C4 */	stw r7, 0x25c4(r29)
/* 804C5FB4  90 DD 25 B4 */	stw r6, 0x25b4(r29)
/* 804C5FB8  90 BD 25 B8 */	stw r5, 0x25b8(r29)
/* 804C5FBC  93 64 39 DC */	stw r27, 0x39dc(r4)
/* 804C5FC0  90 1D 25 A0 */	stw r0, 0x25a0(r29)
/* 804C5FC4  48 00 57 91 */	bl bg_item_common_chg_BGDataR
/* 804C5FC8  7F 83 E3 78 */	mr r3, r28
/* 804C5FCC  7F C4 F3 78 */	mr r4, r30
/* 804C5FD0  48 00 70 35 */	bl bg_item_common_construct
/* 804C5FD4  39 61 00 50 */	addi r11, r1, 0x50
/* 804C5FD8  4B BD 4F 29 */	bl func_8009AF00
/* 804C5FDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C5FE0  7C 08 03 A6 */	mtlr r0
/* 804C5FE4  38 21 00 50 */	addi r1, r1, 0x50
/* 804C5FE8  4E 80 00 20 */	blr 
