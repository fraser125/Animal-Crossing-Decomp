lbl_8039BB64:
/* 8039BB64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8039BB68  7C 08 02 A6 */	mflr r0
/* 8039BB6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8039BB70  39 61 00 50 */	addi r11, r1, 0x50
/* 8039BB74  4B CF F3 49 */	bl func_8009AEBC
/* 8039BB78  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039BB7C  7C 77 1B 78 */	mr r23, r3
/* 8039BB80  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8039BB84  3B 00 00 00 */	li r24, 0
/* 8039BB88  3F 23 00 02 */	addis r25, r3, 2
/* 8039BB8C  80 19 60 04 */	lwz r0, 0x6004(r25)
/* 8039BB90  3B 59 04 98 */	addi r26, r25, 0x498
/* 8039BB94  2C 00 00 12 */	cmpwi r0, 0x12
/* 8039BB98  41 82 00 14 */	beq lbl_8039BBAC
/* 8039BB9C  40 80 00 30 */	bge lbl_8039BBCC
/* 8039BBA0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8039BBA4  41 82 00 08 */	beq lbl_8039BBAC
/* 8039BBA8  48 00 00 24 */	b lbl_8039BBCC
lbl_8039BBAC:
/* 8039BBAC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8039BBB0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8039BBB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8039BBB8  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8039BBBC  28 00 00 00 */	cmplwi r0, 0
/* 8039BBC0  40 82 00 0C */	bne lbl_8039BBCC
/* 8039BBC4  38 60 00 00 */	li r3, 0
/* 8039BBC8  48 00 03 54 */	b lbl_8039BF1C
lbl_8039BBCC:
/* 8039BBCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039BBD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039BBD4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8039BBD8  38 03 FF F7 */	addi r0, r3, -9
/* 8039BBDC  28 00 00 14 */	cmplwi r0, 0x14
/* 8039BBE0  41 81 00 44 */	bgt lbl_8039BC24
/* 8039BBE4  3C 60 80 65 */	lis r3, lit_1024@ha /* 0x80651FEC@ha */
/* 8039BBE8  54 00 10 3A */	slwi r0, r0, 2
/* 8039BBEC  38 63 1F EC */	addi r3, r3, lit_1024@l /* 0x80651FEC@l */
/* 8039BBF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8039BBF4  7C 09 03 A6 */	mtctr r0
/* 8039BBF8  4E 80 04 20 */	bctr 
lbl_8039BBFC:
/* 8039BBFC  38 60 00 00 */	li r3, 0
/* 8039BC00  48 00 03 1C */	b lbl_8039BF1C
lbl_8039BC04:
/* 8039BC04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039BC08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039BC0C  3C 63 00 02 */	addis r3, r3, 2
/* 8039BC10  88 03 05 54 */	lbz r0, 0x554(r3)
/* 8039BC14  28 00 00 4E */	cmplwi r0, 0x4e
/* 8039BC18  40 82 00 0C */	bne lbl_8039BC24
/* 8039BC1C  38 60 00 00 */	li r3, 0
/* 8039BC20  48 00 02 FC */	b lbl_8039BF1C
lbl_8039BC24:
/* 8039BC24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039BC28  39 80 00 00 */	li r12, 0
/* 8039BC2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039BC30  A0 D9 61 26 */	lhz r6, 0x6126(r25)
/* 8039BC34  3F 83 00 02 */	addis r28, r3, 2
/* 8039BC38  38 E0 00 64 */	li r7, 0x64
/* 8039BC3C  AB BC 13 98 */	lha r29, 0x1398(r28)
/* 8039BC40  7C A6 3B D6 */	divw r5, r6, r7
/* 8039BC44  A3 7C 05 5E */	lhz r27, 0x55e(r28)
/* 8039BC48  A1 3C 05 62 */	lhz r9, 0x562(r28)
/* 8039BC4C  57 6A 42 2E */	rlwinm r10, r27, 8, 8, 0x17
/* 8039BC50  A1 7C 05 60 */	lhz r11, 0x560(r28)
/* 8039BC54  55 20 42 2E */	rlwinm r0, r9, 8, 8, 0x17
/* 8039BC58  7C 7D 3B D6 */	divw r3, r29, r7
/* 8039BC5C  91 81 00 14 */	stw r12, 0x14(r1)
/* 8039BC60  88 99 61 25 */	lbz r4, 0x6125(r25)
/* 8039BC64  7C 1B 48 40 */	cmplw r27, r9
/* 8039BC68  89 19 61 23 */	lbz r8, 0x6123(r25)
/* 8039BC6C  98 81 00 14 */	stb r4, 0x14(r1)
/* 8039BC70  99 01 00 15 */	stb r8, 0x15(r1)
/* 8039BC74  7D 23 39 D6 */	mullw r9, r3, r7
/* 8039BC78  88 99 61 22 */	lbz r4, 0x6122(r25)
/* 8039BC7C  A1 01 00 14 */	lhz r8, 0x14(r1)
/* 8039BC80  91 41 00 10 */	stw r10, 0x10(r1)
/* 8039BC84  88 7C 05 54 */	lbz r3, 0x554(r28)
/* 8039BC88  7C A5 39 D6 */	mullw r5, r5, r7
/* 8039BC8C  55 07 40 2E */	slwi r7, r8, 8
/* 8039BC90  B1 61 00 18 */	sth r11, 0x18(r1)
/* 8039BC94  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8039BC98  7C E9 E8 50 */	subf r7, r9, r29
/* 8039BC9C  7C A5 30 50 */	subf r5, r5, r6
/* 8039BCA0  98 E1 00 10 */	stb r7, 0x10(r1)
/* 8039BCA4  98 A1 00 0C */	stb r5, 0xc(r1)
/* 8039BCA8  98 81 00 0F */	stb r4, 0xf(r1)
/* 8039BCAC  90 01 00 08 */	stw r0, 8(r1)
/* 8039BCB0  40 81 00 10 */	ble lbl_8039BCC0
/* 8039BCB4  7C 1B 40 40 */	cmplw r27, r8
/* 8039BCB8  40 81 00 08 */	ble lbl_8039BCC0
/* 8039BCBC  39 80 00 01 */	li r12, 1
lbl_8039BCC0:
/* 8039BCC0  30 0C FF FF */	addic r0, r12, -1
/* 8039BCC4  7C 00 61 10 */	subfe r0, r0, r12
/* 8039BCC8  7C 07 02 14 */	add r0, r7, r0
/* 8039BCCC  98 01 00 08 */	stb r0, 8(r1)
/* 8039BCD0  4B FF FE 29 */	bl get_special_event_end_time
/* 8039BCD4  98 61 00 0B */	stb r3, 0xb(r1)
/* 8039BCD8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8039BCDC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8039BCE0  80 A1 00 08 */	lwz r5, 8(r1)
/* 8039BCE4  4B FF F5 0D */	bl check_ymdh_range
/* 8039BCE8  2C 03 00 00 */	cmpwi r3, 0
/* 8039BCEC  41 82 00 0C */	beq lbl_8039BCF8
/* 8039BCF0  2C 17 00 00 */	cmpwi r23, 0
/* 8039BCF4  41 82 02 24 */	beq lbl_8039BF18
lbl_8039BCF8:
/* 8039BCF8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039BCFC  7F 43 D3 78 */	mr r3, r26
/* 8039BD00  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039BD04  63 18 00 01 */	ori r24, r24, 1
/* 8039BD08  3C 84 00 02 */	addis r4, r4, 2
/* 8039BD0C  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8039BD10  A2 E4 00 10 */	lhz r23, 0x10(r4)
/* 8039BD14  4B FF EB 65 */	bl func_8039A878
/* 8039BD18  88 B9 61 25 */	lbz r5, 0x6125(r25)
/* 8039BD1C  38 F7 00 01 */	addi r7, r23, 1
/* 8039BD20  A0 19 61 26 */	lhz r0, 0x6126(r25)
/* 8039BD24  38 60 00 0B */	li r3, 0xb
/* 8039BD28  88 D9 61 23 */	lbz r6, 0x6123(r25)
/* 8039BD2C  38 80 00 A4 */	li r4, 0xa4
/* 8039BD30  7C 05 00 50 */	subf r0, r5, r0
/* 8039BD34  88 B9 61 22 */	lbz r5, 0x6122(r25)
/* 8039BD38  7C 00 32 14 */	add r0, r0, r6
/* 8039BD3C  7E E0 2A 14 */	add r23, r0, r5
/* 8039BD40  7E E7 BA 14 */	add r23, r7, r23
/* 8039BD44  4B FF F6 39 */	bl m_weekday2day
/* 8039BD48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8039BD4C  38 80 00 01 */	li r4, 1
/* 8039BD50  60 00 0B 00 */	ori r0, r0, 0xb00
/* 8039BD54  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8039BD58  4B FF F4 B9 */	bl after_n_day
/* 8039BD5C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039BD60  3C A0 80 65 */	lis r5, n_special_event_type@ha /* 0x80651ED8@ha */
/* 8039BD64  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8039BD68  3C 80 80 65 */	lis r4, special_event_types@ha /* 0x80651ECC@ha */
/* 8039BD6C  7C 7D 1B 78 */	mr r29, r3
/* 8039BD70  3B C5 1E D8 */	addi r30, r5, n_special_event_type@l /* 0x80651ED8@l */
/* 8039BD74  3F 66 00 02 */	addis r27, r6, 2
/* 8039BD78  3B E4 1E CC */	addi r31, r4, special_event_types@l /* 0x80651ECC@l */
lbl_8039BD7C:
/* 8039BD7C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8039BD80  88 1C 05 54 */	lbz r0, 0x554(r28)
/* 8039BD84  7C 77 23 D6 */	divw r3, r23, r4
/* 8039BD88  7C 63 21 D6 */	mullw r3, r3, r4
/* 8039BD8C  7C 63 B8 50 */	subf r3, r3, r23
/* 8039BD90  3A F7 00 01 */	addi r23, r23, 1
/* 8039BD94  54 63 08 3C */	slwi r3, r3, 1
/* 8039BD98  7F 5F 1A AE */	lhax r26, r31, r3
/* 8039BD9C  7C 1A 00 00 */	cmpw r26, r0
/* 8039BDA0  41 82 FF DC */	beq lbl_8039BD7C
/* 8039BDA4  48 00 62 B5 */	bl mFAs_SetFieldRank
/* 8039BDA8  48 00 63 49 */	bl mFAs_GetFieldRank
/* 8039BDAC  88 99 61 25 */	lbz r4, 0x6125(r25)
/* 8039BDB0  20 A3 00 07 */	subfic r5, r3, 7
/* 8039BDB4  88 19 61 20 */	lbz r0, 0x6120(r25)
/* 8039BDB8  88 79 61 23 */	lbz r3, 0x6123(r25)
/* 8039BDBC  7C 04 01 D6 */	mullw r0, r4, r0
/* 8039BDC0  7C 63 02 14 */	add r3, r3, r0
/* 8039BDC4  7C 03 2B D6 */	divw r0, r3, r5
/* 8039BDC8  7C 00 29 D6 */	mullw r0, r0, r5
/* 8039BDCC  7C 60 18 50 */	subf r3, r0, r3
/* 8039BDD0  38 83 00 01 */	addi r4, r3, 1
/* 8039BDD4  2C 04 00 01 */	cmpwi r4, 1
/* 8039BDD8  40 82 00 08 */	bne lbl_8039BDE0
/* 8039BDDC  38 80 00 02 */	li r4, 2
lbl_8039BDE0:
/* 8039BDE0  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8039BDE4  4B FF F4 2D */	bl after_n_day
/* 8039BDE8  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8039BDEC  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8039BDF0  B0 61 00 18 */	sth r3, 0x18(r1)
/* 8039BDF4  7C 00 20 40 */	cmplw r0, r4
/* 8039BDF8  41 81 00 18 */	bgt lbl_8039BE10
/* 8039BDFC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8039BE00  7C 04 00 40 */	cmplw r4, r0
/* 8039BE04  41 81 00 0C */	bgt lbl_8039BE10
/* 8039BE08  B3 A1 00 18 */	sth r29, 0x18(r1)
/* 8039BE0C  3B 40 00 4B */	li r26, 0x4b
lbl_8039BE10:
/* 8039BE10  7F 40 07 34 */	extsh r0, r26
/* 8039BE14  38 60 00 06 */	li r3, 6
/* 8039BE18  2C 00 00 4D */	cmpwi r0, 0x4d
/* 8039BE1C  B0 7B 05 66 */	sth r3, 0x566(r27)
/* 8039BE20  41 82 00 98 */	beq lbl_8039BEB8
/* 8039BE24  40 80 00 10 */	bge lbl_8039BE34
/* 8039BE28  2C 00 00 4B */	cmpwi r0, 0x4b
/* 8039BE2C  41 82 00 74 */	beq lbl_8039BEA0
/* 8039BE30  48 00 00 9C */	b lbl_8039BECC
lbl_8039BE34:
/* 8039BE34  2C 00 00 4F */	cmpwi r0, 0x4f
/* 8039BE38  40 80 00 94 */	bge lbl_8039BECC
/* 8039BE3C  88 61 00 18 */	lbz r3, 0x18(r1)
/* 8039BE40  4B FF F1 99 */	bl last_day_of_month
/* 8039BE44  88 01 00 19 */	lbz r0, 0x19(r1)
/* 8039BE48  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8039BE4C  7C 00 18 40 */	cmplw r0, r3
/* 8039BE50  41 82 FF 2C */	beq lbl_8039BD7C
/* 8039BE54  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 8039BE58  28 00 01 01 */	cmplwi r0, 0x101
/* 8039BE5C  41 80 00 0C */	blt lbl_8039BE68
/* 8039BE60  28 00 01 03 */	cmplwi r0, 0x103
/* 8039BE64  40 81 FF 18 */	ble lbl_8039BD7C
lbl_8039BE68:
/* 8039BE68  3C 60 20 00 */	lis r3, 0x2000
/* 8039BE6C  4B FF EB AD */	bl mEv_CheckEvent
/* 8039BE70  2C 03 00 01 */	cmpwi r3, 1
/* 8039BE74  41 82 FF 08 */	beq lbl_8039BD7C
/* 8039BE78  4B CC 0E 7D */	bl fqrand
/* 8039BE7C  3C 60 80 64 */	lis r3, data_80641E14@ha /* 0x80641E14@ha */
/* 8039BE80  C0 03 1E 14 */	lfs f0, data_80641E14@l(r3)  /* 0x80641E14@l */
/* 8039BE84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8039BE88  FC 00 00 1E */	fctiwz f0, f0
/* 8039BE8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8039BE90  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8039BE94  38 03 00 0C */	addi r0, r3, 0xc
/* 8039BE98  B0 1B 05 66 */	sth r0, 0x566(r27)
/* 8039BE9C  48 00 00 30 */	b lbl_8039BECC
lbl_8039BEA0:
/* 8039BEA0  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 8039BEA4  28 00 07 04 */	cmplwi r0, 0x704
/* 8039BEA8  41 82 FE D4 */	beq lbl_8039BD7C
/* 8039BEAC  38 00 00 12 */	li r0, 0x12
/* 8039BEB0  B0 1B 05 66 */	sth r0, 0x566(r27)
/* 8039BEB4  48 00 00 18 */	b lbl_8039BECC
lbl_8039BEB8:
/* 8039BEB8  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 8039BEBC  28 00 0C 1F */	cmplwi r0, 0xc1f
/* 8039BEC0  41 82 FE BC */	beq lbl_8039BD7C
/* 8039BEC4  38 00 00 15 */	li r0, 0x15
/* 8039BEC8  B0 1B 05 66 */	sth r0, 0x566(r27)
lbl_8039BECC:
/* 8039BECC  7F 40 07 34 */	extsh r0, r26
/* 8039BED0  A0 61 00 18 */	lhz r3, 0x18(r1)
/* 8039BED4  20 80 00 4E */	subfic r4, r0, 0x4e
/* 8039BED8  30 04 FF FF */	addic r0, r4, -1
/* 8039BEDC  7C 80 21 10 */	subfe r4, r0, r4
/* 8039BEE0  4B FF F3 31 */	bl after_n_day
/* 8039BEE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039BEE8  A0 B9 61 26 */	lhz r5, 0x6126(r25)
/* 8039BEEC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039BEF0  A0 E1 00 14 */	lhz r7, 0x14(r1)
/* 8039BEF4  A0 C1 00 18 */	lhz r6, 0x18(r1)
/* 8039BEF8  3C 84 00 02 */	addis r4, r4, 2
/* 8039BEFC  38 00 00 0F */	li r0, 0xf
/* 8039BF00  9B 5C 05 54 */	stb r26, 0x554(r28)
/* 8039BF04  B0 FC 05 5E */	sth r7, 0x55e(r28)
/* 8039BF08  B0 DC 05 60 */	sth r6, 0x560(r28)
/* 8039BF0C  B0 7C 05 62 */	sth r3, 0x562(r28)
/* 8039BF10  B0 BC 13 98 */	sth r5, 0x1398(r28)
/* 8039BF14  B0 04 0E C6 */	sth r0, 0xec6(r4)
lbl_8039BF18:
/* 8039BF18  7F 03 C3 78 */	mr r3, r24
lbl_8039BF1C:
/* 8039BF1C  39 61 00 50 */	addi r11, r1, 0x50
/* 8039BF20  4B CF EF E9 */	bl func_8009AF08
/* 8039BF24  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8039BF28  7C 08 03 A6 */	mtlr r0
/* 8039BF2C  38 21 00 50 */	addi r1, r1, 0x50
/* 8039BF30  4E 80 00 20 */	blr 
