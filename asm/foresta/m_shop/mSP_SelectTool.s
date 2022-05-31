lbl_803E8CB0:
/* 803E8CB0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803E8CB4  7C 08 02 A6 */	mflr r0
/* 803E8CB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 803E8CBC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803E8CC0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803E8CC4  39 61 00 40 */	addi r11, r1, 0x40
/* 803E8CC8  4B CB 21 F5 */	bl func_8009AEBC
/* 803E8CCC  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803E8CD0  7C DC 33 79 */	or. r28, r6, r6
/* 803E8CD4  38 C7 85 38 */	addi r6, r7, common_data@l /* 0x81138538@l */
/* 803E8CD8  7C 79 1B 78 */	mr r25, r3
/* 803E8CDC  3F E6 00 02 */	addis r31, r6, 2
/* 803E8CE0  7C 9A 23 78 */	mr r26, r4
/* 803E8CE4  A0 1F 04 66 */	lhz r0, 0x466(r31)
/* 803E8CE8  7C BB 2B 78 */	mr r27, r5
/* 803E8CEC  80 7F 04 68 */	lwz r3, 0x468(r31)
/* 803E8CF0  3B C0 00 00 */	li r30, 0
/* 803E8CF4  54 1D CF 3E */	rlwinm r29, r0, 0x19, 0x1c, 0x1f
/* 803E8CF8  40 81 00 10 */	ble lbl_803E8D08
/* 803E8CFC  3C 60 80 64 */	lis r3, lit_890@ha /* 0x806431A0@ha */
/* 803E8D00  C3 E3 31 A0 */	lfs f31, lit_890@l(r3)  /* 0x806431A0@l */
/* 803E8D04  48 00 00 48 */	b lbl_803E8D4C
lbl_803E8D08:
/* 803E8D08  28 03 0B B8 */	cmplwi r3, 0xbb8
/* 803E8D0C  40 80 00 10 */	bge lbl_803E8D1C
/* 803E8D10  3C 60 80 64 */	lis r3, lit_891@ha /* 0x806431A4@ha */
/* 803E8D14  C3 E3 31 A4 */	lfs f31, lit_891@l(r3)  /* 0x806431A4@l */
/* 803E8D18  48 00 00 34 */	b lbl_803E8D4C
lbl_803E8D1C:
/* 803E8D1C  28 03 1F 40 */	cmplwi r3, 0x1f40
/* 803E8D20  40 80 00 10 */	bge lbl_803E8D30
/* 803E8D24  3C 60 80 64 */	lis r3, lit_892@ha /* 0x806431A8@ha */
/* 803E8D28  C3 E3 31 A8 */	lfs f31, lit_892@l(r3)  /* 0x806431A8@l */
/* 803E8D2C  48 00 00 20 */	b lbl_803E8D4C
lbl_803E8D30:
/* 803E8D30  28 03 2E E0 */	cmplwi r3, 0x2ee0
/* 803E8D34  40 80 00 10 */	bge lbl_803E8D44
/* 803E8D38  3C 60 80 64 */	lis r3, lit_893@ha /* 0x806431AC@ha */
/* 803E8D3C  C3 E3 31 AC */	lfs f31, lit_893@l(r3)  /* 0x806431AC@l */
/* 803E8D40  48 00 00 0C */	b lbl_803E8D4C
lbl_803E8D44:
/* 803E8D44  3C 60 80 64 */	lis r3, lit_890@ha /* 0x806431A0@ha */
/* 803E8D48  C3 E3 31 A0 */	lfs f31, lit_890@l(r3)  /* 0x806431A0@l */
lbl_803E8D4C:
/* 803E8D4C  FC 00 F8 1E */	fctiwz f0, f31
/* 803E8D50  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E8D54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803E8D58  7C 1B 00 00 */	cmpw r27, r0
/* 803E8D5C  40 81 00 08 */	ble lbl_803E8D64
/* 803E8D60  7C 1B 03 78 */	mr r27, r0
lbl_803E8D64:
/* 803E8D64  3C 60 80 66 */	lis r3, table@ha /* 0x8065D7A0@ha */
/* 803E8D68  3B 03 D7 A0 */	addi r24, r3, table@l /* 0x8065D7A0@l */
/* 803E8D6C  48 00 00 58 */	b lbl_803E8DC4
lbl_803E8D70:
/* 803E8D70  4B C7 3F 85 */	bl fqrand
/* 803E8D74  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803E8D78  80 9A 00 00 */	lwz r4, 0(r26)
/* 803E8D7C  7F 23 CB 78 */	mr r3, r25
/* 803E8D80  FC 00 00 1E */	fctiwz f0, f0
/* 803E8D84  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E8D88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803E8D8C  54 00 10 3A */	slwi r0, r0, 2
/* 803E8D90  7C 18 00 2E */	lwzx r0, r24, r0
/* 803E8D94  54 17 04 3E */	clrlwi r23, r0, 0x10
/* 803E8D98  7E E5 BB 78 */	mr r5, r23
/* 803E8D9C  4B FF EF 09 */	bl mSP_GoodsExistAlready
/* 803E8DA0  2C 03 00 00 */	cmpwi r3, 0
/* 803E8DA4  40 82 00 20 */	bne lbl_803E8DC4
/* 803E8DA8  80 1A 00 00 */	lwz r0, 0(r26)
/* 803E8DAC  3B DE 00 01 */	addi r30, r30, 1
/* 803E8DB0  54 00 08 3C */	slwi r0, r0, 1
/* 803E8DB4  7E F9 03 2E */	sthx r23, r25, r0
/* 803E8DB8  80 7A 00 00 */	lwz r3, 0(r26)
/* 803E8DBC  38 03 00 01 */	addi r0, r3, 1
/* 803E8DC0  90 1A 00 00 */	stw r0, 0(r26)
lbl_803E8DC4:
/* 803E8DC4  7C 1E D8 00 */	cmpw r30, r27
/* 803E8DC8  41 80 FF A8 */	blt lbl_803E8D70
/* 803E8DCC  2C 1C 00 02 */	cmpwi r28, 2
/* 803E8DD0  41 80 00 58 */	blt lbl_803E8E28
/* 803E8DD4  28 1D 00 0C */	cmplwi r29, 0xc
/* 803E8DD8  41 80 00 08 */	blt lbl_803E8DE0
/* 803E8DDC  3B A0 00 00 */	li r29, 0
lbl_803E8DE0:
/* 803E8DE0  80 1A 00 00 */	lwz r0, 0(r26)
/* 803E8DE4  38 BD 22 2D */	addi r5, r29, 0x222d
/* 803E8DE8  38 9D 00 01 */	addi r4, r29, 1
/* 803E8DEC  38 60 25 1E */	li r3, 0x251e
/* 803E8DF0  54 00 08 3C */	slwi r0, r0, 1
/* 803E8DF4  7C B9 03 2E */	sthx r5, r25, r0
/* 803E8DF8  A0 1F 04 66 */	lhz r0, 0x466(r31)
/* 803E8DFC  50 80 3D 70 */	rlwimi r0, r4, 7, 0x15, 0x18
/* 803E8E00  B0 1F 04 66 */	sth r0, 0x466(r31)
/* 803E8E04  80 9A 00 00 */	lwz r4, 0(r26)
/* 803E8E08  38 04 00 01 */	addi r0, r4, 1
/* 803E8E0C  90 1A 00 00 */	stw r0, 0(r26)
/* 803E8E10  80 1A 00 00 */	lwz r0, 0(r26)
/* 803E8E14  54 00 08 3C */	slwi r0, r0, 1
/* 803E8E18  7C 79 03 2E */	sthx r3, r25, r0
/* 803E8E1C  80 7A 00 00 */	lwz r3, 0(r26)
/* 803E8E20  38 03 00 01 */	addi r0, r3, 1
/* 803E8E24  90 1A 00 00 */	stw r0, 0(r26)
lbl_803E8E28:
/* 803E8E28  80 1A 00 00 */	lwz r0, 0(r26)
/* 803E8E2C  38 80 00 01 */	li r4, 1
/* 803E8E30  54 00 08 3C */	slwi r0, r0, 1
/* 803E8E34  7C 79 02 14 */	add r3, r25, r0
/* 803E8E38  48 00 1C 89 */	bl mSP_RandomUmbSelect
/* 803E8E3C  80 7A 00 00 */	lwz r3, 0(r26)
/* 803E8E40  38 03 00 01 */	addi r0, r3, 1
/* 803E8E44  90 1A 00 00 */	stw r0, 0(r26)
/* 803E8E48  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803E8E4C  39 61 00 40 */	addi r11, r1, 0x40
/* 803E8E50  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803E8E54  4B CB 20 B5 */	bl func_8009AF08
/* 803E8E58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803E8E5C  7C 08 03 A6 */	mtlr r0
/* 803E8E60  38 21 00 50 */	addi r1, r1, 0x50
/* 803E8E64  4E 80 00 20 */	blr 
