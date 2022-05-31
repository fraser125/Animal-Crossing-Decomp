lbl_803C8C14:
/* 803C8C14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803C8C18  7C 08 02 A6 */	mflr r0
/* 803C8C1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803C8C20  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803C8C24  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803C8C28  39 61 00 40 */	addi r11, r1, 0x40
/* 803C8C2C  4B CD 22 8D */	bl func_8009AEB8
/* 803C8C30  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803C8C34  3C C0 81 17 */	lis r6, candidate_num_695@ha /* 0x8116B078@ha */
/* 803C8C38  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 803C8C3C  7C 98 23 78 */	mr r24, r4
/* 803C8C40  3F C7 00 01 */	addis r30, r7, 1
/* 803C8C44  38 06 B0 78 */	addi r0, r6, candidate_num_695@l /* 0x8116B078@l */
/* 803C8C48  3B DE 37 A8 */	addi r30, r30, 0x37a8
/* 803C8C4C  7C 76 1B 78 */	mr r22, r3
/* 803C8C50  7C B7 2B 78 */	mr r23, r5
/* 803C8C54  7C 1C 03 78 */	mr r28, r0
/* 803C8C58  7F DD F3 78 */	mr r29, r30
/* 803C8C5C  7C 03 03 78 */	mr r3, r0
/* 803C8C60  3B 60 00 00 */	li r27, 0
/* 803C8C64  3B 40 00 00 */	li r26, 0
/* 803C8C68  38 80 00 1E */	li r4, 0x1e
/* 803C8C6C  4B C9 43 FD */	bl bzero
/* 803C8C70  3B 20 00 00 */	li r25, 0
/* 803C8C74  3B F8 FF FF */	addi r31, r24, -1
lbl_803C8C78:
/* 803C8C78  3B 00 00 00 */	li r24, 0
lbl_803C8C7C:
/* 803C8C7C  7C 18 F8 00 */	cmpw r24, r31
/* 803C8C80  41 82 00 4C */	beq lbl_803C8CCC
/* 803C8C84  38 17 FF FF */	addi r0, r23, -1
/* 803C8C88  7C 19 00 00 */	cmpw r25, r0
/* 803C8C8C  41 82 00 40 */	beq lbl_803C8CCC
/* 803C8C90  7F A3 EB 78 */	mr r3, r29
/* 803C8C94  4B FF FC 5D */	bl mMsr_GetBlockSetAbleMushroomTreeNum
/* 803C8C98  98 7C 00 00 */	stb r3, 0(r28)
/* 803C8C9C  88 1C 00 00 */	lbz r0, 0(r28)
/* 803C8CA0  28 00 00 00 */	cmplwi r0, 0
/* 803C8CA4  41 82 00 28 */	beq lbl_803C8CCC
/* 803C8CA8  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 803C8CAC  7C 00 C6 30 */	sraw r0, r0, r24
/* 803C8CB0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C8CB4  40 82 00 18 */	bne lbl_803C8CCC
/* 803C8CB8  38 00 00 01 */	li r0, 1
/* 803C8CBC  3B 5A 00 01 */	addi r26, r26, 1
/* 803C8CC0  7C 00 C0 30 */	slw r0, r0, r24
/* 803C8CC4  7F 60 03 78 */	or r0, r27, r0
/* 803C8CC8  54 1B 06 3E */	clrlwi r27, r0, 0x18
lbl_803C8CCC:
/* 803C8CCC  3B 18 00 01 */	addi r24, r24, 1
/* 803C8CD0  3B 9C 00 01 */	addi r28, r28, 1
/* 803C8CD4  2C 18 00 05 */	cmpwi r24, 5
/* 803C8CD8  3B BD 02 00 */	addi r29, r29, 0x200
/* 803C8CDC  41 80 FF A0 */	blt lbl_803C8C7C
/* 803C8CE0  3B 39 00 01 */	addi r25, r25, 1
/* 803C8CE4  2C 19 00 06 */	cmpwi r25, 6
/* 803C8CE8  41 80 FF 90 */	blt lbl_803C8C78
/* 803C8CEC  2C 1A 00 00 */	cmpwi r26, 0
/* 803C8CF0  40 81 01 14 */	ble lbl_803C8E04
/* 803C8CF4  3C 60 80 64 */	lis r3, data_80642864@ha /* 0x80642864@ha */
/* 803C8CF8  3C 80 81 17 */	lis r4, candidate_num_695@ha /* 0x8116B078@ha */
/* 803C8CFC  CB E3 28 64 */	lfd f31, data_80642864@l(r3)  /* 0x80642864@l */
/* 803C8D00  3B E4 B0 78 */	addi r31, r4, candidate_num_695@l /* 0x8116B078@l */
/* 803C8D04  3E E0 43 30 */	lis r23, 0x4330
/* 803C8D08  48 00 00 F4 */	b lbl_803C8DFC
lbl_803C8D0C:
/* 803C8D0C  2C 1A 00 00 */	cmpwi r26, 0
/* 803C8D10  7F DD F3 78 */	mr r29, r30
/* 803C8D14  7F F8 FB 78 */	mr r24, r31
/* 803C8D18  40 82 00 6C */	bne lbl_803C8D84
/* 803C8D1C  3C 60 81 17 */	lis r3, candidate_num_695@ha /* 0x8116B078@ha */
/* 803C8D20  3B 60 00 00 */	li r27, 0
/* 803C8D24  38 A3 B0 78 */	addi r5, r3, candidate_num_695@l /* 0x8116B078@l */
/* 803C8D28  3B 40 00 00 */	li r26, 0
/* 803C8D2C  38 E0 00 00 */	li r7, 0
/* 803C8D30  38 80 00 01 */	li r4, 1
/* 803C8D34  38 00 00 06 */	li r0, 6
lbl_803C8D38:
/* 803C8D38  7C C5 3A 14 */	add r6, r5, r7
/* 803C8D3C  7C 09 03 A6 */	mtctr r0
lbl_803C8D40:
/* 803C8D40  88 66 00 00 */	lbz r3, 0(r6)
/* 803C8D44  28 03 00 00 */	cmplwi r3, 0
/* 803C8D48  41 82 00 18 */	beq lbl_803C8D60
/* 803C8D4C  7C 83 38 30 */	slw r3, r4, r7
/* 803C8D50  3B 5A 00 01 */	addi r26, r26, 1
/* 803C8D54  7F 63 1B 78 */	or r3, r27, r3
/* 803C8D58  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 803C8D5C  48 00 00 0C */	b lbl_803C8D68
lbl_803C8D60:
/* 803C8D60  38 C6 00 05 */	addi r6, r6, 5
/* 803C8D64  42 00 FF DC */	bdnz lbl_803C8D40
lbl_803C8D68:
/* 803C8D68  38 E7 00 01 */	addi r7, r7, 1
/* 803C8D6C  2C 07 00 05 */	cmpwi r7, 5
/* 803C8D70  41 80 FF C8 */	blt lbl_803C8D38
/* 803C8D74  2C 1A 00 00 */	cmpwi r26, 0
/* 803C8D78  3C 60 81 17 */	lis r3, candidate_num_695@ha /* 0x8116B078@ha */
/* 803C8D7C  3B 03 B0 78 */	addi r24, r3, candidate_num_695@l /* 0x8116B078@l */
/* 803C8D80  41 82 00 84 */	beq lbl_803C8E04
lbl_803C8D84:
/* 803C8D84  4B C9 3F 71 */	bl fqrand
/* 803C8D88  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 803C8D8C  92 E1 00 08 */	stw r23, 8(r1)
/* 803C8D90  38 00 00 05 */	li r0, 5
/* 803C8D94  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 803C8D98  90 61 00 0C */	stw r3, 0xc(r1)
/* 803C8D9C  38 60 00 00 */	li r3, 0
/* 803C8DA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C8DA4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803C8DA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C8DAC  FC 00 00 1E */	fctiwz f0, f0
/* 803C8DB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C8DB4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803C8DB8  7C 09 03 A6 */	mtctr r0
lbl_803C8DBC:
/* 803C8DBC  7C 80 1E 30 */	sraw r0, r4, r3
/* 803C8DC0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803C8DC4  2C 00 00 01 */	cmpwi r0, 1
/* 803C8DC8  40 82 00 20 */	bne lbl_803C8DE8
/* 803C8DCC  2C 05 00 00 */	cmpwi r5, 0
/* 803C8DD0  41 81 00 14 */	bgt lbl_803C8DE4
/* 803C8DD4  7F A3 EB 78 */	mr r3, r29
/* 803C8DD8  7F 04 C3 78 */	mr r4, r24
/* 803C8DDC  4B FF FD 61 */	bl mMsr_SetLineMushroom
/* 803C8DE0  48 00 00 18 */	b lbl_803C8DF8
lbl_803C8DE4:
/* 803C8DE4  38 A5 FF FF */	addi r5, r5, -1
lbl_803C8DE8:
/* 803C8DE8  3B BD 02 00 */	addi r29, r29, 0x200
/* 803C8DEC  3B 18 00 01 */	addi r24, r24, 1
/* 803C8DF0  38 63 00 01 */	addi r3, r3, 1
/* 803C8DF4  42 00 FF C8 */	bdnz lbl_803C8DBC
lbl_803C8DF8:
/* 803C8DF8  3A D6 FF FF */	addi r22, r22, -1
lbl_803C8DFC:
/* 803C8DFC  2C 16 00 00 */	cmpwi r22, 0
/* 803C8E00  40 82 FF 0C */	bne lbl_803C8D0C
lbl_803C8E04:
/* 803C8E04  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803C8E08  39 61 00 40 */	addi r11, r1, 0x40
/* 803C8E0C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803C8E10  4B CD 20 F5 */	bl func_8009AF04
/* 803C8E14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803C8E18  7C 08 03 A6 */	mtlr r0
/* 803C8E1C  38 21 00 50 */	addi r1, r1, 0x50
/* 803C8E20  4E 80 00 20 */	blr 
