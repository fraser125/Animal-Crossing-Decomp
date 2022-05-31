lbl_805DBAE0:
/* 805DBAE0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805DBAE4  7C 08 02 A6 */	mflr r0
/* 805DBAE8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805DBAEC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805DBAF0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805DBAF4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805DBAF8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805DBAFC  39 61 00 50 */	addi r11, r1, 0x50
/* 805DBB00  4B AB F3 B1 */	bl func_8009AEB0
/* 805DBB04  3C A0 80 6D */	lis r5, data_806CC8D8@ha /* 0x806CC8D8@ha */
/* 805DBB08  FF C0 08 90 */	fmr f30, f1
/* 805DBB0C  3B E5 C8 D8 */	addi r31, r5, data_806CC8D8@l /* 0x806CC8D8@l */
/* 805DBB10  FF E0 10 50 */	fneg f31, f2
/* 805DBB14  3B 9F 06 80 */	addi r28, r31, 0x680
/* 805DBB18  8B 23 00 02 */	lbz r25, 2(r3)
/* 805DBB1C  8B 03 00 03 */	lbz r24, 3(r3)
/* 805DBB20  7C 76 1B 78 */	mr r22, r3
/* 805DBB24  7C 97 23 78 */	mr r23, r4
/* 805DBB28  3B 9C 00 04 */	addi r28, r28, 4
/* 805DBB2C  3B DF 06 70 */	addi r30, r31, 0x670
/* 805DBB30  3B BF 06 60 */	addi r29, r31, 0x660
/* 805DBB34  3B 40 00 00 */	li r26, 0
/* 805DBB38  3A A0 00 00 */	li r21, 0
lbl_805DBB3C:
/* 805DBB3C  3B 60 00 00 */	li r27, 0
/* 805DBB40  3A 80 00 00 */	li r20, 0
lbl_805DBB44:
/* 805DBB44  7E C3 B3 78 */	mr r3, r22
/* 805DBB48  7F 64 DB 78 */	mr r4, r27
/* 805DBB4C  7F 45 D3 78 */	mr r5, r26
/* 805DBB50  4B FF C8 A9 */	bl mED_get_code
/* 805DBB54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805DBB58  98 61 00 10 */	stb r3, 0x10(r1)
/* 805DBB5C  28 00 00 D3 */	cmplwi r0, 0xd3
/* 805DBB60  41 82 00 A0 */	beq lbl_805DBC00
/* 805DBB64  7C 1B C8 00 */	cmpw r27, r25
/* 805DBB68  40 82 00 14 */	bne lbl_805DBB7C
/* 805DBB6C  7C 1A C0 00 */	cmpw r26, r24
/* 805DBB70  40 82 00 0C */	bne lbl_805DBB7C
/* 805DBB74  7F 85 E3 78 */	mr r5, r28
/* 805DBB78  48 00 00 08 */	b lbl_805DBB80
lbl_805DBB7C:
/* 805DBB7C  38 BF 06 80 */	addi r5, r31, 0x680
lbl_805DBB80:
/* 805DBB80  38 7F 06 38 */	addi r3, r31, 0x638
/* 805DBB84  7C 1D AC 2E */	lfsx f0, r29, r21
/* 805DBB88  7C 23 A4 2E */	lfsx f1, r3, r20
/* 805DBB8C  3C 80 80 65 */	lis r4, lit_1979@ha /* 0x8064B258@ha */
/* 805DBB90  EC 5F 00 2A */	fadds f2, f31, f0
/* 805DBB94  C0 84 B2 58 */	lfs f4, lit_1979@l(r4)  /* 0x8064B258@l */
/* 805DBB98  EC 7E 08 2A */	fadds f3, f30, f1
/* 805DBB9C  7C 3E AC 2E */	lfsx f1, r30, r21
/* 805DBBA0  2C 00 00 20 */	cmpwi r0, 0x20
/* 805DBBA4  EC 03 08 2A */	fadds f0, f3, f1
/* 805DBBA8  EC 24 00 2A */	fadds f1, f4, f0
/* 805DBBAC  41 82 00 08 */	beq lbl_805DBBB4
/* 805DBBB0  48 00 00 14 */	b lbl_805DBBC4
lbl_805DBBB4:
/* 805DBBB4  7E E3 BB 78 */	mr r3, r23
/* 805DBBB8  7C A4 2B 78 */	mr r4, r5
/* 805DBBBC  4B FF FD B5 */	bl mED_StringsDraw_spaceCode
/* 805DBBC0  48 00 00 40 */	b lbl_805DBC00
lbl_805DBBC4:
/* 805DBBC4  38 00 00 00 */	li r0, 0
/* 805DBBC8  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DBBCC  90 01 00 08 */	stw r0, 8(r1)
/* 805DBBD0  38 81 00 10 */	addi r4, r1, 0x10
/* 805DBBD4  C0 63 B2 2C */	lfs f3, lit_1859@l(r3)  /* 0x8064B22C@l */
/* 805DBBD8  7E E3 BB 78 */	mr r3, r23
/* 805DBBDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DBBE0  39 20 00 FF */	li r9, 0xff
/* 805DBBE4  FC 80 18 90 */	fmr f4, f3
/* 805DBBE8  39 40 00 00 */	li r10, 0
/* 805DBBEC  88 C5 00 00 */	lbz r6, 0(r5)
/* 805DBBF0  88 E5 00 01 */	lbz r7, 1(r5)
/* 805DBBF4  89 05 00 02 */	lbz r8, 2(r5)
/* 805DBBF8  38 A0 00 01 */	li r5, 1
/* 805DBBFC  4B DD 44 AD */	bl mFont_SetLineStrings
lbl_805DBC00:
/* 805DBC00  3B 7B 00 01 */	addi r27, r27, 1
/* 805DBC04  3A 94 00 04 */	addi r20, r20, 4
/* 805DBC08  2C 1B 00 0A */	cmpwi r27, 0xa
/* 805DBC0C  41 80 FF 38 */	blt lbl_805DBB44
/* 805DBC10  3B 5A 00 01 */	addi r26, r26, 1
/* 805DBC14  3A B5 00 04 */	addi r21, r21, 4
/* 805DBC18  2C 1A 00 04 */	cmpwi r26, 4
/* 805DBC1C  41 80 FF 20 */	blt lbl_805DBB3C
/* 805DBC20  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805DBC24  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805DBC28  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805DBC2C  39 61 00 50 */	addi r11, r1, 0x50
/* 805DBC30  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805DBC34  4B AB F2 C9 */	bl func_8009AEFC
/* 805DBC38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805DBC3C  7C 08 03 A6 */	mtlr r0
/* 805DBC40  38 21 00 70 */	addi r1, r1, 0x70
/* 805DBC44  4E 80 00 20 */	blr 
