lbl_8037D218:
/* 8037D218  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037D21C  7C 08 02 A6 */	mflr r0
/* 8037D220  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037D224  39 61 00 30 */	addi r11, r1, 0x30
/* 8037D228  4B D1 DC A5 */	bl func_8009AECC
/* 8037D22C  7C 9D 23 78 */	mr r29, r4
/* 8037D230  7C BE 2B 78 */	mr r30, r5
/* 8037D234  7C 7C 1B 78 */	mr r28, r3
/* 8037D238  7C DF 33 78 */	mr r31, r6
/* 8037D23C  7F A3 EB 78 */	mr r3, r29
/* 8037D240  7F C4 F3 78 */	mr r4, r30
/* 8037D244  48 08 95 35 */	bl lbRTC_GetDaysByMonth
/* 8037D248  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8037D24C  57 FB 06 3E */	clrlwi r27, r31, 0x18
/* 8037D250  7C 00 D8 40 */	cmplw r0, r27
/* 8037D254  41 82 01 BC */	beq lbl_8037D410
/* 8037D258  20 1B 00 1F */	subfic r0, r27, 0x1f
/* 8037D25C  7F 64 DB 78 */	mr r4, r27
/* 8037D260  38 C0 00 00 */	li r6, 0
/* 8037D264  38 60 00 01 */	li r3, 1
/* 8037D268  7C 09 03 A6 */	mtctr r0
/* 8037D26C  2C 1B 00 1F */	cmpwi r27, 0x1f
/* 8037D270  40 80 00 14 */	bge lbl_8037D284
lbl_8037D274:
/* 8037D274  7C 60 20 30 */	slw r0, r3, r4
/* 8037D278  38 84 00 01 */	addi r4, r4, 1
/* 8037D27C  7C C6 03 78 */	or r6, r6, r0
/* 8037D280  42 00 FF F4 */	bdnz lbl_8037D274
lbl_8037D284:
/* 8037D284  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 8037D288  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8037D28C  7C 7C 02 14 */	add r3, r28, r0
/* 8037D290  7C C4 30 F8 */	nor r4, r6, r6
/* 8037D294  80 03 FF FC */	lwz r0, -4(r3)
/* 8037D298  2C 05 00 09 */	cmpwi r5, 9
/* 8037D29C  7C 00 20 38 */	and r0, r0, r4
/* 8037D2A0  90 03 FF FC */	stw r0, -4(r3)
/* 8037D2A4  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8037D2A8  7C 00 20 38 */	and r0, r0, r4
/* 8037D2AC  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8037D2B0  41 82 00 D0 */	beq lbl_8037D380
/* 8037D2B4  40 80 00 1C */	bge lbl_8037D2D0
/* 8037D2B8  2C 05 00 07 */	cmpwi r5, 7
/* 8037D2BC  41 82 00 64 */	beq lbl_8037D320
/* 8037D2C0  40 80 00 8C */	bge lbl_8037D34C
/* 8037D2C4  2C 05 00 06 */	cmpwi r5, 6
/* 8037D2C8  40 80 00 18 */	bge lbl_8037D2E0
/* 8037D2CC  48 00 01 44 */	b lbl_8037D410
lbl_8037D2D0:
/* 8037D2D0  2C 05 00 0B */	cmpwi r5, 0xb
/* 8037D2D4  41 82 01 24 */	beq lbl_8037D3F8
/* 8037D2D8  40 80 01 38 */	bge lbl_8037D410
/* 8037D2DC  48 00 00 E0 */	b lbl_8037D3BC
lbl_8037D2E0:
/* 8037D2E0  38 1B 00 01 */	addi r0, r27, 1
/* 8037D2E4  7F A3 EB 78 */	mr r3, r29
/* 8037D2E8  7F C4 F3 78 */	mr r4, r30
/* 8037D2EC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8037D2F0  48 08 9E D9 */	bl lbRTC_Week
/* 8037D2F4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8037D2F8  38 00 00 07 */	li r0, 7
/* 8037D2FC  7C 63 D8 50 */	subf r3, r3, r27
/* 8037D300  7C 63 03 D6 */	divw r3, r3, r0
/* 8037D304  38 03 00 01 */	addi r0, r3, 1
/* 8037D308  2C 00 00 03 */	cmpwi r0, 3
/* 8037D30C  40 80 01 04 */	bge lbl_8037D410
/* 8037D310  A0 1C 00 60 */	lhz r0, 0x60(r28)
/* 8037D314  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8037D318  B0 1C 00 60 */	sth r0, 0x60(r28)
/* 8037D31C  48 00 00 F4 */	b lbl_8037D410
lbl_8037D320:
/* 8037D320  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037D324  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8037D328  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8037D32C  3C 63 00 02 */	addis r3, r3, 2
/* 8037D330  88 03 41 8A */	lbz r0, 0x418a(r3)
/* 8037D334  7C 04 00 40 */	cmplw r4, r0
/* 8037D338  40 80 00 D8 */	bge lbl_8037D410
/* 8037D33C  A0 1C 00 60 */	lhz r0, 0x60(r28)
/* 8037D340  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8037D344  B0 1C 00 60 */	sth r0, 0x60(r28)
/* 8037D348  48 00 00 C8 */	b lbl_8037D410
lbl_8037D34C:
/* 8037D34C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8037D350  28 00 00 0C */	cmplwi r0, 0xc
/* 8037D354  40 80 00 10 */	bge lbl_8037D364
/* 8037D358  A0 1C 00 60 */	lhz r0, 0x60(r28)
/* 8037D35C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8037D360  B0 1C 00 60 */	sth r0, 0x60(r28)
lbl_8037D364:
/* 8037D364  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8037D368  28 00 00 15 */	cmplwi r0, 0x15
/* 8037D36C  40 80 00 A4 */	bge lbl_8037D410
/* 8037D370  A0 1C 00 60 */	lhz r0, 0x60(r28)
/* 8037D374  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8037D378  B0 1C 00 60 */	sth r0, 0x60(r28)
/* 8037D37C  48 00 00 94 */	b lbl_8037D410
lbl_8037D380:
/* 8037D380  38 61 00 0C */	addi r3, r1, 0xc
/* 8037D384  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8037D388  48 08 A6 09 */	bl lbRk_HarvestMoonDay
/* 8037D38C  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8037D390  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 8037D394  7C 03 00 40 */	cmplw r3, r0
/* 8037D398  40 82 00 78 */	bne lbl_8037D410
/* 8037D39C  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8037D3A0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8037D3A4  7C 03 00 40 */	cmplw r3, r0
/* 8037D3A8  40 80 00 68 */	bge lbl_8037D410
/* 8037D3AC  A0 1C 00 60 */	lhz r0, 0x60(r28)
/* 8037D3B0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8037D3B4  B0 1C 00 60 */	sth r0, 0x60(r28)
/* 8037D3B8  48 00 00 58 */	b lbl_8037D410
lbl_8037D3BC:
/* 8037D3BC  38 61 00 08 */	addi r3, r1, 8
/* 8037D3C0  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8037D3C4  48 08 A5 CD */	bl lbRk_HarvestMoonDay
/* 8037D3C8  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8037D3CC  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 8037D3D0  7C 03 00 40 */	cmplw r3, r0
/* 8037D3D4  40 82 00 3C */	bne lbl_8037D410
/* 8037D3D8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8037D3DC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8037D3E0  7C 03 00 40 */	cmplw r3, r0
/* 8037D3E4  40 80 00 2C */	bge lbl_8037D410
/* 8037D3E8  A0 1C 00 60 */	lhz r0, 0x60(r28)
/* 8037D3EC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8037D3F0  B0 1C 00 60 */	sth r0, 0x60(r28)
/* 8037D3F4  48 00 00 1C */	b lbl_8037D410
lbl_8037D3F8:
/* 8037D3F8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8037D3FC  28 00 00 0B */	cmplwi r0, 0xb
/* 8037D400  40 80 00 10 */	bge lbl_8037D410
/* 8037D404  A0 1C 00 60 */	lhz r0, 0x60(r28)
/* 8037D408  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8037D40C  B0 1C 00 60 */	sth r0, 0x60(r28)
lbl_8037D410:
/* 8037D410  39 61 00 30 */	addi r11, r1, 0x30
/* 8037D414  4B D1 DB 05 */	bl func_8009AF18
/* 8037D418  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037D41C  7C 08 03 A6 */	mtlr r0
/* 8037D420  38 21 00 30 */	addi r1, r1, 0x30
/* 8037D424  4E 80 00 20 */	blr 
