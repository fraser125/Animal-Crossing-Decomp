lbl_80477040:
/* 80477040  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80477044  7C 08 02 A6 */	mflr r0
/* 80477048  90 01 00 74 */	stw r0, 0x74(r1)
/* 8047704C  39 61 00 70 */	addi r11, r1, 0x70
/* 80477050  4B C2 3E 59 */	bl func_8009AEA8
/* 80477054  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80477058  7C 74 1B 78 */	mr r20, r3
/* 8047705C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80477060  7C 95 23 78 */	mr r21, r4
/* 80477064  83 43 00 14 */	lwz r26, 0x14(r3)
/* 80477068  3B 20 00 00 */	li r25, 0
/* 8047706C  3B 00 00 00 */	li r24, 0
/* 80477070  38 60 00 00 */	li r3, 0
/* 80477074  4B FF 93 7D */	bl aMR_GetLayerTopFg
/* 80477078  7C 7E 1B 79 */	or. r30, r3, r3
/* 8047707C  41 82 01 E0 */	beq lbl_8047725C
/* 80477080  3C 60 80 69 */	lis r3, goki_random_make_data@ha /* 0x80689EDC@ha */
/* 80477084  3A E0 00 00 */	li r23, 0
/* 80477088  3B E3 9E DC */	addi r31, r3, goki_random_make_data@l /* 0x80689EDC@l */
/* 8047708C  3A 60 00 00 */	li r19, 0
lbl_80477090:
/* 80477090  7C 7F 9A 14 */	add r3, r31, r19
/* 80477094  80 03 00 00 */	lwz r0, 0(r3)
/* 80477098  7C 1A 00 00 */	cmpw r26, r0
/* 8047709C  40 82 01 B0 */	bne lbl_8047724C
/* 804770A0  3B A3 00 04 */	addi r29, r3, 4
/* 804770A4  38 C0 00 01 */	li r6, 1
/* 804770A8  80 83 00 04 */	lwz r4, 4(r3)
/* 804770AC  38 60 00 10 */	li r3, 0x10
/* 804770B0  48 00 00 6C */	b lbl_8047711C
lbl_804770B4:
/* 804770B4  80 1D 00 00 */	lwz r0, 0(r29)
/* 804770B8  38 A0 00 01 */	li r5, 1
/* 804770BC  7C 09 03 A6 */	mtctr r0
/* 804770C0  2C 00 00 01 */	cmpwi r0, 1
/* 804770C4  41 80 00 50 */	blt lbl_80477114
lbl_804770C8:
/* 804770C8  7C 05 1A 14 */	add r0, r5, r3
/* 804770CC  54 00 08 3C */	slwi r0, r0, 1
/* 804770D0  7C FE 02 2E */	lhzx r7, r30, r0
/* 804770D4  54 E0 A7 3E */	rlwinm r0, r7, 0x14, 0x1c, 0x1f
/* 804770D8  2C 00 00 01 */	cmpwi r0, 1
/* 804770DC  41 82 00 30 */	beq lbl_8047710C
/* 804770E0  2C 00 00 03 */	cmpwi r0, 3
/* 804770E4  41 82 00 28 */	beq lbl_8047710C
/* 804770E8  28 07 FE 1F */	cmplwi r7, 0xfe1f
/* 804770EC  41 82 00 20 */	beq lbl_8047710C
/* 804770F0  28 07 FF FF */	cmplwi r7, 0xffff
/* 804770F4  41 82 00 18 */	beq lbl_8047710C
/* 804770F8  28 07 FF FE */	cmplwi r7, 0xfffe
/* 804770FC  41 82 00 10 */	beq lbl_8047710C
/* 80477100  28 07 FE 1B */	cmplwi r7, 0xfe1b
/* 80477104  41 82 00 08 */	beq lbl_8047710C
/* 80477108  3B 39 00 01 */	addi r25, r25, 1
lbl_8047710C:
/* 8047710C  38 A5 00 01 */	addi r5, r5, 1
/* 80477110  42 00 FF B8 */	bdnz lbl_804770C8
lbl_80477114:
/* 80477114  38 C6 00 01 */	addi r6, r6, 1
/* 80477118  38 63 00 10 */	addi r3, r3, 0x10
lbl_8047711C:
/* 8047711C  7C 06 20 00 */	cmpw r6, r4
/* 80477120  40 81 FF 94 */	ble lbl_804770B4
/* 80477124  2C 19 00 00 */	cmpwi r25, 0
/* 80477128  41 81 00 0C */	bgt lbl_80477134
/* 8047712C  38 60 00 00 */	li r3, 0
/* 80477130  48 00 01 30 */	b lbl_80477260
lbl_80477134:
/* 80477134  4B BE 5B C1 */	bl fqrand
/* 80477138  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 8047713C  3C 00 43 30 */	lis r0, 0x4330
/* 80477140  90 61 00 24 */	stw r3, 0x24(r1)
/* 80477144  3C 80 80 64 */	lis r4, lit_888@ha /* 0x806449FC@ha */
/* 80477148  C8 44 49 FC */	lfd f2, lit_888@l(r4)  /* 0x806449FC@l */
/* 8047714C  3B 80 00 01 */	li r28, 1
/* 80477150  90 01 00 20 */	stw r0, 0x20(r1)
/* 80477154  3A 40 00 10 */	li r18, 0x10
/* 80477158  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8047715C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80477160  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477164  FC 00 00 1E */	fctiwz f0, f0
/* 80477168  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8047716C  82 C1 00 2C */	lwz r22, 0x2c(r1)
/* 80477170  48 00 00 D0 */	b lbl_80477240
lbl_80477174:
/* 80477174  3B 60 00 01 */	li r27, 1
/* 80477178  48 00 00 B4 */	b lbl_8047722C
lbl_8047717C:
/* 8047717C  7C 1B 92 14 */	add r0, r27, r18
/* 80477180  54 00 08 3C */	slwi r0, r0, 1
/* 80477184  7C 7E 02 2E */	lhzx r3, r30, r0
/* 80477188  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8047718C  2C 00 00 01 */	cmpwi r0, 1
/* 80477190  41 82 00 98 */	beq lbl_80477228
/* 80477194  2C 00 00 03 */	cmpwi r0, 3
/* 80477198  41 82 00 90 */	beq lbl_80477228
/* 8047719C  28 03 FE 1F */	cmplwi r3, 0xfe1f
/* 804771A0  41 82 00 88 */	beq lbl_80477228
/* 804771A4  28 03 FF FF */	cmplwi r3, 0xffff
/* 804771A8  41 82 00 80 */	beq lbl_80477228
/* 804771AC  28 03 FF FE */	cmplwi r3, 0xfffe
/* 804771B0  41 82 00 78 */	beq lbl_80477228
/* 804771B4  28 03 FE 1B */	cmplwi r3, 0xfe1b
/* 804771B8  41 82 00 70 */	beq lbl_80477228
/* 804771BC  7C 16 C0 00 */	cmpw r22, r24
/* 804771C0  40 82 00 64 */	bne lbl_80477224
/* 804771C4  7F 64 DB 78 */	mr r4, r27
/* 804771C8  7F 85 E3 78 */	mr r5, r28
/* 804771CC  38 61 00 14 */	addi r3, r1, 0x14
/* 804771D0  4B F2 E2 AD */	bl mFI_UtNum2CenterWpos
/* 804771D4  2C 03 00 00 */	cmpwi r3, 0
/* 804771D8  41 82 00 4C */	beq lbl_80477224
/* 804771DC  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 804771E0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 804771E4  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
/* 804771E8  38 61 00 08 */	addi r3, r1, 8
/* 804771EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804771F0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804771F4  90 81 00 08 */	stw r4, 8(r1)
/* 804771F8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 804771FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80477200  90 81 00 0C */	stw r4, 0xc(r1)
/* 80477204  4B F1 86 1D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80477208  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8047720C  7E 84 A3 78 */	mr r4, r20
/* 80477210  7E A6 AB 78 */	mr r6, r21
/* 80477214  38 61 00 14 */	addi r3, r1, 0x14
/* 80477218  38 A0 00 00 */	li r5, 0
/* 8047721C  4B FF FD B1 */	bl aMR_MakeIndoorGoki
/* 80477220  48 00 00 40 */	b lbl_80477260
lbl_80477224:
/* 80477224  3B 18 00 01 */	addi r24, r24, 1
lbl_80477228:
/* 80477228  3B 7B 00 01 */	addi r27, r27, 1
lbl_8047722C:
/* 8047722C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80477230  7C 1B 00 00 */	cmpw r27, r0
/* 80477234  40 81 FF 48 */	ble lbl_8047717C
/* 80477238  3B 9C 00 01 */	addi r28, r28, 1
/* 8047723C  3A 52 00 10 */	addi r18, r18, 0x10
lbl_80477240:
/* 80477240  80 1D 00 00 */	lwz r0, 0(r29)
/* 80477244  7C 1C 00 00 */	cmpw r28, r0
/* 80477248  40 81 FF 2C */	ble lbl_80477174
lbl_8047724C:
/* 8047724C  3A F7 00 01 */	addi r23, r23, 1
/* 80477250  3A 73 00 08 */	addi r19, r19, 8
/* 80477254  2C 17 00 09 */	cmpwi r23, 9
/* 80477258  41 80 FE 38 */	blt lbl_80477090
lbl_8047725C:
/* 8047725C  38 60 00 00 */	li r3, 0
lbl_80477260:
/* 80477260  39 61 00 70 */	addi r11, r1, 0x70
/* 80477264  4B C2 3C 91 */	bl func_8009AEF4
/* 80477268  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8047726C  7C 08 03 A6 */	mtlr r0
/* 80477270  38 21 00 70 */	addi r1, r1, 0x70
/* 80477274  4E 80 00 20 */	blr 
