lbl_8049B0E8:
/* 8049B0E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8049B0EC  7C 08 02 A6 */	mflr r0
/* 8049B0F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8049B0F4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8049B0F8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8049B0FC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8049B100  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8049B104  39 61 00 40 */	addi r11, r1, 0x40
/* 8049B108  4B BF FD C5 */	bl func_8009AECC
/* 8049B10C  7C 7B 1B 78 */	mr r27, r3
/* 8049B110  7C 9F 23 78 */	mr r31, r4
/* 8049B114  3B 80 00 00 */	li r28, 0
/* 8049B118  38 60 00 40 */	li r3, 0x40
/* 8049B11C  38 80 00 01 */	li r4, 1
/* 8049B120  4B F0 29 E1 */	bl mEv_check_status
/* 8049B124  2C 03 00 01 */	cmpwi r3, 1
/* 8049B128  40 82 00 FC */	bne lbl_8049B224
/* 8049B12C  80 9B 41 80 */	lwz r4, 0x4180(r27)
/* 8049B130  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 8049B134  80 1B 41 84 */	lwz r0, 0x4184(r27)
/* 8049B138  38 61 00 0C */	addi r3, r1, 0xc
/* 8049B13C  54 9D 06 3E */	clrlwi r29, r4, 0x18
/* 8049B140  38 81 00 08 */	addi r4, r1, 8
/* 8049B144  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8049B148  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 8049B14C  4B F0 B2 B5 */	bl mFI_BlockKind2BkNum
/* 8049B150  2C 03 00 01 */	cmpwi r3, 1
/* 8049B154  40 82 00 D0 */	bne lbl_8049B224
/* 8049B158  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8049B15C  7C 03 E8 00 */	cmpw r3, r29
/* 8049B160  40 82 00 C4 */	bne lbl_8049B224
/* 8049B164  80 81 00 08 */	lwz r4, 8(r1)
/* 8049B168  7C 04 F0 00 */	cmpw r4, r30
/* 8049B16C  40 82 00 B8 */	bne lbl_8049B224
/* 8049B170  38 00 00 05 */	li r0, 5
/* 8049B174  3B C0 00 00 */	li r30, 0
/* 8049B178  7C 09 03 A6 */	mtctr r0
lbl_8049B17C:
/* 8049B17C  7F BF F2 14 */	add r29, r31, r30
/* 8049B180  88 1D 00 00 */	lbz r0, 0(r29)
/* 8049B184  7C 03 00 00 */	cmpw r3, r0
/* 8049B188  40 82 00 94 */	bne lbl_8049B21C
/* 8049B18C  88 1D 00 05 */	lbz r0, 5(r29)
/* 8049B190  7C 04 00 00 */	cmpw r4, r0
/* 8049B194  40 82 00 88 */	bne lbl_8049B21C
/* 8049B198  3C 80 80 64 */	lis r4, lit_635@ha /* 0x80644D2C@ha */
/* 8049B19C  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80644D1C@ha */
/* 8049B1A0  C3 C4 4D 2C */	lfs f30, lit_635@l(r4)  /* 0x80644D2C@l */
/* 8049B1A4  C3 E3 4D 1C */	lfs f31, lit_526@l(r3)  /* 0x80644D1C@l */
lbl_8049B1A8:
/* 8049B1A8  4B BC 1B 4D */	bl fqrand
/* 8049B1AC  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8049B1B0  FC 00 00 1E */	fctiwz f0, f0
/* 8049B1B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8049B1B8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8049B1BC  3B 83 00 01 */	addi r28, r3, 1
/* 8049B1C0  4B BC 1B 35 */	bl fqrand
/* 8049B1C4  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8049B1C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049B1CC  7C 1C 00 00 */	cmpw r28, r0
/* 8049B1D0  FC 00 00 1E */	fctiwz f0, f0
/* 8049B1D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8049B1D8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8049B1DC  3B 63 00 01 */	addi r27, r3, 1
/* 8049B1E0  41 82 FF C8 */	beq lbl_8049B1A8
/* 8049B1E4  80 01 00 08 */	lwz r0, 8(r1)
/* 8049B1E8  7C 1B 00 00 */	cmpw r27, r0
/* 8049B1EC  41 82 FF BC */	beq lbl_8049B1A8
/* 8049B1F0  7F 83 E3 78 */	mr r3, r28
/* 8049B1F4  7F 64 DB 78 */	mr r4, r27
/* 8049B1F8  7F E5 FB 78 */	mr r5, r31
/* 8049B1FC  4B FF FE A9 */	bl aSOI_check_hitodama_block_data
/* 8049B200  2C 03 00 01 */	cmpwi r3, 1
/* 8049B204  40 82 FF A4 */	bne lbl_8049B1A8
/* 8049B208  9B 9D 00 00 */	stb r28, 0(r29)
/* 8049B20C  7C 7F F2 14 */	add r3, r31, r30
/* 8049B210  3B 80 00 01 */	li r28, 1
/* 8049B214  9B 63 00 05 */	stb r27, 5(r3)
/* 8049B218  48 00 00 0C */	b lbl_8049B224
lbl_8049B21C:
/* 8049B21C  3B DE 00 01 */	addi r30, r30, 1
/* 8049B220  42 00 FF 5C */	bdnz lbl_8049B17C
lbl_8049B224:
/* 8049B224  7F 83 E3 78 */	mr r3, r28
/* 8049B228  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8049B22C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8049B230  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8049B234  39 61 00 40 */	addi r11, r1, 0x40
/* 8049B238  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8049B23C  4B BF FC DD */	bl func_8009AF18
/* 8049B240  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8049B244  7C 08 03 A6 */	mtlr r0
/* 8049B248  38 21 00 60 */	addi r1, r1, 0x60
/* 8049B24C  4E 80 00 20 */	blr 
