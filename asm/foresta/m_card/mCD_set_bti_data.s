lbl_8040361C:
/* 8040361C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80403620  7C 08 02 A6 */	mflr r0
/* 80403624  90 01 00 44 */	stw r0, 0x44(r1)
/* 80403628  39 61 00 40 */	addi r11, r1, 0x40
/* 8040362C  4B C9 78 95 */	bl func_8009AEC0
/* 80403630  7C 98 23 78 */	mr r24, r4
/* 80403634  7C 7C 1B 78 */	mr r28, r3
/* 80403638  7C BD 2B 78 */	mr r29, r5
/* 8040363C  7C DE 33 78 */	mr r30, r6
/* 80403640  7C FF 3B 78 */	mr r31, r7
/* 80403644  7F 03 C3 78 */	mr r3, r24
/* 80403648  4B C0 35 8D */	bl JW_GetAramAddress
/* 8040364C  7C 60 1B 78 */	mr r0, r3
/* 80403650  7F 03 C3 78 */	mr r3, r24
/* 80403654  7C 1A 03 78 */	mr r26, r0
/* 80403658  4B C0 36 51 */	bl JW_GetResSizeFileNo
/* 8040365C  38 03 00 1F */	addi r0, r3, 0x1f
/* 80403660  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80403664  7F 63 DB 78 */	mr r3, r27
/* 80403668  4B FF 41 8D */	bl mCD_malloc_32
/* 8040366C  7C 79 1B 79 */	or. r25, r3, r3
/* 80403670  41 82 00 BC */	beq lbl_8040372C
/* 80403674  7F 43 D3 78 */	mr r3, r26
/* 80403678  7F 24 CB 78 */	mr r4, r25
/* 8040367C  7F 65 DB 78 */	mr r5, r27
/* 80403680  4B C0 35 F5 */	bl _JW_GetResourceAram
/* 80403684  7F 23 CB 78 */	mr r3, r25
/* 80403688  7F 64 DB 78 */	mr r4, r27
/* 8040368C  4B C7 65 91 */	bl DCStoreRangeNoSync
/* 80403690  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 80403694  2C 1E 00 01 */	cmpwi r30, 1
/* 80403698  7F 19 02 14 */	add r24, r25, r0
/* 8040369C  40 81 00 3C */	ble lbl_804036D8
/* 804036A0  4B C5 96 55 */	bl fqrand
/* 804036A4  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 804036A8  3C 00 43 30 */	lis r0, 0x4330
/* 804036AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804036B0  3C 80 80 64 */	lis r4, data_8064344C@ha /* 0x8064344C@ha */
/* 804036B4  C8 44 34 4C */	lfd f2, data_8064344C@l(r4)  /* 0x8064344C@l */
/* 804036B8  90 01 00 08 */	stw r0, 8(r1)
/* 804036BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 804036C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804036C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804036C8  FC 00 00 1E */	fctiwz f0, f0
/* 804036CC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804036D0  83 61 00 14 */	lwz r27, 0x14(r1)
/* 804036D4  48 00 00 08 */	b lbl_804036DC
lbl_804036D8:
/* 804036D8  7F DB F3 78 */	mr r27, r30
lbl_804036DC:
/* 804036DC  7F 58 EA 14 */	add r26, r24, r29
lbl_804036E0:
/* 804036E0  3B DE FF FF */	addi r30, r30, -1
/* 804036E4  7F 03 C3 78 */	mr r3, r24
/* 804036E8  7C 1E D8 00 */	cmpw r30, r27
/* 804036EC  40 82 00 08 */	bne lbl_804036F4
/* 804036F0  7F 43 D3 78 */	mr r3, r26
lbl_804036F4:
/* 804036F4  7F 84 E3 78 */	mr r4, r28
/* 804036F8  7F A5 EB 78 */	mr r5, r29
/* 804036FC  4B C5 99 21 */	bl func_8005D01C
/* 80403700  2C 1E 00 00 */	cmpwi r30, 0
/* 80403704  7F 9C EA 14 */	add r28, r28, r29
/* 80403708  40 82 FF D8 */	bne lbl_804036E0
/* 8040370C  80 19 00 0C */	lwz r0, 0xc(r25)
/* 80403710  7F 84 E3 78 */	mr r4, r28
/* 80403714  7F E5 FB 78 */	mr r5, r31
/* 80403718  7C 79 02 14 */	add r3, r25, r0
/* 8040371C  4B C5 99 01 */	bl func_8005D01C
/* 80403720  7F 23 CB 78 */	mr r3, r25
/* 80403724  7F 9C FA 14 */	add r28, r28, r31
/* 80403728  4B FB 8D 8D */	bl zelda_free
lbl_8040372C:
/* 8040372C  7F 83 E3 78 */	mr r3, r28
/* 80403730  39 61 00 40 */	addi r11, r1, 0x40
/* 80403734  4B C9 77 D9 */	bl func_8009AF0C
/* 80403738  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040373C  7C 08 03 A6 */	mtlr r0
/* 80403740  38 21 00 40 */	addi r1, r1, 0x40
/* 80403744  4E 80 00 20 */	blr 
