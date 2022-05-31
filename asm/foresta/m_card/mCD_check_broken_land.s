lbl_803FC784:
/* 803FC784  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FC788  7C 08 02 A6 */	mflr r0
/* 803FC78C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FC790  39 61 00 30 */	addi r11, r1, 0x30
/* 803FC794  4B C9 E7 2D */	bl func_8009AEC0
/* 803FC798  7C 78 1B 78 */	mr r24, r3
/* 803FC79C  3B 80 FF FF */	li r28, -1
/* 803FC7A0  83 C3 00 00 */	lwz r30, 0(r3)
/* 803FC7A4  3B 40 00 00 */	li r26, 0
/* 803FC7A8  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 803FC7AC  2C 1E FF FF */	cmpwi r30, -1
/* 803FC7B0  41 82 00 9C */	beq lbl_803FC84C
/* 803FC7B4  28 1D 00 00 */	cmplwi r29, 0
/* 803FC7B8  41 82 00 94 */	beq lbl_803FC84C
/* 803FC7BC  38 60 00 01 */	li r3, 1
/* 803FC7C0  4B FF DC 99 */	bl mCD_get_size
/* 803FC7C4  3F FD 00 01 */	addis r31, r29, 1
/* 803FC7C8  7C 7B 1B 78 */	mr r27, r3
/* 803FC7CC  3B 20 00 00 */	li r25, 0
lbl_803FC7D0:
/* 803FC7D0  7F A3 EB 78 */	mr r3, r29
/* 803FC7D4  7F C5 F3 78 */	mr r5, r30
/* 803FC7D8  38 99 00 01 */	addi r4, r25, 1
/* 803FC7DC  38 C1 00 08 */	addi r6, r1, 8
/* 803FC7E0  4B FF E1 E1 */	bl mCD_load_file
/* 803FC7E4  2C 03 00 01 */	cmpwi r3, 1
/* 803FC7E8  40 82 00 44 */	bne lbl_803FC82C
/* 803FC7EC  7F A3 EB 78 */	mr r3, r29
/* 803FC7F0  7F 64 DB 78 */	mr r4, r27
/* 803FC7F4  4B FA FD 09 */	bl mFRm_ReturnCheckSum
/* 803FC7F8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FC7FC  40 82 00 20 */	bne lbl_803FC81C
/* 803FC800  A0 9F 91 2A */	lhz r4, -0x6ed6(r31)
/* 803FC804  7F A3 EB 78 */	mr r3, r29
/* 803FC808  4B FA FD 85 */	bl mFRm_CheckSaveData_common
/* 803FC80C  2C 03 00 00 */	cmpwi r3, 0
/* 803FC810  41 82 00 0C */	beq lbl_803FC81C
/* 803FC814  7F 3C CB 78 */	mr r28, r25
/* 803FC818  48 00 00 08 */	b lbl_803FC820
lbl_803FC81C:
/* 803FC81C  93 38 01 A4 */	stw r25, 0x1a4(r24)
lbl_803FC820:
/* 803FC820  3B 39 00 01 */	addi r25, r25, 1
/* 803FC824  2C 19 00 02 */	cmpwi r25, 2
/* 803FC828  41 80 FF A8 */	blt lbl_803FC7D0
lbl_803FC82C:
/* 803FC82C  2C 1C FF FF */	cmpwi r28, -1
/* 803FC830  41 82 00 1C */	beq lbl_803FC84C
/* 803FC834  80 18 01 A4 */	lwz r0, 0x1a4(r24)
/* 803FC838  2C 00 FF FF */	cmpwi r0, -1
/* 803FC83C  41 82 00 10 */	beq lbl_803FC84C
/* 803FC840  7C 1C 00 00 */	cmpw r28, r0
/* 803FC844  41 82 00 08 */	beq lbl_803FC84C
/* 803FC848  3B 40 00 01 */	li r26, 1
lbl_803FC84C:
/* 803FC84C  7F 43 D3 78 */	mr r3, r26
/* 803FC850  39 61 00 30 */	addi r11, r1, 0x30
/* 803FC854  4B C9 E6 B9 */	bl func_8009AF0C
/* 803FC858  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FC85C  7C 08 03 A6 */	mtlr r0
/* 803FC860  38 21 00 30 */	addi r1, r1, 0x30
/* 803FC864  4E 80 00 20 */	blr 
