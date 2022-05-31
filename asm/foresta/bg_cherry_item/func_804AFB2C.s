lbl_804AFB2C:
/* 804AFB2C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804AFB30  7C 08 02 A6 */	mflr r0
/* 804AFB34  90 01 00 54 */	stw r0, 0x54(r1)
/* 804AFB38  39 61 00 50 */	addi r11, r1, 0x50
/* 804AFB3C  4B BE B3 79 */	bl func_8009AEB4
/* 804AFB40  7C 7B 1B 78 */	mr r27, r3
/* 804AFB44  3C A0 80 69 */	lis r5, data_8068FB68@ha /* 0x8068FB68@ha */
/* 804AFB48  3B DB 01 74 */	addi r30, r27, 0x174
/* 804AFB4C  7C 9C 23 78 */	mr r28, r4
/* 804AFB50  3B E5 FB 68 */	addi r31, r5, data_8068FB68@l /* 0x8068FB68@l */
/* 804AFB54  3F BE 00 01 */	addis r29, r30, 1
/* 804AFB58  48 00 03 FD */	bl bIT_clip_ct
/* 804AFB5C  3C 7B 00 01 */	addis r3, r27, 1
/* 804AFB60  38 63 26 C8 */	addi r3, r3, 0x26c8
/* 804AFB64  4B EF 7D CD */	bl mFI_InitItemTable
/* 804AFB68  7F 83 E3 78 */	mr r3, r28
/* 804AFB6C  4B F2 9A D5 */	bl get_player_actor_withoutCheck
/* 804AFB70  7C 78 1B 78 */	mr r24, r3
/* 804AFB74  4B EE F9 39 */	bl mEvMN_GetEventTypeMap
/* 804AFB78  28 18 00 00 */	cmplwi r24, 0
/* 804AFB7C  7C 75 1B 78 */	mr r21, r3
/* 804AFB80  41 82 00 38 */	beq lbl_804AFBB8
/* 804AFB84  80 D8 00 28 */	lwz r6, 0x28(r24)
/* 804AFB88  3C 7B 00 01 */	addis r3, r27, 1
/* 804AFB8C  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 804AFB90  38 81 00 08 */	addi r4, r1, 8
/* 804AFB94  38 BF 2F 4C */	addi r5, r31, 0x2f4c
/* 804AFB98  38 63 26 C8 */	addi r3, r3, 0x26c8
/* 804AFB9C  90 C1 00 08 */	stw r6, 8(r1)
/* 804AFBA0  38 C0 01 0D */	li r6, 0x10d
/* 804AFBA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AFBA8  80 18 00 30 */	lwz r0, 0x30(r24)
/* 804AFBAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AFBB0  4B EF 81 E9 */	bl mFI_GetItemTable
/* 804AFBB4  4B EF 82 BD */	bl mFI_BornItemON
lbl_804AFBB8:
/* 804AFBB8  3F 1B 00 01 */	addis r24, r27, 1
/* 804AFBBC  3A C0 00 00 */	li r22, 0
/* 804AFBC0  3B 40 00 00 */	li r26, 0
/* 804AFBC4  3B 20 00 00 */	li r25, 0
/* 804AFBC8  48 00 00 64 */	b lbl_804AFC2C
lbl_804AFBCC:
/* 804AFBCC  7C 7B CA 14 */	add r3, r27, r25
/* 804AFBD0  3C BA 00 01 */	addis r5, r26, 1
/* 804AFBD4  3E E3 00 01 */	addis r23, r3, 1
/* 804AFBD8  88 77 26 CC */	lbz r3, 0x26cc(r23)
/* 804AFBDC  38 A5 22 C8 */	addi r5, r5, 0x22c8
/* 804AFBE0  88 97 26 CD */	lbz r4, 0x26cd(r23)
/* 804AFBE4  7C BB 2A 14 */	add r5, r27, r5
/* 804AFBE8  7C 63 07 74 */	extsb r3, r3
/* 804AFBEC  7C 84 07 74 */	extsb r4, r4
/* 804AFBF0  48 00 4E F5 */	bl bIT_common_clear_treeatr
/* 804AFBF4  2C 15 FF FF */	cmpwi r21, -1
/* 804AFBF8  41 82 00 14 */	beq lbl_804AFC0C
/* 804AFBFC  7E A3 AB 78 */	mr r3, r21
/* 804AFC00  4B EE F8 69 */	bl mEvMN_GetMapIdx
/* 804AFC04  2C 03 FF FF */	cmpwi r3, -1
/* 804AFC08  40 82 00 18 */	bne lbl_804AFC20
lbl_804AFC0C:
/* 804AFC0C  88 77 26 CC */	lbz r3, 0x26cc(r23)
/* 804AFC10  88 97 26 CD */	lbz r4, 0x26cd(r23)
/* 804AFC14  7C 63 07 74 */	extsb r3, r3
/* 804AFC18  7C 84 07 74 */	extsb r4, r4
/* 804AFC1C  4B EF 9A 05 */	bl mFI_ClearHoleBlock
lbl_804AFC20:
/* 804AFC20  3A D6 00 01 */	addi r22, r22, 1
/* 804AFC24  3B 5A 01 00 */	addi r26, r26, 0x100
/* 804AFC28  3B 39 00 10 */	addi r25, r25, 0x10
lbl_804AFC2C:
/* 804AFC2C  80 18 26 C8 */	lwz r0, 0x26c8(r24)
/* 804AFC30  7C 16 00 00 */	cmpw r22, r0
/* 804AFC34  41 80 FF 98 */	blt lbl_804AFBCC
/* 804AFC38  38 00 00 04 */	li r0, 4
/* 804AFC3C  38 A0 00 00 */	li r5, 0
/* 804AFC40  38 60 00 00 */	li r3, 0
/* 804AFC44  7C 09 03 A6 */	mtctr r0
lbl_804AFC48:
/* 804AFC48  3C 83 00 01 */	addis r4, r3, 1
/* 804AFC4C  38 63 00 04 */	addi r3, r3, 4
/* 804AFC50  38 84 3B 68 */	addi r4, r4, 0x3b68
/* 804AFC54  7C BB 21 2E */	stwx r5, r27, r4
/* 804AFC58  38 A5 00 01 */	addi r5, r5, 1
/* 804AFC5C  42 00 FF EC */	bdnz lbl_804AFC48
/* 804AFC60  3C 7B 00 01 */	addis r3, r27, 1
/* 804AFC64  38 00 00 24 */	li r0, 0x24
/* 804AFC68  B0 03 27 3C */	sth r0, 0x273c(r3)
/* 804AFC6C  38 1F 27 AC */	addi r0, r31, 0x27ac
/* 804AFC70  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 804AFC74  3C A0 80 75 */	lis r5, obj_g_hole_pal@ha /* 0x807522E0@ha */
/* 804AFC78  90 03 27 0C */	stw r0, 0x270c(r3)
/* 804AFC7C  39 44 7A 58 */	addi r10, r4, g_fdinfo@l /* 0x81167A58@l */
/* 804AFC80  39 05 22 E0 */	addi r8, r5, obj_g_hole_pal@l /* 0x807522E0@l */
/* 804AFC84  3C 80 80 75 */	lis r4, data_807522C0@ha /* 0x807522C0@ha */
/* 804AFC88  80 AA 00 00 */	lwz r5, 0(r10)
/* 804AFC8C  38 E4 22 C0 */	addi r7, r4, data_807522C0@l /* 0x807522C0@l */
/* 804AFC90  38 00 00 04 */	li r0, 4
/* 804AFC94  38 80 00 00 */	li r4, 0
/* 804AFC98  81 25 00 54 */	lwz r9, 0x54(r5)
/* 804AFC9C  38 A0 00 00 */	li r5, 0
/* 804AFCA0  38 C0 00 7A */	li r6, 0x7a
/* 804AFCA4  91 3D 25 A4 */	stw r9, 0x25a4(r29)
/* 804AFCA8  81 2A 00 00 */	lwz r9, 0(r10)
/* 804AFCAC  81 29 00 58 */	lwz r9, 0x58(r9)
/* 804AFCB0  91 3D 25 A8 */	stw r9, 0x25a8(r29)
/* 804AFCB4  81 2A 00 00 */	lwz r9, 0(r10)
/* 804AFCB8  81 29 00 5C */	lwz r9, 0x5c(r9)
/* 804AFCBC  91 3D 25 AC */	stw r9, 0x25ac(r29)
/* 804AFCC0  81 2A 00 00 */	lwz r9, 0(r10)
/* 804AFCC4  81 29 00 60 */	lwz r9, 0x60(r9)
/* 804AFCC8  91 3D 25 B0 */	stw r9, 0x25b0(r29)
/* 804AFCCC  81 2A 00 00 */	lwz r9, 0(r10)
/* 804AFCD0  81 29 00 68 */	lwz r9, 0x68(r9)
/* 804AFCD4  91 3D 25 BC */	stw r9, 0x25bc(r29)
/* 804AFCD8  81 2A 00 00 */	lwz r9, 0(r10)
/* 804AFCDC  81 29 00 6C */	lwz r9, 0x6c(r9)
/* 804AFCE0  91 3D 25 C0 */	stw r9, 0x25c0(r29)
/* 804AFCE4  81 2A 00 00 */	lwz r9, 0(r10)
/* 804AFCE8  81 29 00 70 */	lwz r9, 0x70(r9)
/* 804AFCEC  91 3D 25 C4 */	stw r9, 0x25c4(r29)
/* 804AFCF0  91 1D 25 B4 */	stw r8, 0x25b4(r29)
/* 804AFCF4  90 FD 25 B8 */	stw r7, 0x25b8(r29)
/* 804AFCF8  93 63 3B 50 */	stw r27, 0x3b50(r3)
/* 804AFCFC  7C 09 03 A6 */	mtctr r0
lbl_804AFD00:
/* 804AFD00  7C FB 2A 14 */	add r7, r27, r5
/* 804AFD04  3C 64 00 01 */	addis r3, r4, 1
/* 804AFD08  38 63 3B 78 */	addi r3, r3, 0x3b78
/* 804AFD0C  B0 C7 49 C0 */	sth r6, 0x49c0(r7)
/* 804AFD10  7C 1B 1A 14 */	add r0, r27, r3
/* 804AFD14  38 A5 48 54 */	addi r5, r5, 0x4854
/* 804AFD18  90 07 49 BC */	stw r0, 0x49bc(r7)
/* 804AFD1C  38 84 00 F6 */	addi r4, r4, 0xf6
/* 804AFD20  42 00 FF E0 */	bdnz lbl_804AFD00
/* 804AFD24  38 1F 00 24 */	addi r0, r31, 0x24
/* 804AFD28  7F C3 F3 78 */	mr r3, r30
/* 804AFD2C  90 1D 25 A0 */	stw r0, 0x25a0(r29)
/* 804AFD30  48 00 57 91 */	bl bg_item_common_chg_BGDataR
/* 804AFD34  7F 83 E3 78 */	mr r3, r28
/* 804AFD38  7F C4 F3 78 */	mr r4, r30
/* 804AFD3C  48 00 70 35 */	bl bg_item_common_construct
/* 804AFD40  39 61 00 50 */	addi r11, r1, 0x50
/* 804AFD44  4B BE B1 BD */	bl func_8009AF00
/* 804AFD48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804AFD4C  7C 08 03 A6 */	mtlr r0
/* 804AFD50  38 21 00 50 */	addi r1, r1, 0x50
/* 804AFD54  4E 80 00 20 */	blr 
