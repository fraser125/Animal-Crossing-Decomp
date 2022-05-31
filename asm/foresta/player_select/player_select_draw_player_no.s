lbl_8062C37C:
/* 8062C37C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8062C380  7C 08 02 A6 */	mflr r0
/* 8062C384  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8062C388  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8062C38C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8062C390  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8062C394  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8062C398  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8062C39C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8062C3A0  39 61 00 70 */	addi r11, r1, 0x70
/* 8062C3A4  4B A6 EB 19 */	bl func_8009AEBC
/* 8062C3A8  3C 80 80 65 */	lis r4, lit_540@ha /* 0x8064D0E8@ha */
/* 8062C3AC  3C C0 80 65 */	lis r6, lit_552@ha /* 0x8064D0F4@ha */
/* 8062C3B0  39 04 D0 E8 */	addi r8, r4, lit_540@l /* 0x8064D0E8@l */
/* 8062C3B4  3C A0 80 65 */	lis r5, lit_535@ha /* 0x8064D0E0@ha */
/* 8062C3B8  80 E8 00 00 */	lwz r7, 0(r8)
/* 8062C3BC  3C 80 80 65 */	lis r4, lit_555@ha /* 0x8064D0FC@ha */
/* 8062C3C0  80 08 00 04 */	lwz r0, 4(r8)
/* 8062C3C4  7C 7E 1B 78 */	mr r30, r3
/* 8062C3C8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8062C3CC  3D 00 80 6D */	lis r8, l_ps_white_color@ha /* 0x806D4A58@ha */
/* 8062C3D0  3C E0 80 65 */	lis r7, lit_551@ha /* 0x8064D0F0@ha */
/* 8062C3D4  3C 60 80 65 */	lis r3, lit_553@ha /* 0x8064D0F8@ha */
/* 8062C3D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8062C3DC  3B 28 4A 58 */	addi r25, r8, l_ps_white_color@l /* 0x806D4A58@l */
/* 8062C3E0  C3 A6 D0 F4 */	lfs f29, lit_552@l(r6)  /* 0x8064D0F4@l */
/* 8062C3E4  3B 47 D0 F0 */	addi r26, r7, lit_551@l /* 0x8064D0F0@l */
/* 8062C3E8  83 FE 02 14 */	lwz r31, 0x214(r30)
/* 8062C3EC  3B 83 D0 F8 */	addi r28, r3, lit_553@l /* 0x8064D0F8@l */
/* 8062C3F0  C3 C5 D0 E0 */	lfs f30, lit_535@l(r5)  /* 0x8064D0E0@l */
/* 8062C3F4  3A E0 00 00 */	li r23, 0
/* 8062C3F8  CB E4 D0 FC */	lfd f31, lit_555@l(r4)  /* 0x8064D0FC@l */
/* 8062C3FC  3B A0 00 00 */	li r29, 0
/* 8062C400  3F 60 43 30 */	lis r27, 0x4330
lbl_8062C404:
/* 8062C404  38 61 00 20 */	addi r3, r1, 0x20
/* 8062C408  38 80 00 1A */	li r4, 0x1a
/* 8062C40C  38 A0 00 20 */	li r5, 0x20
/* 8062C410  4B D8 E6 39 */	bl mem_clear
/* 8062C414  38 BD 02 20 */	addi r5, r29, 0x220
/* 8062C418  38 61 00 20 */	addi r3, r1, 0x20
/* 8062C41C  38 81 00 18 */	addi r4, r1, 0x18
/* 8062C420  38 C0 00 08 */	li r6, 8
/* 8062C424  7C BE 2A 14 */	add r5, r30, r5
/* 8062C428  38 E0 00 12 */	li r7, 0x12
/* 8062C42C  4B FF FE 6D */	bl str_add_word
/* 8062C430  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 8062C434  7C 1F B8 00 */	cmpw r31, r23
/* 8062C438  60 00 00 30 */	ori r0, r0, 0x30
/* 8062C43C  7F 38 CB 78 */	mr r24, r25
/* 8062C440  98 01 00 26 */	stb r0, 0x26(r1)
/* 8062C444  40 82 00 0C */	bne lbl_8062C450
/* 8062C448  3C 60 80 6D */	lis r3, l_ps_select_color@ha /* 0x806D4A64@ha */
/* 8062C44C  3B 03 4A 64 */	addi r24, r3, l_ps_select_color@l /* 0x806D4A64@l */
lbl_8062C450:
/* 8062C450  80 7E 00 00 */	lwz r3, 0(r30)
/* 8062C454  38 80 00 01 */	li r4, 1
/* 8062C458  4B D8 3C E1 */	bl mFont_SetMatrix
/* 8062C45C  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 8062C460  38 C0 00 01 */	li r6, 1
/* 8062C464  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062C468  38 00 00 00 */	li r0, 0
/* 8062C46C  C0 7C 00 00 */	lfs f3, 0(r28)
/* 8062C470  7F C3 F3 78 */	mr r3, r30
/* 8062C474  93 61 00 40 */	stw r27, 0x40(r1)
/* 8062C478  38 81 00 20 */	addi r4, r1, 0x20
/* 8062C47C  FC 80 18 90 */	fmr f4, f3
/* 8062C480  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8062C484  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8062C488  38 A0 00 1A */	li r5, 0x1a
/* 8062C48C  90 C1 00 08 */	stw r6, 8(r1)
/* 8062C490  39 20 00 FF */	li r9, 0xff
/* 8062C494  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8062C498  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062C49C  39 40 00 00 */	li r10, 0
/* 8062C4A0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8062C4A4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8062C4A8  80 D8 00 00 */	lwz r6, 0(r24)
/* 8062C4AC  80 F8 00 04 */	lwz r7, 4(r24)
/* 8062C4B0  EC 5D 00 2A */	fadds f2, f29, f0
/* 8062C4B4  81 18 00 08 */	lwz r8, 8(r24)
/* 8062C4B8  4B D8 3B B9 */	bl mFont_SetLineStrings_AndSpace
/* 8062C4BC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8062C4C0  38 80 00 01 */	li r4, 1
/* 8062C4C4  4B D8 3D 75 */	bl mFont_UnSetMatrix
/* 8062C4C8  3A F7 00 01 */	addi r23, r23, 1
/* 8062C4CC  3B BD 00 12 */	addi r29, r29, 0x12
/* 8062C4D0  2C 17 00 04 */	cmpwi r23, 4
/* 8062C4D4  41 80 FF 30 */	blt lbl_8062C404
/* 8062C4D8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8062C4DC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8062C4E0  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8062C4E4  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8062C4E8  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 8062C4EC  39 61 00 70 */	addi r11, r1, 0x70
/* 8062C4F0  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8062C4F4  4B A6 EA 15 */	bl func_8009AF08
/* 8062C4F8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8062C4FC  7C 08 03 A6 */	mtlr r0
/* 8062C500  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8062C504  4E 80 00 20 */	blr 
