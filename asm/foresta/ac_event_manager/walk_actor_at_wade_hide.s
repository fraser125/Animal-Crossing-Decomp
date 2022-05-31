lbl_8041CFD8:
/* 8041CFD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041CFDC  7C 08 02 A6 */	mflr r0
/* 8041CFE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041CFE4  39 61 00 40 */	addi r11, r1, 0x40
/* 8041CFE8  4B C7 DE DD */	bl func_8009AEC4
/* 8041CFEC  7C 79 1B 78 */	mr r25, r3
/* 8041CFF0  7C 9A 23 78 */	mr r26, r4
/* 8041CFF4  7C BB 2B 78 */	mr r27, r5
/* 8041CFF8  4B F8 7C D5 */	bl mFI_GetFieldId
/* 8041CFFC  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041D000  40 82 01 30 */	bne lbl_8041D130
/* 8041D004  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041D008  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 8041D00C  4B F8 12 A1 */	bl mEv_get_common_place
/* 8041D010  7C 7C 1B 79 */	or. r28, r3, r3
/* 8041D014  41 82 01 1C */	beq lbl_8041D130
/* 8041D018  7F 84 E3 78 */	mr r4, r28
/* 8041D01C  38 61 00 08 */	addi r3, r1, 8
/* 8041D020  38 A0 00 14 */	li r5, 0x14
/* 8041D024  4B BE 64 6D */	bl memcpy
/* 8041D028  3C 60 81 1D */	lis r3, fluc@ha /* 0x811CB96C@ha */
/* 8041D02C  57 7E 06 3E */	clrlwi r30, r27, 0x18
/* 8041D030  3B A1 00 10 */	addi r29, r1, 0x10
/* 8041D034  3B 60 00 03 */	li r27, 3
/* 8041D038  3B E3 B9 6C */	addi r31, r3, fluc@l /* 0x811CB96C@l */
lbl_8041D03C:
/* 8041D03C  80 BA 00 00 */	lwz r5, 0(r26)
/* 8041D040  7F 23 CB 78 */	mr r3, r25
/* 8041D044  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041D048  7F 44 D3 78 */	mr r4, r26
/* 8041D04C  A0 E1 00 18 */	lhz r7, 0x18(r1)
/* 8041D050  7F A6 EB 78 */	mr r6, r29
/* 8041D054  7C 00 2A 14 */	add r0, r0, r5
/* 8041D058  38 A1 00 08 */	addi r5, r1, 8
/* 8041D05C  7C 00 3A 14 */	add r0, r0, r7
/* 8041D060  7C E0 F2 14 */	add r7, r0, r30
/* 8041D064  7C FB 3A 14 */	add r7, r27, r7
/* 8041D068  4B FF E6 05 */	bl search_empty_hide_unit
/* 8041D06C  2C 03 00 00 */	cmpwi r3, 0
/* 8041D070  40 82 00 50 */	bne lbl_8041D0C0
/* 8041D074  7F 23 CB 78 */	mr r3, r25
/* 8041D078  7F 44 D3 78 */	mr r4, r26
/* 8041D07C  7F A6 EB 78 */	mr r6, r29
/* 8041D080  38 A1 00 08 */	addi r5, r1, 8
/* 8041D084  4B FF E9 D1 */	bl search_empty_hide_unit_player
/* 8041D088  2C 03 00 00 */	cmpwi r3, 0
/* 8041D08C  40 82 00 34 */	bne lbl_8041D0C0
/* 8041D090  7F 23 CB 78 */	mr r3, r25
/* 8041D094  7F 44 D3 78 */	mr r4, r26
/* 8041D098  7F A6 EB 78 */	mr r6, r29
/* 8041D09C  38 A1 00 08 */	addi r5, r1, 8
/* 8041D0A0  4B FF E9 DD */	bl search_empty_hide_unit_toudai
/* 8041D0A4  2C 03 00 00 */	cmpwi r3, 0
/* 8041D0A8  40 82 00 18 */	bne lbl_8041D0C0
/* 8041D0AC  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041D0B0  38 80 00 20 */	li r4, 0x20
/* 8041D0B4  4B F8 09 1D */	bl mEv_set_status
/* 8041D0B8  38 60 00 00 */	li r3, 0
/* 8041D0BC  48 00 00 78 */	b lbl_8041D134
lbl_8041D0C0:
/* 8041D0C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8041D0C4  80 1C 00 04 */	lwz r0, 4(r28)
/* 8041D0C8  7C 03 00 00 */	cmpw r3, r0
/* 8041D0CC  40 82 00 4C */	bne lbl_8041D118
/* 8041D0D0  80 61 00 08 */	lwz r3, 8(r1)
/* 8041D0D4  80 1C 00 00 */	lwz r0, 0(r28)
/* 8041D0D8  7C 03 00 00 */	cmpw r3, r0
/* 8041D0DC  40 82 00 3C */	bne lbl_8041D118
/* 8041D0E0  2C 1B 00 03 */	cmpwi r27, 3
/* 8041D0E4  40 80 00 2C */	bge lbl_8041D110
/* 8041D0E8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8041D0EC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8041D0F0  7C 03 00 00 */	cmpw r3, r0
/* 8041D0F4  40 82 00 24 */	bne lbl_8041D118
/* 8041D0F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8041D0FC  80 1C 00 08 */	lwz r0, 8(r28)
/* 8041D100  7C 03 00 00 */	cmpw r3, r0
/* 8041D104  40 82 00 14 */	bne lbl_8041D118
/* 8041D108  2C 1B 00 02 */	cmpwi r27, 2
/* 8041D10C  41 80 00 0C */	blt lbl_8041D118
lbl_8041D110:
/* 8041D110  37 7B FF FF */	addic. r27, r27, -1
/* 8041D114  41 81 FF 28 */	bgt lbl_8041D03C
lbl_8041D118:
/* 8041D118  7F 83 E3 78 */	mr r3, r28
/* 8041D11C  38 81 00 08 */	addi r4, r1, 8
/* 8041D120  38 A0 00 14 */	li r5, 0x14
/* 8041D124  4B BE 63 6D */	bl memcpy
/* 8041D128  7F 83 E3 78 */	mr r3, r28
/* 8041D12C  48 00 00 08 */	b lbl_8041D134
lbl_8041D130:
/* 8041D130  38 60 00 00 */	li r3, 0
lbl_8041D134:
/* 8041D134  39 61 00 40 */	addi r11, r1, 0x40
/* 8041D138  4B C7 DD D9 */	bl func_8009AF10
/* 8041D13C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041D140  7C 08 03 A6 */	mtlr r0
/* 8041D144  38 21 00 40 */	addi r1, r1, 0x40
/* 8041D148  4E 80 00 20 */	blr 
