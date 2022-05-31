lbl_8062A058:
/* 8062A058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062A05C  7C 08 02 A6 */	mflr r0
/* 8062A060  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062A064  39 61 00 20 */	addi r11, r1, 0x20
/* 8062A068  4B A7 0E 69 */	bl func_8009AED0
/* 8062A06C  7C 7E 1B 78 */	mr r30, r3
/* 8062A070  3B E0 00 00 */	li r31, 0
/* 8062A074  3B BE 20 D8 */	addi r29, r30, 0x20d8
/* 8062A078  3B 80 00 01 */	li r28, 1
/* 8062A07C  81 83 23 14 */	lwz r12, 0x2314(r3)
/* 8062A080  7F A3 EB 78 */	mr r3, r29
/* 8062A084  7D 89 03 A6 */	mtctr r12
/* 8062A088  4E 80 04 21 */	bctrl 
/* 8062A08C  2C 03 00 00 */	cmpwi r3, 0
/* 8062A090  41 82 02 A0 */	beq lbl_8062A330
/* 8062A094  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 8062A098  28 00 00 01 */	cmplwi r0, 1
/* 8062A09C  41 82 00 54 */	beq lbl_8062A0F0
/* 8062A0A0  28 00 00 0B */	cmplwi r0, 0xb
/* 8062A0A4  41 82 00 4C */	beq lbl_8062A0F0
/* 8062A0A8  3C 60 81 23 */	lis r3, struct_81233958+0x2@ha /* 0x8123395A@ha */
/* 8062A0AC  38 83 39 5A */	addi r4, r3, struct_81233958+0x2@l /* 0x8123395A@l */
/* 8062A0B0  A0 64 00 00 */	lhz r3, 0(r4)
/* 8062A0B4  28 03 00 00 */	cmplwi r3, 0
/* 8062A0B8  41 82 00 0C */	beq lbl_8062A0C4
/* 8062A0BC  38 03 FF FF */	addi r0, r3, -1
/* 8062A0C0  B0 04 00 00 */	sth r0, 0(r4)
lbl_8062A0C4:
/* 8062A0C4  48 00 44 8D */	bl sAdo_SeFadeoutCheck
/* 8062A0C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8062A0CC  40 82 00 1C */	bne lbl_8062A0E8
/* 8062A0D0  3C 60 81 23 */	lis r3, struct_81233958+0x2@ha /* 0x8123395A@ha */
/* 8062A0D4  A0 03 39 5A */	lhz r0, struct_81233958+0x2@l(r3)  /* 0x8123395A@l */
/* 8062A0D8  28 00 00 00 */	cmplwi r0, 0
/* 8062A0DC  41 82 00 0C */	beq lbl_8062A0E8
/* 8062A0E0  3B 80 00 00 */	li r28, 0
/* 8062A0E4  48 00 00 0C */	b lbl_8062A0F0
lbl_8062A0E8:
/* 8062A0E8  38 60 00 01 */	li r3, 1
/* 8062A0EC  48 00 46 AD */	bl sAdo_Set_ongenpos_refuse_fg
lbl_8062A0F0:
/* 8062A0F0  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 8062A0F4  28 00 00 0B */	cmplwi r0, 0xb
/* 8062A0F8  40 82 00 0C */	bne lbl_8062A104
/* 8062A0FC  38 60 00 02 */	li r3, 2
/* 8062A100  48 00 46 99 */	bl sAdo_Set_ongenpos_refuse_fg
lbl_8062A104:
/* 8062A104  2C 1C 00 01 */	cmpwi r28, 1
/* 8062A108  40 82 02 44 */	bne lbl_8062A34C
/* 8062A10C  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 8062A110  28 00 00 0C */	cmplwi r0, 0xc
/* 8062A114  41 81 01 BC */	bgt lbl_8062A2D0
/* 8062A118  3C 60 80 6D */	lis r3, lit_647@ha /* 0x806D4658@ha */
/* 8062A11C  54 00 10 3A */	slwi r0, r0, 2
/* 8062A120  38 63 46 58 */	addi r3, r3, lit_647@l /* 0x806D4658@l */
/* 8062A124  7C 03 00 2E */	lwzx r0, r3, r0
/* 8062A128  7C 09 03 A6 */	mtctr r0
/* 8062A12C  4E 80 04 20 */	bctr 
lbl_8062A130:
/* 8062A130  7F C3 F3 78 */	mr r3, r30
/* 8062A134  4B FF FE 45 */	bl Game_play_fbdemo_fade_in_move_end
/* 8062A138  48 00 01 E4 */	b lbl_8062A31C
lbl_8062A13C:
/* 8062A13C  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A140  38 83 39 58 */	addi r4, r3, struct_81233958+0x0@l /* 0x81233958@l */
/* 8062A144  A0 64 00 00 */	lhz r3, 0(r4)
/* 8062A148  28 03 00 00 */	cmplwi r3, 0
/* 8062A14C  41 82 00 0C */	beq lbl_8062A158
/* 8062A150  38 03 FF FF */	addi r0, r3, -1
/* 8062A154  B0 04 00 00 */	sth r0, 0(r4)
lbl_8062A158:
/* 8062A158  48 00 43 D9 */	bl sAdo_BgmFadeoutCheck
/* 8062A15C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8062A160  28 00 00 01 */	cmplwi r0, 1
/* 8062A164  41 82 00 14 */	beq lbl_8062A178
/* 8062A168  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A16C  A0 03 39 58 */	lhz r0, struct_81233958+0x0@l(r3)  /* 0x81233958@l */
/* 8062A170  28 00 00 00 */	cmplwi r0, 0
/* 8062A174  40 82 00 10 */	bne lbl_8062A184
lbl_8062A178:
/* 8062A178  7F C3 F3 78 */	mr r3, r30
/* 8062A17C  4B FF FE 51 */	bl Game_play_fbdemo_fade_out_start_emu_move_end
/* 8062A180  48 00 01 9C */	b lbl_8062A31C
lbl_8062A184:
/* 8062A184  3B E0 00 01 */	li r31, 1
/* 8062A188  48 00 01 94 */	b lbl_8062A31C
lbl_8062A18C:
/* 8062A18C  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A190  A0 03 39 58 */	lhz r0, struct_81233958+0x0@l(r3)  /* 0x81233958@l */
/* 8062A194  28 00 00 78 */	cmplwi r0, 0x78
/* 8062A198  40 82 00 0C */	bne lbl_8062A1A4
/* 8062A19C  38 60 01 68 */	li r3, 0x168
/* 8062A1A0  4B D5 19 6D */	bl mBGMPsComp_make_ps_wipe
lbl_8062A1A4:
/* 8062A1A4  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A1A8  38 83 39 58 */	addi r4, r3, struct_81233958+0x0@l /* 0x81233958@l */
/* 8062A1AC  A0 64 00 00 */	lhz r3, 0(r4)
/* 8062A1B0  28 03 00 00 */	cmplwi r3, 0
/* 8062A1B4  41 82 00 0C */	beq lbl_8062A1C0
/* 8062A1B8  38 03 FF FF */	addi r0, r3, -1
/* 8062A1BC  B0 04 00 00 */	sth r0, 0(r4)
lbl_8062A1C0:
/* 8062A1C0  48 00 43 71 */	bl sAdo_BgmFadeoutCheck
/* 8062A1C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8062A1C8  28 00 00 01 */	cmplwi r0, 1
/* 8062A1CC  41 82 00 14 */	beq lbl_8062A1E0
/* 8062A1D0  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A1D4  A0 03 39 58 */	lhz r0, struct_81233958+0x0@l(r3)  /* 0x81233958@l */
/* 8062A1D8  28 00 00 00 */	cmplwi r0, 0
/* 8062A1DC  40 82 00 10 */	bne lbl_8062A1EC
lbl_8062A1E0:
/* 8062A1E0  7F C3 F3 78 */	mr r3, r30
/* 8062A1E4  4B FF FE 09 */	bl Game_play_fbdemo_fade_out_game_end_move_end
/* 8062A1E8  48 00 01 34 */	b lbl_8062A31C
lbl_8062A1EC:
/* 8062A1EC  3B E0 00 01 */	li r31, 1
/* 8062A1F0  48 00 01 2C */	b lbl_8062A31C
lbl_8062A1F4:
/* 8062A1F4  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A1F8  38 83 39 58 */	addi r4, r3, struct_81233958+0x0@l /* 0x81233958@l */
/* 8062A1FC  A0 64 00 00 */	lhz r3, 0(r4)
/* 8062A200  28 03 00 00 */	cmplwi r3, 0
/* 8062A204  41 82 00 0C */	beq lbl_8062A210
/* 8062A208  38 03 FF FF */	addi r0, r3, -1
/* 8062A20C  B0 04 00 00 */	sth r0, 0(r4)
lbl_8062A210:
/* 8062A210  48 00 43 21 */	bl sAdo_BgmFadeoutCheck
/* 8062A214  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8062A218  28 00 00 01 */	cmplwi r0, 1
/* 8062A21C  41 82 00 14 */	beq lbl_8062A230
/* 8062A220  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A224  A0 03 39 58 */	lhz r0, struct_81233958+0x0@l(r3)  /* 0x81233958@l */
/* 8062A228  28 00 00 00 */	cmplwi r0, 0
/* 8062A22C  40 82 00 40 */	bne lbl_8062A26C
lbl_8062A230:
/* 8062A230  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062A234  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062A238  3C 63 00 02 */	addis r3, r3, 2
/* 8062A23C  80 63 60 E8 */	lwz r3, 0x60e8(r3)
/* 8062A240  28 03 00 00 */	cmplwi r3, 0
/* 8062A244  41 82 00 D8 */	beq lbl_8062A31C
/* 8062A248  81 83 00 00 */	lwz r12, 0(r3)
/* 8062A24C  28 0C 00 00 */	cmplwi r12, 0
/* 8062A250  41 82 00 CC */	beq lbl_8062A31C
/* 8062A254  7F C3 F3 78 */	mr r3, r30
/* 8062A258  7D 89 03 A6 */	mtctr r12
/* 8062A25C  4E 80 04 21 */	bctrl 
/* 8062A260  7F C3 F3 78 */	mr r3, r30
/* 8062A264  4B FF FD AD */	bl Game_play_change_scene_move_end
/* 8062A268  48 00 00 B4 */	b lbl_8062A31C
lbl_8062A26C:
/* 8062A26C  3B E0 00 01 */	li r31, 1
/* 8062A270  48 00 00 AC */	b lbl_8062A31C
lbl_8062A274:
/* 8062A274  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A278  38 83 39 58 */	addi r4, r3, struct_81233958+0x0@l /* 0x81233958@l */
/* 8062A27C  A0 64 00 00 */	lhz r3, 0(r4)
/* 8062A280  28 03 00 00 */	cmplwi r3, 0
/* 8062A284  41 82 00 0C */	beq lbl_8062A290
/* 8062A288  38 03 FF FF */	addi r0, r3, -1
/* 8062A28C  B0 04 00 00 */	sth r0, 0(r4)
lbl_8062A290:
/* 8062A290  48 00 42 A1 */	bl sAdo_BgmFadeoutCheck
/* 8062A294  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8062A298  28 00 00 01 */	cmplwi r0, 1
/* 8062A29C  41 82 00 14 */	beq lbl_8062A2B0
/* 8062A2A0  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A2A4  A0 03 39 58 */	lhz r0, struct_81233958+0x0@l(r3)  /* 0x81233958@l */
/* 8062A2A8  28 00 00 00 */	cmplwi r0, 0
/* 8062A2AC  40 82 00 10 */	bne lbl_8062A2BC
lbl_8062A2B0:
/* 8062A2B0  7F C3 F3 78 */	mr r3, r30
/* 8062A2B4  4B FF FD 5D */	bl Game_play_change_scene_move_end
/* 8062A2B8  48 00 00 64 */	b lbl_8062A31C
lbl_8062A2BC:
/* 8062A2BC  3B E0 00 01 */	li r31, 1
/* 8062A2C0  48 00 00 5C */	b lbl_8062A31C
lbl_8062A2C4:
/* 8062A2C4  7F C3 F3 78 */	mr r3, r30
/* 8062A2C8  4B FF FD 49 */	bl Game_play_change_scene_move_end
/* 8062A2CC  48 00 00 50 */	b lbl_8062A31C
lbl_8062A2D0:
/* 8062A2D0  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A2D4  38 83 39 58 */	addi r4, r3, struct_81233958+0x0@l /* 0x81233958@l */
/* 8062A2D8  A0 64 00 00 */	lhz r3, 0(r4)
/* 8062A2DC  28 03 00 00 */	cmplwi r3, 0
/* 8062A2E0  41 82 00 0C */	beq lbl_8062A2EC
/* 8062A2E4  38 03 FF FF */	addi r0, r3, -1
/* 8062A2E8  B0 04 00 00 */	sth r0, 0(r4)
lbl_8062A2EC:
/* 8062A2EC  48 00 42 45 */	bl sAdo_BgmFadeoutCheck
/* 8062A2F0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8062A2F4  28 00 00 01 */	cmplwi r0, 1
/* 8062A2F8  41 82 00 14 */	beq lbl_8062A30C
/* 8062A2FC  3C 60 81 23 */	lis r3, struct_81233958+0x0@ha /* 0x81233958@ha */
/* 8062A300  A0 03 39 58 */	lhz r0, struct_81233958+0x0@l(r3)  /* 0x81233958@l */
/* 8062A304  28 00 00 00 */	cmplwi r0, 0
/* 8062A308  40 82 00 10 */	bne lbl_8062A318
lbl_8062A30C:
/* 8062A30C  7F C3 F3 78 */	mr r3, r30
/* 8062A310  4B FF FD 01 */	bl Game_play_change_scene_move_end
/* 8062A314  48 00 00 08 */	b lbl_8062A31C
lbl_8062A318:
/* 8062A318  3B E0 00 01 */	li r31, 1
lbl_8062A31C:
/* 8062A31C  7F E0 07 35 */	extsh. r0, r31
/* 8062A320  40 82 00 2C */	bne lbl_8062A34C
/* 8062A324  38 00 00 00 */	li r0, 0
/* 8062A328  98 1E 20 D0 */	stb r0, 0x20d0(r30)
/* 8062A32C  48 00 00 20 */	b lbl_8062A34C
lbl_8062A330:
/* 8062A330  3C 60 81 1C */	lis r3, game_GameFrame@ha /* 0x811C530C@ha */
/* 8062A334  81 9D 02 24 */	lwz r12, 0x224(r29)
/* 8062A338  38 83 53 0C */	addi r4, r3, game_GameFrame@l /* 0x811C530C@l */
/* 8062A33C  7F A3 EB 78 */	mr r3, r29
/* 8062A340  88 84 00 00 */	lbz r4, 0(r4)
/* 8062A344  7D 89 03 A6 */	mtctr r12
/* 8062A348  4E 80 04 21 */	bctrl 
lbl_8062A34C:
/* 8062A34C  39 61 00 20 */	addi r11, r1, 0x20
/* 8062A350  4B A7 0B CD */	bl func_8009AF1C
/* 8062A354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062A358  7C 08 03 A6 */	mtlr r0
/* 8062A35C  38 21 00 20 */	addi r1, r1, 0x20
/* 8062A360  4E 80 00 20 */	blr 
