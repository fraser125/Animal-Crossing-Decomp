lbl_803D8114:
/* 803D8114  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D8118  7C 08 02 A6 */	mflr r0
/* 803D811C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D8120  39 61 00 40 */	addi r11, r1, 0x40
/* 803D8124  4B CC 2D 99 */	bl func_8009AEBC
/* 803D8128  3C A0 81 17 */	lis r5, data_8116ED80@ha /* 0x8116ED80@ha */
/* 803D812C  7C 9C 23 78 */	mr r28, r4
/* 803D8130  38 85 ED 80 */	addi r4, r5, data_8116ED80@l /* 0x8116ED80@l */
/* 803D8134  38 00 00 00 */	li r0, 0
/* 803D8138  3B E4 00 08 */	addi r31, r4, 8
/* 803D813C  7C 77 1B 78 */	mr r23, r3
/* 803D8140  3B C4 00 0C */	addi r30, r4, 0xc
/* 803D8144  90 04 00 08 */	stw r0, 8(r4)
/* 803D8148  7F 9D E3 78 */	mr r29, r28
/* 803D814C  3B 40 00 00 */	li r26, 0
/* 803D8150  90 04 00 0C */	stw r0, 0xc(r4)
/* 803D8154  3B 20 00 00 */	li r25, 0
/* 803D8158  3B 00 00 00 */	li r24, 0
/* 803D815C  3B 60 00 01 */	li r27, 1
lbl_803D8160:
/* 803D8160  7F 83 E3 78 */	mr r3, r28
/* 803D8164  4B FF 32 79 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D8168  2C 03 00 00 */	cmpwi r3, 0
/* 803D816C  40 82 00 3C */	bne lbl_803D81A8
/* 803D8170  88 7C 08 99 */	lbz r3, 0x899(r28)
/* 803D8174  28 03 00 FF */	cmplwi r3, 0xff
/* 803D8178  41 82 00 30 */	beq lbl_803D81A8
/* 803D817C  88 9C 08 9A */	lbz r4, 0x89a(r28)
/* 803D8180  28 04 00 FF */	cmplwi r4, 0xff
/* 803D8184  41 82 00 24 */	beq lbl_803D81A8
/* 803D8188  7E E5 BB 78 */	mr r5, r23
/* 803D818C  4B FF FF 1D */	bl mNpcW_CheckDiffBlockWalkNpcHome
/* 803D8190  2C 03 00 01 */	cmpwi r3, 1
/* 803D8194  40 82 00 14 */	bne lbl_803D81A8
/* 803D8198  7F 60 C0 30 */	slw r0, r27, r24
/* 803D819C  3B 39 00 01 */	addi r25, r25, 1
/* 803D81A0  7F 40 03 78 */	or r0, r26, r0
/* 803D81A4  54 1A 04 3E */	clrlwi r26, r0, 0x10
lbl_803D81A8:
/* 803D81A8  3B 18 00 01 */	addi r24, r24, 1
/* 803D81AC  3B 9C 09 88 */	addi r28, r28, 0x988
/* 803D81B0  2C 18 00 0F */	cmpwi r24, 0xf
/* 803D81B4  41 80 FF AC */	blt lbl_803D8160
/* 803D81B8  2C 19 00 00 */	cmpwi r25, 0
/* 803D81BC  40 81 00 88 */	ble lbl_803D8244
/* 803D81C0  4B C8 4B 35 */	bl fqrand
/* 803D81C4  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 803D81C8  3C 60 43 30 */	lis r3, 0x4330
/* 803D81CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 803D81D0  3C 80 80 64 */	lis r4, data_80642904@ha /* 0x80642904@ha */
/* 803D81D4  C8 44 29 04 */	lfd f2, data_80642904@l(r4)  /* 0x80642904@l */
/* 803D81D8  38 00 00 0F */	li r0, 0xf
/* 803D81DC  90 61 00 08 */	stw r3, 8(r1)
/* 803D81E0  7F BC EB 78 */	mr r28, r29
/* 803D81E4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 803D81E8  38 80 00 00 */	li r4, 0
/* 803D81EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D81F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D81F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D81F8  FC 00 00 1E */	fctiwz f0, f0
/* 803D81FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D8200  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D8204  7C 09 03 A6 */	mtctr r0
lbl_803D8208:
/* 803D8208  7C 60 26 30 */	sraw r0, r3, r4
/* 803D820C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D8210  2C 00 00 01 */	cmpwi r0, 1
/* 803D8214  40 82 00 24 */	bne lbl_803D8238
/* 803D8218  2C 05 00 00 */	cmpwi r5, 0
/* 803D821C  40 82 00 18 */	bne lbl_803D8234
/* 803D8220  88 1C 08 99 */	lbz r0, 0x899(r28)
/* 803D8224  90 1F 00 00 */	stw r0, 0(r31)
/* 803D8228  88 1C 08 9A */	lbz r0, 0x89a(r28)
/* 803D822C  90 1E 00 00 */	stw r0, 0(r30)
/* 803D8230  48 00 00 14 */	b lbl_803D8244
lbl_803D8234:
/* 803D8234  38 A5 FF FF */	addi r5, r5, -1
lbl_803D8238:
/* 803D8238  3B 9C 09 88 */	addi r28, r28, 0x988
/* 803D823C  38 84 00 01 */	addi r4, r4, 1
/* 803D8240  42 00 FF C8 */	bdnz lbl_803D8208
lbl_803D8244:
/* 803D8244  80 1F 00 00 */	lwz r0, 0(r31)
/* 803D8248  2C 00 00 00 */	cmpwi r0, 0
/* 803D824C  41 82 00 10 */	beq lbl_803D825C
/* 803D8250  80 1E 00 00 */	lwz r0, 0(r30)
/* 803D8254  2C 00 00 00 */	cmpwi r0, 0
/* 803D8258  40 82 00 14 */	bne lbl_803D826C
lbl_803D825C:
/* 803D825C  7F E3 FB 78 */	mr r3, r31
/* 803D8260  7F C4 F3 78 */	mr r4, r30
/* 803D8264  7F A5 EB 78 */	mr r5, r29
/* 803D8268  4B FF FC 4D */	bl mNpcW_GetBlockXZNumExceptHome
lbl_803D826C:
/* 803D826C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803D8270  2C 00 00 00 */	cmpwi r0, 0
/* 803D8274  40 81 00 20 */	ble lbl_803D8294
/* 803D8278  2C 00 00 07 */	cmpwi r0, 7
/* 803D827C  40 80 00 18 */	bge lbl_803D8294
/* 803D8280  80 1E 00 00 */	lwz r0, 0(r30)
/* 803D8284  2C 00 00 00 */	cmpwi r0, 0
/* 803D8288  40 81 00 0C */	ble lbl_803D8294
/* 803D828C  2C 00 00 08 */	cmpwi r0, 8
/* 803D8290  41 80 00 14 */	blt lbl_803D82A4
lbl_803D8294:
/* 803D8294  38 60 00 04 */	li r3, 4
/* 803D8298  38 00 00 03 */	li r0, 3
/* 803D829C  90 7F 00 00 */	stw r3, 0(r31)
/* 803D82A0  90 1E 00 00 */	stw r0, 0(r30)
lbl_803D82A4:
/* 803D82A4  39 61 00 40 */	addi r11, r1, 0x40
/* 803D82A8  4B CC 2C 61 */	bl func_8009AF08
/* 803D82AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D82B0  7C 08 03 A6 */	mtlr r0
/* 803D82B4  38 21 00 40 */	addi r1, r1, 0x40
/* 803D82B8  4E 80 00 20 */	blr 
