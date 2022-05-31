lbl_805E20EC:
/* 805E20EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E20F0  7C 08 02 A6 */	mflr r0
/* 805E20F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E20F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805E20FC  4B AB 8D D1 */	bl func_8009AECC
/* 805E2100  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E2104  3C 60 80 6D */	lis r3, pl_umb_data@ha /* 0x806CD320@ha */
/* 805E2108  83 E4 00 00 */	lwz r31, 0(r4)
/* 805E210C  38 03 D3 20 */	addi r0, r3, pl_umb_data@l /* 0x806CD320@l */
/* 805E2110  A8 85 00 0C */	lha r4, 0xc(r5)
/* 805E2114  7F E3 FB 78 */	mr r3, r31
/* 805E2118  54 84 08 3C */	slwi r4, r4, 1
/* 805E211C  7C 85 22 14 */	add r4, r5, r4
/* 805E2120  A8 A4 00 0E */	lha r5, 0xe(r4)
/* 805E2124  54 A4 18 38 */	slwi r4, r5, 3
/* 805E2128  3B A5 00 0B */	addi r29, r5, 0xb
/* 805E212C  7F C0 22 14 */	add r30, r0, r4
/* 805E2130  4B E0 30 79 */	bl _texture_z_light_fog_prim_npc
/* 805E2134  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 805E2138  3C 00 D9 00 */	lis r0, 0xd900
/* 805E213C  3C 80 00 23 */	lis r4, 0x0023 /* 0x00230005@ha */
/* 805E2140  38 60 C0 00 */	li r3, -16384
/* 805E2144  90 1C 00 00 */	stw r0, 0(r28)
/* 805E2148  38 04 00 05 */	addi r0, r4, 0x0005 /* 0x00230005@l */
/* 805E214C  38 80 00 01 */	li r4, 1
/* 805E2150  90 1C 00 04 */	stw r0, 4(r28)
/* 805E2154  3B 9C 00 08 */	addi r28, r28, 8
/* 805E2158  4B E2 A5 05 */	bl Matrix_RotateY
/* 805E215C  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E2160  3C A0 80 65 */	lis r5, lit_898@ha /* 0x8064B43C@ha */
/* 805E2164  38 83 B4 00 */	addi r4, r3, lit_744@l /* 0x8064B400@l */
/* 805E2168  C0 25 B4 3C */	lfs f1, lit_898@l(r5)  /* 0x8064B43C@l */
/* 805E216C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805E2170  38 60 00 01 */	li r3, 1
/* 805E2174  FC 60 10 90 */	fmr f3, f2
/* 805E2178  4B E2 A1 89 */	bl Matrix_translate
/* 805E217C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805E2180  7F E3 FB 78 */	mr r3, r31
/* 805E2184  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805E2188  90 1C 00 00 */	stw r0, 0(r28)
/* 805E218C  4B E2 B2 49 */	bl _Matrix_to_Mtx_new
/* 805E2190  90 7C 00 04 */	stw r3, 4(r28)
/* 805E2194  3C 00 DE 00 */	lis r0, 0xde00
/* 805E2198  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E219C  3C 80 80 65 */	lis r4, lit_899@ha /* 0x8064B440@ha */
/* 805E21A0  90 1C 00 08 */	stw r0, 8(r28)
/* 805E21A4  C0 43 B4 00 */	lfs f2, lit_744@l(r3)  /* 0x8064B400@l */
/* 805E21A8  38 60 00 01 */	li r3, 1
/* 805E21AC  80 1E 00 00 */	lwz r0, 0(r30)
/* 805E21B0  FC 60 10 90 */	fmr f3, f2
/* 805E21B4  C0 24 B4 40 */	lfs f1, lit_899@l(r4)  /* 0x8064B440@l */
/* 805E21B8  90 1C 00 0C */	stw r0, 0xc(r28)
/* 805E21BC  3B 9C 00 10 */	addi r28, r28, 0x10
/* 805E21C0  4B E2 A1 41 */	bl Matrix_translate
/* 805E21C4  2C 1D 00 2B */	cmpwi r29, 0x2b
/* 805E21C8  41 80 00 5C */	blt lbl_805E2224
/* 805E21CC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805E21D0  38 1D FF D5 */	addi r0, r29, -43
/* 805E21D4  38 83 00 20 */	addi r4, r3, 0x0020 /* 0xDB060020@l */
/* 805E21D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E21DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E21E0  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 805E21E4  90 9C 00 00 */	stw r4, 0(r28)
/* 805E21E8  3F 63 00 02 */	addis r27, r3, 2
/* 805E21EC  1F A0 02 20 */	mulli r29, r0, 0x220
/* 805E21F0  80 1B 61 3C */	lwz r0, 0x613c(r27)
/* 805E21F4  7C 60 EA 14 */	add r3, r0, r29
/* 805E21F8  88 63 12 50 */	lbz r3, 0x1250(r3)
/* 805E21FC  4B DE 79 C1 */	bl mNW_PaletteIdx2Palette
/* 805E2200  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 805E2204  90 7C 00 04 */	stw r3, 4(r28)
/* 805E2208  38 64 00 24 */	addi r3, r4, 0x0024 /* 0xDB060024@l */
/* 805E220C  38 1D 12 60 */	addi r0, r29, 0x1260
/* 805E2210  90 7C 00 08 */	stw r3, 8(r28)
/* 805E2214  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 805E2218  7C 03 02 14 */	add r0, r3, r0
/* 805E221C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 805E2220  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_805E2224:
/* 805E2224  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E2228  7F 9B E3 78 */	mr r27, r28
/* 805E222C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E2230  7F E3 FB 78 */	mr r3, r31
/* 805E2234  90 1C 00 00 */	stw r0, 0(r28)
/* 805E2238  3B 9C 00 08 */	addi r28, r28, 8
/* 805E223C  4B E2 B1 99 */	bl _Matrix_to_Mtx_new
/* 805E2240  90 7B 00 04 */	stw r3, 4(r27)
/* 805E2244  7F 83 E3 78 */	mr r3, r28
/* 805E2248  3C 00 DE 00 */	lis r0, 0xde00
/* 805E224C  3B 9C 00 08 */	addi r28, r28, 8
/* 805E2250  90 03 00 00 */	stw r0, 0(r3)
/* 805E2254  80 1E 00 04 */	lwz r0, 4(r30)
/* 805E2258  90 03 00 04 */	stw r0, 4(r3)
/* 805E225C  93 9F 02 D0 */	stw r28, 0x2d0(r31)
/* 805E2260  39 61 00 20 */	addi r11, r1, 0x20
/* 805E2264  4B AB 8C B5 */	bl func_8009AF18
/* 805E2268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E226C  7C 08 03 A6 */	mtlr r0
/* 805E2270  38 21 00 20 */	addi r1, r1, 0x20
/* 805E2274  4E 80 00 20 */	blr 
