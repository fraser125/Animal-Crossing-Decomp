lbl_803C826C:
/* 803C826C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803C8270  7C 08 02 A6 */	mflr r0
/* 803C8274  90 01 00 54 */	stw r0, 0x54(r1)
/* 803C8278  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803C827C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803C8280  39 61 00 40 */	addi r11, r1, 0x40
/* 803C8284  4B CD 2C 3D */	bl func_8009AEC0
/* 803C8288  7C BB 2B 78 */	mr r27, r5
/* 803C828C  7C DC 33 78 */	mr r28, r6
/* 803C8290  7C FD 3B 78 */	mr r29, r7
/* 803C8294  7C 7F 1B 78 */	mr r31, r3
/* 803C8298  7C 9E 23 78 */	mr r30, r4
/* 803C829C  48 00 00 64 */	b lbl_803C8300
lbl_803C82A0:
/* 803C82A0  38 00 00 1E */	li r0, 0x1e
/* 803C82A4  7F E3 FB 78 */	mr r3, r31
/* 803C82A8  7F C4 F3 78 */	mr r4, r30
/* 803C82AC  38 C0 00 00 */	li r6, 0
/* 803C82B0  7C 09 03 A6 */	mtctr r0
lbl_803C82B4:
/* 803C82B4  88 A3 00 00 */	lbz r5, 0(r3)
/* 803C82B8  88 04 00 00 */	lbz r0, 0(r4)
/* 803C82BC  7C 05 00 51 */	subf. r0, r5, r0
/* 803C82C0  40 81 00 24 */	ble lbl_803C82E4
/* 803C82C4  38 05 00 01 */	addi r0, r5, 1
/* 803C82C8  38 C6 00 01 */	addi r6, r6, 1
/* 803C82CC  98 03 00 00 */	stb r0, 0(r3)
/* 803C82D0  88 A4 00 00 */	lbz r5, 0(r4)
/* 803C82D4  88 03 00 00 */	lbz r0, 0(r3)
/* 803C82D8  7C 05 00 40 */	cmplw r5, r0
/* 803C82DC  41 81 00 08 */	bgt lbl_803C82E4
/* 803C82E0  3B 7B FF FF */	addi r27, r27, -1
lbl_803C82E4:
/* 803C82E4  38 63 00 01 */	addi r3, r3, 1
/* 803C82E8  38 84 00 01 */	addi r4, r4, 1
/* 803C82EC  42 00 FF C8 */	bdnz lbl_803C82B4
/* 803C82F0  2C 06 00 00 */	cmpwi r6, 0
/* 803C82F4  41 82 00 24 */	beq lbl_803C8318
/* 803C82F8  7F A6 E8 50 */	subf r29, r6, r29
/* 803C82FC  7F 86 E0 50 */	subf r28, r6, r28
lbl_803C8300:
/* 803C8300  2C 1C 00 00 */	cmpwi r28, 0
/* 803C8304  41 82 00 14 */	beq lbl_803C8318
/* 803C8308  2C 1B 00 00 */	cmpwi r27, 0
/* 803C830C  41 82 00 0C */	beq lbl_803C8318
/* 803C8310  7C 1D D8 00 */	cmpw r29, r27
/* 803C8314  41 81 FF 8C */	bgt lbl_803C82A0
lbl_803C8318:
/* 803C8318  3C 60 80 64 */	lis r3, data_80642864@ha /* 0x80642864@ha */
/* 803C831C  3F 40 43 30 */	lis r26, 0x4330
/* 803C8320  CB E3 28 64 */	lfd f31, data_80642864@l(r3)  /* 0x80642864@l */
/* 803C8324  48 00 00 8C */	b lbl_803C83B0
lbl_803C8328:
/* 803C8328  7F F9 FB 78 */	mr r25, r31
/* 803C832C  7F D8 F3 78 */	mr r24, r30
/* 803C8330  4B C9 49 C5 */	bl fqrand
/* 803C8334  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 803C8338  93 41 00 08 */	stw r26, 8(r1)
/* 803C833C  38 00 00 1E */	li r0, 0x1e
/* 803C8340  90 61 00 0C */	stw r3, 0xc(r1)
/* 803C8344  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C8348  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803C834C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C8350  FC 00 00 1E */	fctiwz f0, f0
/* 803C8354  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C8358  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803C835C  7C 09 03 A6 */	mtctr r0
lbl_803C8360:
/* 803C8360  88 79 00 00 */	lbz r3, 0(r25)
/* 803C8364  88 18 00 00 */	lbz r0, 0(r24)
/* 803C8368  7C 03 00 51 */	subf. r0, r3, r0
/* 803C836C  40 81 00 38 */	ble lbl_803C83A4
/* 803C8370  2C 04 00 00 */	cmpwi r4, 0
/* 803C8374  40 82 00 2C */	bne lbl_803C83A0
/* 803C8378  38 03 00 01 */	addi r0, r3, 1
/* 803C837C  3B BD FF FF */	addi r29, r29, -1
/* 803C8380  98 19 00 00 */	stb r0, 0(r25)
/* 803C8384  3B 9C FF FF */	addi r28, r28, -1
/* 803C8388  88 78 00 00 */	lbz r3, 0(r24)
/* 803C838C  88 19 00 00 */	lbz r0, 0(r25)
/* 803C8390  7C 03 00 40 */	cmplw r3, r0
/* 803C8394  41 81 00 1C */	bgt lbl_803C83B0
/* 803C8398  3B 7B FF FF */	addi r27, r27, -1
/* 803C839C  48 00 00 14 */	b lbl_803C83B0
lbl_803C83A0:
/* 803C83A0  38 84 FF FF */	addi r4, r4, -1
lbl_803C83A4:
/* 803C83A4  3B 39 00 01 */	addi r25, r25, 1
/* 803C83A8  3B 18 00 01 */	addi r24, r24, 1
/* 803C83AC  42 00 FF B4 */	bdnz lbl_803C8360
lbl_803C83B0:
/* 803C83B0  2C 1D 00 00 */	cmpwi r29, 0
/* 803C83B4  41 82 00 14 */	beq lbl_803C83C8
/* 803C83B8  2C 1B 00 00 */	cmpwi r27, 0
/* 803C83BC  41 82 00 0C */	beq lbl_803C83C8
/* 803C83C0  2C 1C 00 00 */	cmpwi r28, 0
/* 803C83C4  40 82 FF 64 */	bne lbl_803C8328
lbl_803C83C8:
/* 803C83C8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803C83CC  39 61 00 40 */	addi r11, r1, 0x40
/* 803C83D0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803C83D4  4B CD 2B 39 */	bl func_8009AF0C
/* 803C83D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803C83DC  7C 08 03 A6 */	mtlr r0
/* 803C83E0  38 21 00 50 */	addi r1, r1, 0x50
/* 803C83E4  4E 80 00 20 */	blr 
