lbl_8039CF64:
/* 8039CF64  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8039CF68  7C 08 02 A6 */	mflr r0
/* 8039CF6C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8039CF70  39 61 00 60 */	addi r11, r1, 0x60
/* 8039CF74  4B CF DF 4D */	bl func_8009AEC0
/* 8039CF78  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039CF7C  38 00 00 00 */	li r0, 0
/* 8039CF80  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039CF84  7C 78 1B 78 */	mr r24, r3
/* 8039CF88  3F 84 00 02 */	addis r28, r4, 2
/* 8039CF8C  98 01 00 08 */	stb r0, 8(r1)
/* 8039CF90  88 7C 60 03 */	lbz r3, 0x6003(r28)
/* 8039CF94  3B 61 00 30 */	addi r27, r1, 0x30
/* 8039CF98  1C 03 24 40 */	mulli r0, r3, 0x2440
/* 8039CF9C  7C 84 02 14 */	add r4, r4, r0
/* 8039CFA0  3B 44 00 20 */	addi r26, r4, 0x20
/* 8039CFA4  48 00 17 D1 */	bl mEv_ArbeitPlayer_kari
/* 8039CFA8  2C 03 00 00 */	cmpwi r3, 0
/* 8039CFAC  40 82 03 64 */	bne lbl_8039D310
/* 8039CFB0  8B BC 61 25 */	lbz r29, 0x6125(r28)
/* 8039CFB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039CFB8  88 1C 61 23 */	lbz r0, 0x6123(r28)
/* 8039CFBC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8039CFC0  9B A1 00 14 */	stb r29, 0x14(r1)
/* 8039CFC4  3C 60 80 65 */	lis r3, event_schedule_data@ha /* 0x8065181C@ha */
/* 8039CFC8  88 DC 61 22 */	lbz r6, 0x6122(r28)
/* 8039CFCC  3B C0 00 00 */	li r30, 0
/* 8039CFD0  98 01 00 15 */	stb r0, 0x15(r1)
/* 8039CFD4  3C A4 00 02 */	addis r5, r4, 2
/* 8039CFD8  3B E3 18 1C */	addi r31, r3, event_schedule_data@l /* 0x8065181C@l */
/* 8039CFDC  38 00 00 FF */	li r0, 0xff
/* 8039CFE0  A0 81 00 14 */	lhz r4, 0x14(r1)
/* 8039CFE4  3B 20 00 00 */	li r25, 0
/* 8039CFE8  98 C1 00 17 */	stb r6, 0x17(r1)
/* 8039CFEC  B0 85 05 58 */	sth r4, 0x558(r5)
/* 8039CFF0  88 9A 10 A6 */	lbz r4, 0x10a6(r26)
/* 8039CFF4  88 7A 10 A7 */	lbz r3, 0x10a7(r26)
/* 8039CFF8  98 81 00 10 */	stb r4, 0x10(r1)
/* 8039CFFC  98 61 00 11 */	stb r3, 0x11(r1)
/* 8039D000  A0 61 00 10 */	lhz r3, 0x10(r1)
/* 8039D004  9B C1 00 16 */	stb r30, 0x16(r1)
/* 8039D008  B0 65 05 5C */	sth r3, 0x55c(r5)
/* 8039D00C  98 05 06 86 */	stb r0, 0x686(r5)
lbl_8039D010:
/* 8039D010  7F 63 DB 78 */	mr r3, r27
/* 8039D014  7C 9F F2 14 */	add r4, r31, r30
/* 8039D018  38 A0 00 0C */	li r5, 0xc
/* 8039D01C  4B C6 64 75 */	bl memcpy
/* 8039D020  7F 63 DB 78 */	mr r3, r27
/* 8039D024  4B FF F4 71 */	bl update_soncho_event
/* 8039D028  7F 63 DB 78 */	mr r3, r27
/* 8039D02C  38 81 00 08 */	addi r4, r1, 8
/* 8039D030  4B FF F5 99 */	bl update_sports_fair
/* 8039D034  7F 63 DB 78 */	mr r3, r27
/* 8039D038  4B FF F7 21 */	bl update_event_rumor
/* 8039D03C  7F 63 DB 78 */	mr r3, r27
/* 8039D040  4B FF EE F5 */	bl update_special_event
/* 8039D044  7F 63 DB 78 */	mr r3, r27
/* 8039D048  4B FF F8 99 */	bl update_weekly_event
/* 8039D04C  A8 01 00 3A */	lha r0, 0x3a(r1)
/* 8039D050  2C 00 00 18 */	cmpwi r0, 0x18
/* 8039D054  40 82 00 8C */	bne lbl_8039D0E0
/* 8039D058  2C 1D 00 09 */	cmpwi r29, 9
/* 8039D05C  40 80 00 18 */	bge lbl_8039D074
/* 8039D060  2C 1D 00 06 */	cmpwi r29, 6
/* 8039D064  40 80 00 08 */	bge lbl_8039D06C
/* 8039D068  48 00 00 0C */	b lbl_8039D074
lbl_8039D06C:
/* 8039D06C  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8039D070  98 01 00 30 */	stb r0, 0x30(r1)
lbl_8039D074:
/* 8039D074  80 61 00 30 */	lwz r3, 0x30(r1)
/* 8039D078  4B FF FC 89 */	bl decode_date
/* 8039D07C  90 61 00 30 */	stw r3, 0x30(r1)
/* 8039D080  88 1C 61 24 */	lbz r0, 0x6124(r28)
/* 8039D084  88 81 00 30 */	lbz r4, 0x30(r1)
/* 8039D088  88 61 00 31 */	lbz r3, 0x31(r1)
/* 8039D08C  28 00 00 00 */	cmplwi r0, 0
/* 8039D090  98 81 00 0C */	stb r4, 0xc(r1)
/* 8039D094  98 61 00 0D */	stb r3, 0xd(r1)
/* 8039D098  40 82 00 24 */	bne lbl_8039D0BC
/* 8039D09C  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8039D0A0  38 80 FF F9 */	li r4, -7
/* 8039D0A4  4B FF E1 6D */	bl after_n_day
/* 8039D0A8  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8039D0AC  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8039D0B0  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8039D0B4  98 61 00 30 */	stb r3, 0x30(r1)
/* 8039D0B8  98 01 00 31 */	stb r0, 0x31(r1)
lbl_8039D0BC:
/* 8039D0BC  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8039D0C0  38 80 00 01 */	li r4, 1
/* 8039D0C4  4B FF E1 4D */	bl after_n_day
/* 8039D0C8  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8039D0CC  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8039D0D0  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8039D0D4  98 61 00 34 */	stb r3, 0x34(r1)
/* 8039D0D8  98 01 00 35 */	stb r0, 0x35(r1)
/* 8039D0DC  48 00 00 1C */	b lbl_8039D0F8
lbl_8039D0E0:
/* 8039D0E0  80 61 00 30 */	lwz r3, 0x30(r1)
/* 8039D0E4  4B FF FC 1D */	bl decode_date
/* 8039D0E8  90 61 00 30 */	stw r3, 0x30(r1)
/* 8039D0EC  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8039D0F0  4B FF FC 11 */	bl decode_date
/* 8039D0F4  90 61 00 34 */	stw r3, 0x34(r1)
lbl_8039D0F8:
/* 8039D0F8  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8039D0FC  A0 81 00 30 */	lhz r4, 0x30(r1)
/* 8039D100  A0 A1 00 34 */	lhz r5, 0x34(r1)
/* 8039D104  4B FF E0 9D */	bl check_date_range
/* 8039D108  2C 03 00 00 */	cmpwi r3, 0
/* 8039D10C  41 82 00 18 */	beq lbl_8039D124
/* 8039D110  7F 63 DB 78 */	mr r3, r27
/* 8039D114  4B FF F4 41 */	bl update_soncho_event2
/* 8039D118  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8039D11C  7F 64 DB 78 */	mr r4, r27
/* 8039D120  4B FF E5 B5 */	bl add_event_today
lbl_8039D124:
/* 8039D124  3B 39 00 01 */	addi r25, r25, 1
/* 8039D128  3B DE 00 0C */	addi r30, r30, 0xc
/* 8039D12C  2C 19 00 86 */	cmpwi r25, 0x86
/* 8039D130  41 80 FE E0 */	blt lbl_8039D010
/* 8039D134  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D138  3B 20 00 00 */	li r25, 0
/* 8039D13C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D140  3C 63 00 02 */	addis r3, r3, 2
/* 8039D144  80 63 60 04 */	lwz r3, 0x6004(r3)
/* 8039D148  38 03 FF F7 */	addi r0, r3, -9
/* 8039D14C  28 00 00 2A */	cmplwi r0, 0x2a
/* 8039D150  41 81 00 50 */	bgt lbl_8039D1A0
/* 8039D154  3C 60 80 65 */	lis r3, lit_1486@ha /* 0x806520EC@ha */
/* 8039D158  54 00 10 3A */	slwi r0, r0, 2
/* 8039D15C  38 63 20 EC */	addi r3, r3, lit_1486@l /* 0x806520EC@l */
/* 8039D160  7C 03 00 2E */	lwzx r0, r3, r0
/* 8039D164  7C 09 03 A6 */	mtctr r0
/* 8039D168  4E 80 04 20 */	bctr 
lbl_8039D16C:
/* 8039D16C  3B 20 00 03 */	li r25, 3
/* 8039D170  48 00 00 30 */	b lbl_8039D1A0
lbl_8039D174:
/* 8039D174  3B 20 00 4B */	li r25, 0x4b
/* 8039D178  48 00 00 28 */	b lbl_8039D1A0
lbl_8039D17C:
/* 8039D17C  3B 20 00 4D */	li r25, 0x4d
/* 8039D180  48 00 00 20 */	b lbl_8039D1A0
lbl_8039D184:
/* 8039D184  38 60 00 00 */	li r3, 0
/* 8039D188  4B FF D8 91 */	bl mEv_CheckEvent
/* 8039D18C  2C 03 00 00 */	cmpwi r3, 0
/* 8039D190  41 82 00 10 */	beq lbl_8039D1A0
/* 8039D194  3B 20 00 4E */	li r25, 0x4e
/* 8039D198  48 00 00 08 */	b lbl_8039D1A0
lbl_8039D19C:
/* 8039D19C  3B 20 00 18 */	li r25, 0x18
lbl_8039D1A0:
/* 8039D1A0  2C 19 00 00 */	cmpwi r25, 0
/* 8039D1A4  41 82 00 6C */	beq lbl_8039D210
/* 8039D1A8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8039D1AC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8039D1B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8039D1B4  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8039D1B8  28 00 00 00 */	cmplwi r0, 0
/* 8039D1BC  40 82 00 54 */	bne lbl_8039D210
/* 8039D1C0  3C 60 80 64 */	lis r3, lit_1451@ha /* 0x80641E1C@ha */
/* 8039D1C4  88 BC 61 25 */	lbz r5, 0x6125(r28)
/* 8039D1C8  38 E3 1E 1C */	addi r7, r3, lit_1451@l /* 0x80641E1C@l */
/* 8039D1CC  88 1C 61 23 */	lbz r0, 0x6123(r28)
/* 8039D1D0  80 C7 00 00 */	lwz r6, 0(r7)
/* 8039D1D4  38 81 00 24 */	addi r4, r1, 0x24
/* 8039D1D8  80 67 00 04 */	lwz r3, 4(r7)
/* 8039D1DC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8039D1E0  80 C7 00 08 */	lwz r6, 8(r7)
/* 8039D1E4  90 61 00 28 */	stw r3, 0x28(r1)
/* 8039D1E8  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8039D1EC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8039D1F0  B3 21 00 2E */	sth r25, 0x2e(r1)
/* 8039D1F4  98 A1 00 28 */	stb r5, 0x28(r1)
/* 8039D1F8  98 A1 00 24 */	stb r5, 0x24(r1)
/* 8039D1FC  98 01 00 29 */	stb r0, 0x29(r1)
/* 8039D200  98 01 00 25 */	stb r0, 0x25(r1)
/* 8039D204  4B FF E4 D1 */	bl add_event_today
/* 8039D208  7F 23 CB 78 */	mr r3, r25
/* 8039D20C  4B FF FC 45 */	bl set_one_time_active
lbl_8039D210:
/* 8039D210  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D214  3B 20 00 00 */	li r25, 0
/* 8039D218  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D21C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8039D220  38 03 FF F7 */	addi r0, r3, -9
/* 8039D224  28 00 00 2A */	cmplwi r0, 0x2a
/* 8039D228  41 81 00 50 */	bgt lbl_8039D278
/* 8039D22C  3C 60 80 65 */	lis r3, lit_1487@ha /* 0x80652040@ha */
/* 8039D230  54 00 10 3A */	slwi r0, r0, 2
/* 8039D234  38 63 20 40 */	addi r3, r3, lit_1487@l /* 0x80652040@l */
/* 8039D238  7C 03 00 2E */	lwzx r0, r3, r0
/* 8039D23C  7C 09 03 A6 */	mtctr r0
/* 8039D240  4E 80 04 20 */	bctr 
lbl_8039D244:
/* 8039D244  3B 20 00 03 */	li r25, 3
/* 8039D248  48 00 00 30 */	b lbl_8039D278
lbl_8039D24C:
/* 8039D24C  3B 20 00 4B */	li r25, 0x4b
/* 8039D250  48 00 00 28 */	b lbl_8039D278
lbl_8039D254:
/* 8039D254  3B 20 00 4D */	li r25, 0x4d
/* 8039D258  48 00 00 20 */	b lbl_8039D278
lbl_8039D25C:
/* 8039D25C  38 60 00 00 */	li r3, 0
/* 8039D260  4B FF D7 B9 */	bl mEv_CheckEvent
/* 8039D264  2C 03 00 00 */	cmpwi r3, 0
/* 8039D268  41 82 00 10 */	beq lbl_8039D278
/* 8039D26C  3B 20 00 4E */	li r25, 0x4e
/* 8039D270  48 00 00 08 */	b lbl_8039D278
lbl_8039D274:
/* 8039D274  3B 20 00 18 */	li r25, 0x18
lbl_8039D278:
/* 8039D278  2C 19 00 00 */	cmpwi r25, 0
/* 8039D27C  41 82 00 4C */	beq lbl_8039D2C8
/* 8039D280  3C 60 80 64 */	lis r3, lit_1466@ha /* 0x80641E28@ha */
/* 8039D284  88 BC 61 25 */	lbz r5, 0x6125(r28)
/* 8039D288  38 E3 1E 28 */	addi r7, r3, lit_1466@l /* 0x80641E28@l */
/* 8039D28C  88 1C 61 23 */	lbz r0, 0x6123(r28)
/* 8039D290  80 C7 00 00 */	lwz r6, 0(r7)
/* 8039D294  38 81 00 18 */	addi r4, r1, 0x18
/* 8039D298  80 67 00 04 */	lwz r3, 4(r7)
/* 8039D29C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8039D2A0  80 C7 00 08 */	lwz r6, 8(r7)
/* 8039D2A4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8039D2A8  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8039D2AC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8039D2B0  B3 21 00 22 */	sth r25, 0x22(r1)
/* 8039D2B4  98 A1 00 1C */	stb r5, 0x1c(r1)
/* 8039D2B8  98 A1 00 18 */	stb r5, 0x18(r1)
/* 8039D2BC  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8039D2C0  98 01 00 19 */	stb r0, 0x19(r1)
/* 8039D2C4  4B FF E4 11 */	bl add_event_today
lbl_8039D2C8:
/* 8039D2C8  4B FF FB C9 */	bl first_enter_check
/* 8039D2CC  2C 03 00 00 */	cmpwi r3, 0
/* 8039D2D0  41 82 00 24 */	beq lbl_8039D2F4
/* 8039D2D4  3B 20 00 00 */	li r25, 0
lbl_8039D2D8:
/* 8039D2D8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8039D2DC  7F 03 C3 78 */	mr r3, r24
/* 8039D2E0  7F 24 CB 78 */	mr r4, r25
/* 8039D2E4  4B FF E6 71 */	bl delete_too_short_event
/* 8039D2E8  3B 39 00 01 */	addi r25, r25, 1
/* 8039D2EC  2C 19 00 77 */	cmpwi r25, 0x77
/* 8039D2F0  41 80 FF E8 */	blt lbl_8039D2D8
lbl_8039D2F4:
/* 8039D2F4  3B 20 00 00 */	li r25, 0
lbl_8039D2F8:
/* 8039D2F8  7F 03 C3 78 */	mr r3, r24
/* 8039D2FC  7F 24 CB 78 */	mr r4, r25
/* 8039D300  4B FF E5 49 */	bl check_and_clear_event_today
/* 8039D304  3B 39 00 01 */	addi r25, r25, 1
/* 8039D308  2C 19 00 77 */	cmpwi r25, 0x77
/* 8039D30C  41 80 FF EC */	blt lbl_8039D2F8
lbl_8039D310:
/* 8039D310  39 61 00 60 */	addi r11, r1, 0x60
/* 8039D314  4B CF DB F9 */	bl func_8009AF0C
/* 8039D318  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8039D31C  7C 08 03 A6 */	mtlr r0
/* 8039D320  38 21 00 60 */	addi r1, r1, 0x60
/* 8039D324  4E 80 00 20 */	blr 
