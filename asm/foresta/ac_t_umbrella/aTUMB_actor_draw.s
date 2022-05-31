lbl_804AA1BC:
/* 804AA1BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AA1C0  7C 08 02 A6 */	mflr r0
/* 804AA1C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AA1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA1CC  4B BF 0C FD */	bl func_8009AEC8
/* 804AA1D0  7C 7A 1B 78 */	mr r26, r3
/* 804AA1D4  3C 60 80 69 */	lis r3, draw_dt@ha /* 0x8068F0CC@ha */
/* 804AA1D8  83 9A 01 4C */	lwz r28, 0x14c(r26)
/* 804AA1DC  38 63 F0 CC */	addi r3, r3, draw_dt@l /* 0x8068F0CC@l */
/* 804AA1E0  83 DA 01 74 */	lwz r30, 0x174(r26)
/* 804AA1E4  88 1C 00 B5 */	lbz r0, 0xb5(r28)
/* 804AA1E8  57 C5 18 38 */	slwi r5, r30, 3
/* 804AA1EC  83 E4 00 00 */	lwz r31, 0(r4)
/* 804AA1F0  28 00 00 00 */	cmplwi r0, 0
/* 804AA1F4  7F A3 2A 14 */	add r29, r3, r5
/* 804AA1F8  41 82 01 D0 */	beq lbl_804AA3C8
/* 804AA1FC  80 1A 01 B8 */	lwz r0, 0x1b8(r26)
/* 804AA200  2C 00 00 00 */	cmpwi r0, 0
/* 804AA204  40 82 00 08 */	bne lbl_804AA20C
/* 804AA208  48 00 01 C0 */	b lbl_804AA3C8
lbl_804AA20C:
/* 804AA20C  38 7A 01 78 */	addi r3, r26, 0x178
/* 804AA210  4B F6 20 49 */	bl Matrix_put
/* 804AA214  38 7A 00 28 */	addi r3, r26, 0x28
/* 804AA218  4B F6 32 A5 */	bl Matrix_Position_Zero
/* 804AA21C  38 60 00 00 */	li r3, 0
/* 804AA220  38 00 00 01 */	li r0, 1
/* 804AA224  90 7A 01 B8 */	stw r3, 0x1b8(r26)
/* 804AA228  7F E3 FB 78 */	mr r3, r31
/* 804AA22C  90 1A 01 BC */	stw r0, 0x1bc(r26)
/* 804AA230  4B F3 AF 79 */	bl _texture_z_light_fog_prim_npc
/* 804AA234  83 7F 02 D0 */	lwz r27, 0x2d0(r31)
/* 804AA238  38 60 00 00 */	li r3, 0
/* 804AA23C  38 80 C0 00 */	li r4, -16384
/* 804AA240  38 A0 00 00 */	li r5, 0
/* 804AA244  38 C0 00 01 */	li r6, 1
/* 804AA248  4B F6 27 4D */	bl Matrix_rotateXYZ
/* 804AA24C  C0 3A 01 D8 */	lfs f1, 0x1d8(r26)
/* 804AA250  38 60 00 01 */	li r3, 1
/* 804AA254  C0 5A 01 DC */	lfs f2, 0x1dc(r26)
/* 804AA258  C0 7A 01 E0 */	lfs f3, 0x1e0(r26)
/* 804AA25C  4B F6 21 91 */	bl Matrix_scale
/* 804AA260  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 804AA264  7F E3 FB 78 */	mr r3, r31
/* 804AA268  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 804AA26C  90 1B 00 00 */	stw r0, 0(r27)
/* 804AA270  4B F6 31 65 */	bl _Matrix_to_Mtx_new
/* 804AA274  90 7B 00 04 */	stw r3, 4(r27)
/* 804AA278  3C 00 DE 00 */	lis r0, 0xde00
/* 804AA27C  3C 60 80 64 */	lis r3, lit_502@ha /* 0x80645E3C@ha */
/* 804AA280  3C 80 80 64 */	lis r4, lit_554@ha /* 0x80645E40@ha */
/* 804AA284  90 1B 00 08 */	stw r0, 8(r27)
/* 804AA288  C0 43 5E 3C */	lfs f2, lit_502@l(r3)  /* 0x80645E3C@l */
/* 804AA28C  38 60 00 01 */	li r3, 1
/* 804AA290  80 1D 00 00 */	lwz r0, 0(r29)
/* 804AA294  FC 60 10 90 */	fmr f3, f2
/* 804AA298  C0 24 5E 40 */	lfs f1, lit_554@l(r4)  /* 0x80645E40@l */
/* 804AA29C  90 1B 00 0C */	stw r0, 0xc(r27)
/* 804AA2A0  3B 7B 00 10 */	addi r27, r27, 0x10
/* 804AA2A4  4B F6 20 5D */	bl Matrix_translate
/* 804AA2A8  C0 3A 01 E4 */	lfs f1, 0x1e4(r26)
/* 804AA2AC  38 60 00 01 */	li r3, 1
/* 804AA2B0  C0 5A 01 E8 */	lfs f2, 0x1e8(r26)
/* 804AA2B4  C0 7A 01 EC */	lfs f3, 0x1ec(r26)
/* 804AA2B8  4B F6 21 35 */	bl Matrix_scale
/* 804AA2BC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804AA2C0  7F 7A DB 78 */	mr r26, r27
/* 804AA2C4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804AA2C8  7F E3 FB 78 */	mr r3, r31
/* 804AA2CC  90 1B 00 00 */	stw r0, 0(r27)
/* 804AA2D0  3B 7B 00 08 */	addi r27, r27, 8
/* 804AA2D4  4B F6 31 01 */	bl _Matrix_to_Mtx_new
/* 804AA2D8  2C 1E 00 20 */	cmpwi r30, 0x20
/* 804AA2DC  90 7A 00 04 */	stw r3, 4(r26)
/* 804AA2E0  41 80 00 CC */	blt lbl_804AA3AC
/* 804AA2E4  88 1C 00 02 */	lbz r0, 2(r28)
/* 804AA2E8  38 BE FF E0 */	addi r5, r30, -32
/* 804AA2EC  28 00 00 03 */	cmplwi r0, 3
/* 804AA2F0  40 82 00 5C */	bne lbl_804AA34C
/* 804AA2F4  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 804AA2F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AA2FC  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 804AA300  54 A0 07 7E */	clrlwi r0, r5, 0x1d
/* 804AA304  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AA308  90 9B 00 00 */	stw r4, 0(r27)
/* 804AA30C  3F 83 00 02 */	addis r28, r3, 2
/* 804AA310  1F 40 02 20 */	mulli r26, r0, 0x220
/* 804AA314  80 1C 61 3C */	lwz r0, 0x613c(r28)
/* 804AA318  7C 60 D2 14 */	add r3, r0, r26
/* 804AA31C  88 63 12 50 */	lbz r3, 0x1250(r3)
/* 804AA320  4B F1 F8 9D */	bl mNW_PaletteIdx2Palette
/* 804AA324  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 804AA328  90 7B 00 04 */	stw r3, 4(r27)
/* 804AA32C  38 64 00 24 */	addi r3, r4, 0x0024 /* 0xDB060024@l */
/* 804AA330  38 1A 12 60 */	addi r0, r26, 0x1260
/* 804AA334  90 7B 00 08 */	stw r3, 8(r27)
/* 804AA338  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 804AA33C  7C 03 02 14 */	add r0, r3, r0
/* 804AA340  90 1B 00 0C */	stw r0, 0xc(r27)
/* 804AA344  3B 7B 00 10 */	addi r27, r27, 0x10
/* 804AA348  48 00 00 64 */	b lbl_804AA3AC
lbl_804AA34C:
/* 804AA34C  54 BA 07 BE */	clrlwi r26, r5, 0x1e
/* 804AA350  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 804AA354  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AA358  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 804AA35C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AA360  90 1B 00 00 */	stw r0, 0(r27)
/* 804AA364  1C 1A 02 20 */	mulli r0, r26, 0x220
/* 804AA368  3C 63 00 02 */	addis r3, r3, 2
/* 804AA36C  7C 63 02 14 */	add r3, r3, r0
/* 804AA370  88 63 1C 90 */	lbz r3, 0x1c90(r3)
/* 804AA374  4B F1 F8 49 */	bl mNW_PaletteIdx2Palette
/* 804AA378  38 1A 00 04 */	addi r0, r26, 4
/* 804AA37C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AA380  1C A0 02 20 */	mulli r5, r0, 0x220
/* 804AA384  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060024@ha */
/* 804AA388  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 804AA38C  90 7B 00 04 */	stw r3, 4(r27)
/* 804AA390  38 86 00 24 */	addi r4, r6, 0x0024 /* 0xDB060024@l */
/* 804AA394  7C 60 2A 14 */	add r3, r0, r5
/* 804AA398  3C 63 00 02 */	addis r3, r3, 2
/* 804AA39C  90 9B 00 08 */	stw r4, 8(r27)
/* 804AA3A0  38 03 14 20 */	addi r0, r3, 0x1420
/* 804AA3A4  90 1B 00 0C */	stw r0, 0xc(r27)
/* 804AA3A8  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_804AA3AC:
/* 804AA3AC  7F 63 DB 78 */	mr r3, r27
/* 804AA3B0  3C 00 DE 00 */	lis r0, 0xde00
/* 804AA3B4  90 1B 00 00 */	stw r0, 0(r27)
/* 804AA3B8  3B 7B 00 08 */	addi r27, r27, 8
/* 804AA3BC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804AA3C0  90 03 00 04 */	stw r0, 4(r3)
/* 804AA3C4  93 7F 02 D0 */	stw r27, 0x2d0(r31)
lbl_804AA3C8:
/* 804AA3C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA3CC  4B BF 0B 49 */	bl func_8009AF14
/* 804AA3D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AA3D4  7C 08 03 A6 */	mtlr r0
/* 804AA3D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804AA3DC  4E 80 00 20 */	blr 
