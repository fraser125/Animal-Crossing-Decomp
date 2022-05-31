lbl_803E8164:
/* 803E8164  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E8168  7C 08 02 A6 */	mflr r0
/* 803E816C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E8170  39 61 00 40 */	addi r11, r1, 0x40
/* 803E8174  4B CB 2D 49 */	bl func_8009AEBC
/* 803E8178  2C 05 00 00 */	cmpwi r5, 0
/* 803E817C  3C A0 80 C8 */	lis r5, cloth_season_cnt@ha /* 0x80C7BC6C@ha */
/* 803E8180  7C 79 1B 78 */	mr r25, r3
/* 803E8184  7C 9A 23 78 */	mr r26, r4
/* 803E8188  3B E5 BC 6C */	addi r31, r5, cloth_season_cnt@l /* 0x80C7BC6C@l */
/* 803E818C  40 82 00 10 */	bne lbl_803E819C
/* 803E8190  7F 43 D3 78 */	mr r3, r26
/* 803E8194  4B FF FF 05 */	bl mSP_CountElementInClothList
/* 803E8198  48 00 01 A4 */	b lbl_803E833C
lbl_803E819C:
/* 803E819C  4B FF FE 1D */	bl mSP_get_cloth_season
/* 803E81A0  7C 7B 1B 78 */	mr r27, r3
/* 803E81A4  7F 38 CB 78 */	mr r24, r25
/* 803E81A8  3B A0 00 00 */	li r29, 0
/* 803E81AC  3A E0 00 00 */	li r23, 0
/* 803E81B0  48 00 00 20 */	b lbl_803E81D0
lbl_803E81B4:
/* 803E81B4  A0 78 00 00 */	lhz r3, 0(r24)
/* 803E81B8  4B FF FB 2D */	bl mSP_CollectCheck
/* 803E81BC  2C 03 00 00 */	cmpwi r3, 0
/* 803E81C0  40 82 00 08 */	bne lbl_803E81C8
/* 803E81C4  3B BD 00 01 */	addi r29, r29, 1
lbl_803E81C8:
/* 803E81C8  3A F7 00 01 */	addi r23, r23, 1
/* 803E81CC  3B 18 00 02 */	addi r24, r24, 2
lbl_803E81D0:
/* 803E81D0  88 7F 00 00 */	lbz r3, 0(r31)
/* 803E81D4  7C 17 18 00 */	cmpw r23, r3
/* 803E81D8  40 80 00 0C */	bge lbl_803E81E4
/* 803E81DC  28 18 00 00 */	cmplwi r24, 0
/* 803E81E0  40 82 FF D4 */	bne lbl_803E81B4
lbl_803E81E4:
/* 803E81E4  38 1B FF FF */	addi r0, r27, -1
/* 803E81E8  7C 7C 1B 78 */	mr r28, r3
/* 803E81EC  38 7F 00 01 */	addi r3, r31, 1
/* 803E81F0  7C 09 03 A6 */	mtctr r0
/* 803E81F4  2C 1B 00 01 */	cmpwi r27, 1
/* 803E81F8  40 81 00 14 */	ble lbl_803E820C
lbl_803E81FC:
/* 803E81FC  88 03 00 00 */	lbz r0, 0(r3)
/* 803E8200  38 63 00 01 */	addi r3, r3, 1
/* 803E8204  7F 9C 02 14 */	add r28, r28, r0
/* 803E8208  42 00 FF F4 */	bdnz lbl_803E81FC
lbl_803E820C:
/* 803E820C  57 80 08 3C */	slwi r0, r28, 1
/* 803E8210  7C 7F D8 AE */	lbzx r3, r31, r27
/* 803E8214  7F D9 02 14 */	add r30, r25, r0
/* 803E8218  7F 97 E3 78 */	mr r23, r28
/* 803E821C  7F D8 F3 78 */	mr r24, r30
/* 803E8220  7F 7C 1A 14 */	add r27, r28, r3
/* 803E8224  48 00 00 20 */	b lbl_803E8244
lbl_803E8228:
/* 803E8228  A0 78 00 00 */	lhz r3, 0(r24)
/* 803E822C  4B FF FA B9 */	bl mSP_CollectCheck
/* 803E8230  2C 03 00 00 */	cmpwi r3, 0
/* 803E8234  40 82 00 08 */	bne lbl_803E823C
/* 803E8238  3B BD 00 01 */	addi r29, r29, 1
lbl_803E823C:
/* 803E823C  3A F7 00 01 */	addi r23, r23, 1
/* 803E8240  3B 18 00 02 */	addi r24, r24, 2
lbl_803E8244:
/* 803E8244  7C 17 D8 00 */	cmpw r23, r27
/* 803E8248  40 80 00 0C */	bge lbl_803E8254
/* 803E824C  28 18 00 00 */	cmplwi r24, 0
/* 803E8250  40 82 FF D8 */	bne lbl_803E8228
lbl_803E8254:
/* 803E8254  2C 1D 00 00 */	cmpwi r29, 0
/* 803E8258  40 82 00 14 */	bne lbl_803E826C
/* 803E825C  38 00 00 00 */	li r0, 0
/* 803E8260  38 60 00 00 */	li r3, 0
/* 803E8264  90 1A 00 00 */	stw r0, 0(r26)
/* 803E8268  48 00 00 D4 */	b lbl_803E833C
lbl_803E826C:
/* 803E826C  4B C7 4A 89 */	bl fqrand
/* 803E8270  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 803E8274  3C 00 43 30 */	lis r0, 0x4330
/* 803E8278  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E827C  3C 80 80 64 */	lis r4, lit_562@ha /* 0x8064318C@ha */
/* 803E8280  3B 00 00 00 */	li r24, 0
/* 803E8284  C8 44 31 8C */	lfd f2, lit_562@l(r4)  /* 0x8064318C@l */
/* 803E8288  90 01 00 08 */	stw r0, 8(r1)
/* 803E828C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E8290  93 1A 00 00 */	stw r24, 0(r26)
/* 803E8294  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E8298  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E829C  FC 00 00 1E */	fctiwz f0, f0
/* 803E82A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E82A4  82 E1 00 14 */	lwz r23, 0x14(r1)
/* 803E82A8  48 00 00 2C */	b lbl_803E82D4
lbl_803E82AC:
/* 803E82AC  A0 79 00 00 */	lhz r3, 0(r25)
/* 803E82B0  4B FF FA 35 */	bl mSP_CollectCheck
/* 803E82B4  2C 03 00 00 */	cmpwi r3, 0
/* 803E82B8  40 82 00 08 */	bne lbl_803E82C0
/* 803E82BC  3A F7 FF FF */	addi r23, r23, -1
lbl_803E82C0:
/* 803E82C0  80 7A 00 00 */	lwz r3, 0(r26)
/* 803E82C4  3B 18 00 01 */	addi r24, r24, 1
/* 803E82C8  3B 39 00 02 */	addi r25, r25, 2
/* 803E82CC  38 03 00 01 */	addi r0, r3, 1
/* 803E82D0  90 1A 00 00 */	stw r0, 0(r26)
lbl_803E82D4:
/* 803E82D4  88 1F 00 00 */	lbz r0, 0(r31)
/* 803E82D8  7C 18 00 00 */	cmpw r24, r0
/* 803E82DC  40 80 00 14 */	bge lbl_803E82F0
/* 803E82E0  28 19 00 00 */	cmplwi r25, 0
/* 803E82E4  41 82 00 0C */	beq lbl_803E82F0
/* 803E82E8  2C 17 00 00 */	cmpwi r23, 0
/* 803E82EC  41 81 FF C0 */	bgt lbl_803E82AC
lbl_803E82F0:
/* 803E82F0  7F 98 E3 78 */	mr r24, r28
/* 803E82F4  48 00 00 2C */	b lbl_803E8320
lbl_803E82F8:
/* 803E82F8  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803E82FC  4B FF F9 E9 */	bl mSP_CollectCheck
/* 803E8300  2C 03 00 00 */	cmpwi r3, 0
/* 803E8304  40 82 00 08 */	bne lbl_803E830C
/* 803E8308  3A F7 FF FF */	addi r23, r23, -1
lbl_803E830C:
/* 803E830C  80 7A 00 00 */	lwz r3, 0(r26)
/* 803E8310  3B 18 00 01 */	addi r24, r24, 1
/* 803E8314  3B DE 00 02 */	addi r30, r30, 2
/* 803E8318  38 03 00 01 */	addi r0, r3, 1
/* 803E831C  90 1A 00 00 */	stw r0, 0(r26)
lbl_803E8320:
/* 803E8320  7C 18 D8 00 */	cmpw r24, r27
/* 803E8324  40 80 00 14 */	bge lbl_803E8338
/* 803E8328  28 1E 00 00 */	cmplwi r30, 0
/* 803E832C  41 82 00 0C */	beq lbl_803E8338
/* 803E8330  2C 17 00 00 */	cmpwi r23, 0
/* 803E8334  41 81 FF C4 */	bgt lbl_803E82F8
lbl_803E8338:
/* 803E8338  7F A3 EB 78 */	mr r3, r29
lbl_803E833C:
/* 803E833C  39 61 00 40 */	addi r11, r1, 0x40
/* 803E8340  4B CB 2B C9 */	bl func_8009AF08
/* 803E8344  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E8348  7C 08 03 A6 */	mtlr r0
/* 803E834C  38 21 00 40 */	addi r1, r1, 0x40
/* 803E8350  4E 80 00 20 */	blr 
