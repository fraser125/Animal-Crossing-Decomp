lbl_8038BA7C:
/* 8038BA7C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8038BA80  7C 08 02 A6 */	mflr r0
/* 8038BA84  90 01 00 64 */	stw r0, 0x64(r1)
/* 8038BA88  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8038BA8C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8038BA90  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8038BA94  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8038BA98  39 61 00 40 */	addi r11, r1, 0x40
/* 8038BA9C  4B D0 F4 29 */	bl func_8009AEC4
/* 8038BAA0  80 03 00 00 */	lwz r0, 0(r3)
/* 8038BAA4  3D 20 43 30 */	lis r9, 0x4330
/* 8038BAA8  81 64 00 20 */	lwz r11, 0x20(r4)
/* 8038BAAC  7C 7C 1B 78 */	mr r28, r3
/* 8038BAB0  1C 60 00 34 */	mulli r3, r0, 0x34
/* 8038BAB4  81 04 00 24 */	lwz r8, 0x24(r4)
/* 8038BAB8  6D 60 80 00 */	xoris r0, r11, 0x8000
/* 8038BABC  91 21 00 08 */	stw r9, 8(r1)
/* 8038BAC0  3D 40 80 64 */	lis r10, lit_793@ha /* 0x806419DC@ha */
/* 8038BAC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038BAC8  3B E3 00 04 */	addi r31, r3, 4
/* 8038BACC  6D 08 80 00 */	xoris r8, r8, 0x8000
/* 8038BAD0  7F FC FA 14 */	add r31, r28, r31
/* 8038BAD4  38 60 00 00 */	li r3, 0
/* 8038BAD8  7C C0 07 34 */	extsh r0, r6
/* 8038BADC  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8038BAE0  C8 2A 19 DC */	lfd f1, lit_793@l(r10)  /* 0x806419DC@l */
/* 8038BAE4  2C 00 00 02 */	cmpwi r0, 2
/* 8038BAE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8038BAEC  7C 9D 23 78 */	mr r29, r4
/* 8038BAF0  91 01 00 14 */	stw r8, 0x14(r1)
/* 8038BAF4  7C BE 2B 78 */	mr r30, r5
/* 8038BAF8  EF E0 08 28 */	fsubs f31, f0, f1
/* 8038BAFC  7C F9 3B 78 */	mr r25, r7
/* 8038BB00  91 21 00 10 */	stw r9, 0x10(r1)
/* 8038BB04  3B 7F 00 10 */	addi r27, r31, 0x10
/* 8038BB08  3B 5F 00 08 */	addi r26, r31, 8
/* 8038BB0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8038BB10  98 7F 00 30 */	stb r3, 0x30(r31)
/* 8038BB14  EF C0 08 28 */	fsubs f30, f0, f1
/* 8038BB18  41 82 01 14 */	beq lbl_8038BC2C
/* 8038BB1C  40 80 00 14 */	bge lbl_8038BB30
/* 8038BB20  2C 00 00 00 */	cmpwi r0, 0
/* 8038BB24  41 82 00 18 */	beq lbl_8038BB3C
/* 8038BB28  40 80 00 88 */	bge lbl_8038BBB0
/* 8038BB2C  48 00 01 F4 */	b lbl_8038BD20
lbl_8038BB30:
/* 8038BB30  2C 00 00 04 */	cmpwi r0, 4
/* 8038BB34  40 80 01 EC */	bge lbl_8038BD20
/* 8038BB38  48 00 01 70 */	b lbl_8038BCA8
lbl_8038BB3C:
/* 8038BB3C  7F E3 FB 78 */	mr r3, r31
/* 8038BB40  38 C0 00 00 */	li r6, 0
/* 8038BB44  4B FF FA AD */	bl mCoBG_SearchWallFlag
/* 8038BB48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8038BB4C  41 82 01 D4 */	beq lbl_8038BD20
/* 8038BB50  FC 20 F8 90 */	fmr f1, f31
/* 8038BB54  7F E3 FB 78 */	mr r3, r31
/* 8038BB58  FC 40 F0 90 */	fmr f2, f30
/* 8038BB5C  7F 44 D3 78 */	mr r4, r26
/* 8038BB60  7F 26 CB 78 */	mr r6, r25
/* 8038BB64  38 A0 00 00 */	li r5, 0
/* 8038BB68  4B FF F8 29 */	bl func_8038B390
/* 8038BB6C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8038BB70  7F 63 DB 78 */	mr r3, r27
/* 8038BB74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8038BB78  38 9B 00 04 */	addi r4, r27, 4
/* 8038BB7C  4B FF FE DD */	bl mCoBG_JudgeTopAndSet
/* 8038BB80  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8038BB84  38 7B 00 08 */	addi r3, r27, 8
/* 8038BB88  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8038BB8C  38 9B 00 0C */	addi r4, r27, 0xc
/* 8038BB90  4B FF FE C9 */	bl mCoBG_JudgeTopAndSet
/* 8038BB94  38 00 00 00 */	li r0, 0
/* 8038BB98  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8038BB9C  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8038BBA0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8038BBA4  38 03 00 01 */	addi r0, r3, 1
/* 8038BBA8  90 1C 00 00 */	stw r0, 0(r28)
/* 8038BBAC  48 00 01 74 */	b lbl_8038BD20
lbl_8038BBB0:
/* 8038BBB0  7F E3 FB 78 */	mr r3, r31
/* 8038BBB4  38 C0 00 01 */	li r6, 1
/* 8038BBB8  4B FF FA 39 */	bl mCoBG_SearchWallFlag
/* 8038BBBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8038BBC0  41 82 01 60 */	beq lbl_8038BD20
/* 8038BBC4  38 00 00 01 */	li r0, 1
/* 8038BBC8  FC 20 F8 90 */	fmr f1, f31
/* 8038BBCC  FC 40 F0 90 */	fmr f2, f30
/* 8038BBD0  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 8038BBD4  7F E3 FB 78 */	mr r3, r31
/* 8038BBD8  7F 44 D3 78 */	mr r4, r26
/* 8038BBDC  7F 26 CB 78 */	mr r6, r25
/* 8038BBE0  38 A0 00 01 */	li r5, 1
/* 8038BBE4  4B FF F7 AD */	bl func_8038B390
/* 8038BBE8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8038BBEC  7F 63 DB 78 */	mr r3, r27
/* 8038BBF0  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 8038BBF4  38 9B 00 04 */	addi r4, r27, 4
/* 8038BBF8  4B FF FE 61 */	bl mCoBG_JudgeTopAndSet
/* 8038BBFC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8038BC00  38 7B 00 08 */	addi r3, r27, 8
/* 8038BC04  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8038BC08  38 9B 00 0C */	addi r4, r27, 0xc
/* 8038BC0C  4B FF FE 4D */	bl mCoBG_JudgeTopAndSet
/* 8038BC10  38 00 00 00 */	li r0, 0
/* 8038BC14  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8038BC18  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8038BC1C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8038BC20  38 03 00 01 */	addi r0, r3, 1
/* 8038BC24  90 1C 00 00 */	stw r0, 0(r28)
/* 8038BC28  48 00 00 F8 */	b lbl_8038BD20
lbl_8038BC2C:
/* 8038BC2C  7F E3 FB 78 */	mr r3, r31
/* 8038BC30  38 C0 00 02 */	li r6, 2
/* 8038BC34  4B FF F9 BD */	bl mCoBG_SearchWallFlag
/* 8038BC38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8038BC3C  41 82 00 E4 */	beq lbl_8038BD20
/* 8038BC40  38 00 00 02 */	li r0, 2
/* 8038BC44  FC 20 F8 90 */	fmr f1, f31
/* 8038BC48  FC 40 F0 90 */	fmr f2, f30
/* 8038BC4C  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 8038BC50  7F E3 FB 78 */	mr r3, r31
/* 8038BC54  7F 44 D3 78 */	mr r4, r26
/* 8038BC58  7F 26 CB 78 */	mr r6, r25
/* 8038BC5C  38 A0 00 02 */	li r5, 2
/* 8038BC60  4B FF F7 31 */	bl func_8038B390
/* 8038BC64  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8038BC68  7F 63 DB 78 */	mr r3, r27
/* 8038BC6C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8038BC70  38 9B 00 04 */	addi r4, r27, 4
/* 8038BC74  4B FF FD E5 */	bl mCoBG_JudgeTopAndSet
/* 8038BC78  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8038BC7C  38 7B 00 08 */	addi r3, r27, 8
/* 8038BC80  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 8038BC84  38 9B 00 0C */	addi r4, r27, 0xc
/* 8038BC88  4B FF FD D1 */	bl mCoBG_JudgeTopAndSet
/* 8038BC8C  38 00 00 00 */	li r0, 0
/* 8038BC90  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8038BC94  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8038BC98  80 7C 00 00 */	lwz r3, 0(r28)
/* 8038BC9C  38 03 00 01 */	addi r0, r3, 1
/* 8038BCA0  90 1C 00 00 */	stw r0, 0(r28)
/* 8038BCA4  48 00 00 7C */	b lbl_8038BD20
lbl_8038BCA8:
/* 8038BCA8  7F E3 FB 78 */	mr r3, r31
/* 8038BCAC  38 C0 00 03 */	li r6, 3
/* 8038BCB0  4B FF F9 41 */	bl mCoBG_SearchWallFlag
/* 8038BCB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8038BCB8  41 82 00 68 */	beq lbl_8038BD20
/* 8038BCBC  38 00 00 03 */	li r0, 3
/* 8038BCC0  FC 20 F8 90 */	fmr f1, f31
/* 8038BCC4  FC 40 F0 90 */	fmr f2, f30
/* 8038BCC8  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 8038BCCC  7F E3 FB 78 */	mr r3, r31
/* 8038BCD0  7F 44 D3 78 */	mr r4, r26
/* 8038BCD4  7F 26 CB 78 */	mr r6, r25
/* 8038BCD8  38 A0 00 03 */	li r5, 3
/* 8038BCDC  4B FF F6 B5 */	bl func_8038B390
/* 8038BCE0  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8038BCE4  7F 63 DB 78 */	mr r3, r27
/* 8038BCE8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8038BCEC  38 9B 00 04 */	addi r4, r27, 4
/* 8038BCF0  4B FF FD 69 */	bl mCoBG_JudgeTopAndSet
/* 8038BCF4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8038BCF8  38 7B 00 08 */	addi r3, r27, 8
/* 8038BCFC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8038BD00  38 9B 00 0C */	addi r4, r27, 0xc
/* 8038BD04  4B FF FD 55 */	bl mCoBG_JudgeTopAndSet
/* 8038BD08  38 00 00 00 */	li r0, 0
/* 8038BD0C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8038BD10  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8038BD14  80 7C 00 00 */	lwz r3, 0(r28)
/* 8038BD18  38 03 00 01 */	addi r0, r3, 1
/* 8038BD1C  90 1C 00 00 */	stw r0, 0(r28)
lbl_8038BD20:
/* 8038BD20  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8038BD24  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8038BD28  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8038BD2C  39 61 00 40 */	addi r11, r1, 0x40
/* 8038BD30  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8038BD34  4B D0 F1 DD */	bl func_8009AF10
/* 8038BD38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8038BD3C  7C 08 03 A6 */	mtlr r0
/* 8038BD40  38 21 00 60 */	addi r1, r1, 0x60
/* 8038BD44  4E 80 00 20 */	blr 
