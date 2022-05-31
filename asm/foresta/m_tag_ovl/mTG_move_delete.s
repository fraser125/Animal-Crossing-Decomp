lbl_805FD084:
/* 805FD084  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805FD088  7C 08 02 A6 */	mflr r0
/* 805FD08C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805FD090  39 61 00 30 */	addi r11, r1, 0x30
/* 805FD094  4B A9 DE 29 */	bl func_8009AEBC
/* 805FD098  7C 7C 1B 78 */	mr r28, r3
/* 805FD09C  7C 97 23 78 */	mr r23, r4
/* 805FD0A0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FD0A4  83 E3 09 88 */	lwz r31, 0x988(r3)
/* 805FD0A8  A8 7F 03 F8 */	lha r3, 0x3f8(r31)
/* 805FD0AC  38 03 FF FF */	addi r0, r3, -1
/* 805FD0B0  B0 1F 03 F8 */	sth r0, 0x3f8(r31)
/* 805FD0B4  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 805FD0B8  2C 00 00 00 */	cmpwi r0, 0
/* 805FD0BC  40 82 02 90 */	bne lbl_805FD34C
/* 805FD0C0  7E E3 BB 78 */	mr r3, r23
/* 805FD0C4  4B FF 2A 9D */	bl mTG_get_table_idx
/* 805FD0C8  80 17 00 38 */	lwz r0, 0x38(r23)
/* 805FD0CC  7C 78 1B 78 */	mr r24, r3
/* 805FD0D0  2C 00 00 00 */	cmpwi r0, 0
/* 805FD0D4  40 82 00 BC */	bne lbl_805FD190
/* 805FD0D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FD0DC  57 05 08 3C */	slwi r5, r24, 1
/* 805FD0E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FD0E4  7F 04 C3 78 */	mr r4, r24
/* 805FD0E8  3C 63 00 02 */	addis r3, r3, 2
/* 805FD0EC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805FD0F0  80 C3 00 88 */	lwz r6, 0x88(r3)
/* 805FD0F4  7C C0 2C 30 */	srw r0, r6, r5
/* 805FD0F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805FD0FC  41 82 00 24 */	beq lbl_805FD120
/* 805FD100  38 00 00 03 */	li r0, 3
/* 805FD104  7C 9F C2 14 */	add r4, r31, r24
/* 805FD108  7C 05 28 30 */	slw r5, r0, r5
/* 805FD10C  38 00 00 00 */	li r0, 0
/* 805FD110  7C C5 28 78 */	andc r5, r6, r5
/* 805FD114  90 A3 00 88 */	stw r5, 0x88(r3)
/* 805FD118  98 04 03 E3 */	stb r0, 0x3e3(r4)
/* 805FD11C  48 00 00 68 */	b lbl_805FD184
lbl_805FD120:
/* 805FD120  7C A3 2A 14 */	add r5, r3, r5
/* 805FD124  A0 05 00 68 */	lhz r0, 0x68(r5)
/* 805FD128  28 00 25 23 */	cmplwi r0, 0x2523
/* 805FD12C  41 80 00 0C */	blt lbl_805FD138
/* 805FD130  28 00 25 2F */	cmplwi r0, 0x252f
/* 805FD134  40 81 00 0C */	ble lbl_805FD140
lbl_805FD138:
/* 805FD138  28 00 25 30 */	cmplwi r0, 0x2530
/* 805FD13C  40 82 00 20 */	bne lbl_805FD15C
lbl_805FD140:
/* 805FD140  38 A0 00 00 */	li r5, 0
/* 805FD144  38 C0 00 00 */	li r6, 0
/* 805FD148  4B DE 3C E1 */	bl mPr_SetPossessionItem
/* 805FD14C  7C 7F C2 14 */	add r3, r31, r24
/* 805FD150  38 00 00 00 */	li r0, 0
/* 805FD154  98 03 03 E3 */	stb r0, 0x3e3(r3)
/* 805FD158  48 00 00 2C */	b lbl_805FD184
lbl_805FD15C:
/* 805FD15C  3B 1F 03 E3 */	addi r24, r31, 0x3e3
/* 805FD160  38 A0 00 00 */	li r5, 0
/* 805FD164  38 C0 00 00 */	li r6, 0
/* 805FD168  4B DE 3C C1 */	bl mPr_SetPossessionItem
/* 805FD16C  38 00 00 0F */	li r0, 0xf
/* 805FD170  38 60 00 00 */	li r3, 0
/* 805FD174  7C 09 03 A6 */	mtctr r0
lbl_805FD178:
/* 805FD178  98 78 00 00 */	stb r3, 0(r24)
/* 805FD17C  3B 18 00 01 */	addi r24, r24, 1
/* 805FD180  42 00 FF F8 */	bdnz lbl_805FD178
lbl_805FD184:
/* 805FD184  7F 83 E3 78 */	mr r3, r28
/* 805FD188  4B FF 44 15 */	bl mTG_init_tag_data_item_win
/* 805FD18C  48 00 01 B8 */	b lbl_805FD344
lbl_805FD190:
/* 805FD190  A8 9F 05 E4 */	lha r4, 0x5e4(r31)
/* 805FD194  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805FD198  7C 80 07 35 */	extsh. r0, r4
/* 805FD19C  83 C3 09 98 */	lwz r30, 0x998(r3)
/* 805FD1A0  83 A3 09 C0 */	lwz r29, 0x9c0(r3)
/* 805FD1A4  40 82 00 50 */	bne lbl_805FD1F4
/* 805FD1A8  28 1E 00 00 */	cmplwi r30, 0
/* 805FD1AC  41 82 00 10 */	beq lbl_805FD1BC
/* 805FD1B0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 805FD1B4  2C 00 00 00 */	cmpwi r0, 0
/* 805FD1B8  41 82 00 0C */	beq lbl_805FD1C4
lbl_805FD1BC:
/* 805FD1BC  28 1E 00 00 */	cmplwi r30, 0
/* 805FD1C0  40 82 00 34 */	bne lbl_805FD1F4
lbl_805FD1C4:
/* 805FD1C4  28 1D 00 00 */	cmplwi r29, 0
/* 805FD1C8  41 82 00 10 */	beq lbl_805FD1D8
/* 805FD1CC  80 1D 0B B8 */	lwz r0, 0xbb8(r29)
/* 805FD1D0  2C 00 00 00 */	cmpwi r0, 0
/* 805FD1D4  41 82 00 0C */	beq lbl_805FD1E0
lbl_805FD1D8:
/* 805FD1D8  28 1D 00 00 */	cmplwi r29, 0
/* 805FD1DC  40 82 00 18 */	bne lbl_805FD1F4
lbl_805FD1E0:
/* 805FD1E0  7F 83 E3 78 */	mr r3, r28
/* 805FD1E4  38 80 00 00 */	li r4, 0
/* 805FD1E8  4B FF 2D D9 */	bl mTG_get_mail_pointer
/* 805FD1EC  4B DB F5 15 */	bl mMl_clear_mail
/* 805FD1F0  48 00 01 54 */	b lbl_805FD344
lbl_805FD1F4:
/* 805FD1F4  2C 04 00 01 */	cmpwi r4, 1
/* 805FD1F8  40 82 00 7C */	bne lbl_805FD274
/* 805FD1FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FD200  3A E0 00 00 */	li r23, 0
/* 805FD204  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FD208  3B 60 00 00 */	li r27, 0
/* 805FD20C  3F 23 00 02 */	addis r25, r3, 2
/* 805FD210  3B 40 00 01 */	li r26, 1
lbl_805FD214:
/* 805FD214  80 19 61 3C */	lwz r0, 0x613c(r25)
/* 805FD218  38 7B 04 E0 */	addi r3, r27, 0x4e0
/* 805FD21C  7C 60 1A 14 */	add r3, r0, r3
/* 805FD220  4B DB F5 81 */	bl mMl_check_not_used_mail
/* 805FD224  2C 03 00 01 */	cmpwi r3, 1
/* 805FD228  41 82 00 30 */	beq lbl_805FD258
/* 805FD22C  A0 1F 05 E2 */	lhz r0, 0x5e2(r31)
/* 805FD230  7F 58 B8 30 */	slw r24, r26, r23
/* 805FD234  7C 00 C0 39 */	and. r0, r0, r24
/* 805FD238  41 82 00 20 */	beq lbl_805FD258
/* 805FD23C  80 19 61 3C */	lwz r0, 0x613c(r25)
/* 805FD240  38 7B 04 E0 */	addi r3, r27, 0x4e0
/* 805FD244  7C 60 1A 14 */	add r3, r0, r3
/* 805FD248  4B DB F4 B9 */	bl mMl_clear_mail
/* 805FD24C  A0 1F 05 E2 */	lhz r0, 0x5e2(r31)
/* 805FD250  7C 00 C0 78 */	andc r0, r0, r24
/* 805FD254  B0 1F 05 E2 */	sth r0, 0x5e2(r31)
lbl_805FD258:
/* 805FD258  3A F7 00 01 */	addi r23, r23, 1
/* 805FD25C  3B 7B 01 2A */	addi r27, r27, 0x12a
/* 805FD260  2C 17 00 0A */	cmpwi r23, 0xa
/* 805FD264  41 80 FF B0 */	blt lbl_805FD214
/* 805FD268  38 00 00 00 */	li r0, 0
/* 805FD26C  B0 1F 05 E4 */	sth r0, 0x5e4(r31)
/* 805FD270  B0 1F 05 E2 */	sth r0, 0x5e2(r31)
lbl_805FD274:
/* 805FD274  28 1E 00 00 */	cmplwi r30, 0
/* 805FD278  41 82 00 64 */	beq lbl_805FD2DC
/* 805FD27C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 805FD280  2C 00 00 01 */	cmpwi r0, 1
/* 805FD284  40 82 00 58 */	bne lbl_805FD2DC
/* 805FD288  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FD28C  3A E0 00 00 */	li r23, 0
/* 805FD290  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FD294  3B E0 00 00 */	li r31, 0
/* 805FD298  3F 23 00 02 */	addis r25, r3, 2
/* 805FD29C  3B 60 00 01 */	li r27, 1
lbl_805FD2A0:
/* 805FD2A0  A0 7E 00 08 */	lhz r3, 8(r30)
/* 805FD2A4  7F 60 B8 30 */	slw r0, r27, r23
/* 805FD2A8  7C 60 00 39 */	and. r0, r3, r0
/* 805FD2AC  41 82 00 14 */	beq lbl_805FD2C0
/* 805FD2B0  80 19 61 40 */	lwz r0, 0x6140(r25)
/* 805FD2B4  38 7F 1A 30 */	addi r3, r31, 0x1a30
/* 805FD2B8  7C 60 1A 14 */	add r3, r0, r3
/* 805FD2BC  4B DB F4 45 */	bl mMl_clear_mail
lbl_805FD2C0:
/* 805FD2C0  3A F7 00 01 */	addi r23, r23, 1
/* 805FD2C4  3B FF 01 2A */	addi r31, r31, 0x12a
/* 805FD2C8  2C 17 00 0A */	cmpwi r23, 0xa
/* 805FD2CC  41 80 FF D4 */	blt lbl_805FD2A0
/* 805FD2D0  38 00 00 00 */	li r0, 0
/* 805FD2D4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805FD2D8  B0 1E 00 08 */	sth r0, 8(r30)
lbl_805FD2DC:
/* 805FD2DC  28 1D 00 00 */	cmplwi r29, 0
/* 805FD2E0  41 82 00 64 */	beq lbl_805FD344
/* 805FD2E4  80 1D 0B B8 */	lwz r0, 0xbb8(r29)
/* 805FD2E8  2C 00 00 01 */	cmpwi r0, 1
/* 805FD2EC  40 82 00 58 */	bne lbl_805FD344
/* 805FD2F0  88 1D 0B A8 */	lbz r0, 0xba8(r29)
/* 805FD2F4  3A E0 00 00 */	li r23, 0
/* 805FD2F8  3B C0 00 00 */	li r30, 0
/* 805FD2FC  3B 60 00 01 */	li r27, 1
/* 805FD300  1F 20 17 48 */	mulli r25, r0, 0x1748
lbl_805FD304:
/* 805FD304  80 7D 0B B4 */	lwz r3, 0xbb4(r29)
/* 805FD308  7F 60 B8 30 */	slw r0, r27, r23
/* 805FD30C  7C 60 00 39 */	and. r0, r3, r0
/* 805FD310  41 82 00 18 */	beq lbl_805FD328
/* 805FD314  7C 79 F2 14 */	add r3, r25, r30
/* 805FD318  80 1D 00 00 */	lwz r0, 0(r29)
/* 805FD31C  38 63 00 64 */	addi r3, r3, 0x64
/* 805FD320  7C 60 1A 14 */	add r3, r0, r3
/* 805FD324  4B DB F3 DD */	bl mMl_clear_mail
lbl_805FD328:
/* 805FD328  3A F7 00 01 */	addi r23, r23, 1
/* 805FD32C  3B DE 01 2A */	addi r30, r30, 0x12a
/* 805FD330  2C 17 00 14 */	cmpwi r23, 0x14
/* 805FD334  41 80 FF D0 */	blt lbl_805FD304
/* 805FD338  38 00 00 00 */	li r0, 0
/* 805FD33C  90 1D 0B B4 */	stw r0, 0xbb4(r29)
/* 805FD340  90 1D 0B B8 */	stw r0, 0xbb8(r29)
lbl_805FD344:
/* 805FD344  7F 83 E3 78 */	mr r3, r28
/* 805FD348  4B FF 42 55 */	bl mTG_init_tag_data_item_win
lbl_805FD34C:
/* 805FD34C  39 61 00 30 */	addi r11, r1, 0x30
/* 805FD350  4B A9 DB B9 */	bl func_8009AF08
/* 805FD354  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805FD358  7C 08 03 A6 */	mtlr r0
/* 805FD35C  38 21 00 30 */	addi r1, r1, 0x30
/* 805FD360  4E 80 00 20 */	blr 
