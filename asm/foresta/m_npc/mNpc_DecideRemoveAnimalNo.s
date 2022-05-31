lbl_803D0890:
/* 803D0890  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D0894  7C 08 02 A6 */	mflr r0
/* 803D0898  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D089C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D08A0  4B CC A6 2D */	bl func_8009AECC
/* 803D08A4  7C 9C 23 79 */	or. r28, r4, r4
/* 803D08A8  7C 7B 1B 78 */	mr r27, r3
/* 803D08AC  7C BE 2B 78 */	mr r30, r5
/* 803D08B0  3B A0 FF FF */	li r29, -1
/* 803D08B4  40 80 00 0C */	bge lbl_803D08C0
/* 803D08B8  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803D08BC  40 80 00 08 */	bge lbl_803D08C4
lbl_803D08C0:
/* 803D08C0  3B DE FF FF */	addi r30, r30, -1
lbl_803D08C4:
/* 803D08C4  2C 1E 00 00 */	cmpwi r30, 0
/* 803D08C8  40 81 00 80 */	ble lbl_803D0948
/* 803D08CC  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803D08D0  41 81 00 78 */	bgt lbl_803D0948
/* 803D08D4  4B C8 C4 21 */	bl fqrand
/* 803D08D8  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 803D08DC  3C 00 43 30 */	lis r0, 0x4330
/* 803D08E0  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D08E4  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D08E8  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D08EC  3B E0 00 00 */	li r31, 0
/* 803D08F0  90 01 00 08 */	stw r0, 8(r1)
/* 803D08F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D08F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D08FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D0900  FC 00 00 1E */	fctiwz f0, f0
/* 803D0904  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D0908  83 C1 00 14 */	lwz r30, 0x14(r1)
lbl_803D090C:
/* 803D090C  7F 63 DB 78 */	mr r3, r27
/* 803D0910  4B FF BC AD */	bl mNpc_CheckFreeAnimalInfo
/* 803D0914  2C 03 00 00 */	cmpwi r3, 0
/* 803D0918  40 82 00 20 */	bne lbl_803D0938
/* 803D091C  2C 1E 00 00 */	cmpwi r30, 0
/* 803D0920  41 81 00 14 */	bgt lbl_803D0934
/* 803D0924  7C 1C F8 00 */	cmpw r28, r31
/* 803D0928  41 82 00 0C */	beq lbl_803D0934
/* 803D092C  7F FD FB 78 */	mr r29, r31
/* 803D0930  48 00 00 18 */	b lbl_803D0948
lbl_803D0934:
/* 803D0934  3B DE FF FF */	addi r30, r30, -1
lbl_803D0938:
/* 803D0938  3B FF 00 01 */	addi r31, r31, 1
/* 803D093C  3B 7B 09 88 */	addi r27, r27, 0x988
/* 803D0940  2C 1F 00 0F */	cmpwi r31, 0xf
/* 803D0944  41 80 FF C8 */	blt lbl_803D090C
lbl_803D0948:
/* 803D0948  7F A3 EB 78 */	mr r3, r29
/* 803D094C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D0950  4B CC A5 C9 */	bl func_8009AF18
/* 803D0954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D0958  7C 08 03 A6 */	mtlr r0
/* 803D095C  38 21 00 30 */	addi r1, r1, 0x30
/* 803D0960  4E 80 00 20 */	blr 
