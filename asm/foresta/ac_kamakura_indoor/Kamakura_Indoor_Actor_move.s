lbl_8042BC9C:
/* 8042BC9C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8042BCA0  7C 08 02 A6 */	mflr r0
/* 8042BCA4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8042BCA8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8042BCAC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8042BCB0  39 61 00 70 */	addi r11, r1, 0x70
/* 8042BCB4  4B C6 F1 F1 */	bl func_8009AEA4
/* 8042BCB8  7C 91 23 78 */	mr r17, r4
/* 8042BCBC  7C 72 1B 78 */	mr r18, r3
/* 8042BCC0  3C 80 80 68 */	lis r4, data_806841E0@ha /* 0x806841E0@ha */
/* 8042BCC4  83 11 00 A0 */	lwz r24, 0xa0(r17)
/* 8042BCC8  3B A4 41 E0 */	addi r29, r4, data_806841E0@l /* 0x806841E0@l */
/* 8042BCCC  3B 52 01 74 */	addi r26, r18, 0x174
/* 8042BCD0  3B 32 01 84 */	addi r25, r18, 0x184
/* 8042BCD4  38 B2 01 C0 */	addi r5, r18, 0x1c0
/* 8042BCD8  38 80 00 54 */	li r4, 0x54
/* 8042BCDC  48 20 22 69 */	bl sAdo_OngenPos
/* 8042BCE0  80 11 20 90 */	lwz r0, 0x2090(r17)
/* 8042BCE4  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8042BCE8  40 82 00 84 */	bne lbl_8042BD6C
/* 8042BCEC  80 12 01 C4 */	lwz r0, 0x1c4(r18)
/* 8042BCF0  3C 60 80 64 */	lis r3, lit_591@ha /* 0x80644098@ha */
/* 8042BCF4  38 83 40 98 */	addi r4, r3, lit_591@l /* 0x80644098@l */
/* 8042BCF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042BCFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042BD00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042BD04  82 B2 01 C0 */	lwz r21, 0x1c0(r18)
/* 8042BD08  3C 63 00 02 */	addis r3, r3, 2
/* 8042BD0C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8042BD10  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8042BD14  C0 04 00 00 */	lfs f0, 0(r4)
/* 8042BD18  7E 27 8B 78 */	mr r7, r17
/* 8042BD1C  82 92 01 C8 */	lwz r20, 0x1c8(r18)
/* 8042BD20  38 81 00 08 */	addi r4, r1, 8
/* 8042BD24  EC 01 00 2A */	fadds f0, f1, f0
/* 8042BD28  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 8042BD2C  92 A1 00 08 */	stw r21, 8(r1)
/* 8042BD30  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8042BD34  38 60 00 71 */	li r3, 0x71
/* 8042BD38  38 A0 00 01 */	li r5, 1
/* 8042BD3C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8042BD40  38 C0 00 00 */	li r6, 0
/* 8042BD44  39 20 00 0E */	li r9, 0xe
/* 8042BD48  39 40 00 01 */	li r10, 1
/* 8042BD4C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8042BD50  92 81 00 10 */	stw r20, 0x10(r1)
/* 8042BD54  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042BD58  81 8B 00 00 */	lwz r12, 0(r11)
/* 8042BD5C  92 A1 00 14 */	stw r21, 0x14(r1)
/* 8042BD60  92 81 00 1C */	stw r20, 0x1c(r1)
/* 8042BD64  7D 89 03 A6 */	mtctr r12
/* 8042BD68  4E 80 04 21 */	bctrl 
lbl_8042BD6C:
/* 8042BD6C  3C 60 80 64 */	lis r3, lit_497@ha /* 0x80644078@ha */
/* 8042BD70  3B DD 07 18 */	addi r30, r29, 0x718
/* 8042BD74  C3 E3 40 78 */	lfs f31, lit_497@l(r3)  /* 0x80644078@l */
/* 8042BD78  3B FD 07 20 */	addi r31, r29, 0x720
/* 8042BD7C  3A 9D 06 B8 */	addi r20, r29, 0x6b8
/* 8042BD80  3A BD 06 58 */	addi r21, r29, 0x658
/* 8042BD84  3A E0 00 00 */	li r23, 0
lbl_8042BD88:
/* 8042BD88  56 FB 17 7A */	rlwinm r27, r23, 2, 0x1d, 0x1d
/* 8042BD8C  38 60 00 22 */	li r3, 0x22
/* 8042BD90  7C 9E D8 2E */	lwzx r4, r30, r27
/* 8042BD94  38 00 00 FF */	li r0, 0xff
/* 8042BD98  3B 9D 00 60 */	addi r28, r29, 0x60
/* 8042BD9C  7C 84 C0 50 */	subf r4, r4, r24
/* 8042BDA0  98 1A 00 00 */	stb r0, 0(r26)
/* 8042BDA4  7C 04 1B 96 */	divwu r0, r4, r3
/* 8042BDA8  7C 00 19 D6 */	mullw r0, r0, r3
/* 8042BDAC  7C 00 20 50 */	subf r0, r0, r4
/* 8042BDB0  7C 16 07 34 */	extsh r22, r0
/* 8042BDB4  56 C0 28 34 */	slwi r0, r22, 5
/* 8042BDB8  7F 9C 02 14 */	add r28, r28, r0
/* 8042BDBC  7E C5 B3 78 */	mr r5, r22
/* 8042BDC0  A8 7C 00 00 */	lha r3, 0(r28)
/* 8042BDC4  3A 3C 00 08 */	addi r17, r28, 8
/* 8042BDC8  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8042BDCC  3A 5C 00 10 */	addi r18, r28, 0x10
/* 8042BDD0  A8 9C 00 10 */	lha r4, 0x10(r28)
/* 8042BDD4  3A 7C 00 18 */	addi r19, r28, 0x18
/* 8042BDD8  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 8042BDDC  4B FF FD 5D */	bl aKI_MakeSinPointHalf
/* 8042BDE0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8042BDE4  4C 41 13 82 */	cror 2, 1, 2
/* 8042BDE8  40 82 00 20 */	bne lbl_8042BE08
/* 8042BDEC  A8 7C 00 00 */	lha r3, 0(r28)
/* 8042BDF0  7E C5 B3 78 */	mr r5, r22
/* 8042BDF4  C0 31 00 00 */	lfs f1, 0(r17)
/* 8042BDF8  A8 92 00 00 */	lha r4, 0(r18)
/* 8042BDFC  C0 53 00 00 */	lfs f2, 0(r19)
/* 8042BE00  4B FF FD 39 */	bl aKI_MakeSinPointHalf
/* 8042BE04  48 00 00 20 */	b lbl_8042BE24
lbl_8042BE08:
/* 8042BE08  A8 7C 00 00 */	lha r3, 0(r28)
/* 8042BE0C  7E C5 B3 78 */	mr r5, r22
/* 8042BE10  C0 31 00 00 */	lfs f1, 0(r17)
/* 8042BE14  A8 92 00 00 */	lha r4, 0(r18)
/* 8042BE18  C0 53 00 00 */	lfs f2, 0(r19)
/* 8042BE1C  4B FF FD 1D */	bl aKI_MakeSinPointHalf
/* 8042BE20  FC 20 08 50 */	fneg f1, f1
lbl_8042BE24:
/* 8042BE24  FC 00 08 1E */	fctiwz f0, f1
/* 8042BE28  38 00 00 00 */	li r0, 0
/* 8042BE2C  3A 7C 00 0C */	addi r19, r28, 0xc
/* 8042BE30  3A 3C 00 1C */	addi r17, r28, 0x1c
/* 8042BE34  7E C5 B3 78 */	mr r5, r22
/* 8042BE38  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8042BE3C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8042BE40  98 7A 00 01 */	stb r3, 1(r26)
/* 8042BE44  98 1A 00 02 */	stb r0, 2(r26)
/* 8042BE48  A8 7C 00 00 */	lha r3, 0(r28)
/* 8042BE4C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8042BE50  A8 92 00 00 */	lha r4, 0(r18)
/* 8042BE54  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8042BE58  4B FF FC E1 */	bl aKI_MakeSinPointHalf
/* 8042BE5C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8042BE60  4C 41 13 82 */	cror 2, 1, 2
/* 8042BE64  40 82 00 20 */	bne lbl_8042BE84
/* 8042BE68  A8 7C 00 00 */	lha r3, 0(r28)
/* 8042BE6C  7E C5 B3 78 */	mr r5, r22
/* 8042BE70  C0 33 00 00 */	lfs f1, 0(r19)
/* 8042BE74  A8 92 00 00 */	lha r4, 0(r18)
/* 8042BE78  C0 51 00 00 */	lfs f2, 0(r17)
/* 8042BE7C  4B FF FC BD */	bl aKI_MakeSinPointHalf
/* 8042BE80  48 00 00 20 */	b lbl_8042BEA0
lbl_8042BE84:
/* 8042BE84  A8 7C 00 00 */	lha r3, 0(r28)
/* 8042BE88  7E C5 B3 78 */	mr r5, r22
/* 8042BE8C  C0 33 00 00 */	lfs f1, 0(r19)
/* 8042BE90  A8 92 00 00 */	lha r4, 0(r18)
/* 8042BE94  C0 51 00 00 */	lfs f2, 0(r17)
/* 8042BE98  4B FF FC A1 */	bl aKI_MakeSinPointHalf
/* 8042BE9C  FC 20 08 50 */	fneg f1, f1
lbl_8042BEA0:
/* 8042BEA0  FC 00 08 1E */	fctiwz f0, f1
/* 8042BEA4  7E C5 B3 78 */	mr r5, r22
/* 8042BEA8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8042BEAC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8042BEB0  98 1A 00 03 */	stb r0, 3(r26)
/* 8042BEB4  A8 7C 00 00 */	lha r3, 0(r28)
/* 8042BEB8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8042BEBC  A8 92 00 00 */	lha r4, 0(r18)
/* 8042BEC0  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 8042BEC4  4B FF FC 75 */	bl aKI_MakeSinPointHalf
/* 8042BEC8  D0 3A 00 04 */	stfs f1, 4(r26)
/* 8042BECC  3A F7 00 01 */	addi r23, r23, 1
/* 8042BED0  38 60 00 18 */	li r3, 0x18
/* 8042BED4  3B 5A 00 08 */	addi r26, r26, 8
/* 8042BED8  7C 1F D8 2E */	lwzx r0, r31, r27
/* 8042BEDC  2C 17 00 02 */	cmpwi r23, 2
/* 8042BEE0  7C 80 C0 50 */	subf r4, r0, r24
/* 8042BEE4  7C 04 1B 96 */	divwu r0, r4, r3
/* 8042BEE8  7C 00 19 D6 */	mullw r0, r0, r3
/* 8042BEEC  7C 00 20 50 */	subf r0, r0, r4
/* 8042BEF0  7C 00 07 34 */	extsh r0, r0
/* 8042BEF4  54 03 10 3A */	slwi r3, r0, 2
/* 8042BEF8  7C 14 18 2E */	lwzx r0, r20, r3
/* 8042BEFC  90 19 00 00 */	stw r0, 0(r25)
/* 8042BF00  7C 15 18 2E */	lwzx r0, r21, r3
/* 8042BF04  90 19 00 04 */	stw r0, 4(r25)
/* 8042BF08  3B 39 00 08 */	addi r25, r25, 8
/* 8042BF0C  41 80 FE 7C */	blt lbl_8042BD88
/* 8042BF10  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8042BF14  39 61 00 70 */	addi r11, r1, 0x70
/* 8042BF18  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8042BF1C  4B C6 EF D5 */	bl func_8009AEF0
/* 8042BF20  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8042BF24  7C 08 03 A6 */	mtlr r0
/* 8042BF28  38 21 00 80 */	addi r1, r1, 0x80
/* 8042BF2C  4E 80 00 20 */	blr 
