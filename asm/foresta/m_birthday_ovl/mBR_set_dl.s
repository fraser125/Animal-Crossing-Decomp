lbl_805C4904:
/* 805C4904  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805C4908  7C 08 02 A6 */	mflr r0
/* 805C490C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805C4910  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805C4914  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805C4918  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805C491C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805C4920  39 61 00 40 */	addi r11, r1, 0x40
/* 805C4924  4B AD 65 A5 */	bl func_8009AEC8
/* 805C4928  3C C0 80 65 */	lis r6, data_8064ADA4@ha /* 0x8064ADA4@ha */
/* 805C492C  7C 7A 1B 78 */	mr r26, r3
/* 805C4930  38 66 AD A4 */	addi r3, r6, data_8064ADA4@l /* 0x8064ADA4@l */
/* 805C4934  80 DA 00 2C */	lwz r6, 0x2c(r26)
/* 805C4938  C0 23 00 00 */	lfs f1, 0(r3)
/* 805C493C  3C 60 80 65 */	lis r3, lit_508@ha /* 0x8064ADA8@ha */
/* 805C4940  7C BB 2B 78 */	mr r27, r5
/* 805C4944  3C E0 80 6C */	lis r7, data_806C7AE0@ha /* 0x806C7AE0@ha */
/* 805C4948  38 A3 AD A8 */	addi r5, r3, lit_508@l /* 0x8064ADA8@l */
/* 805C494C  FC 40 08 90 */	fmr f2, f1
/* 805C4950  83 DB 00 00 */	lwz r30, 0(r27)
/* 805C4954  3B E7 7A E0 */	addi r31, r7, data_806C7AE0@l /* 0x806C7AE0@l */
/* 805C4958  83 A6 09 BC */	lwz r29, 0x9bc(r6)
/* 805C495C  38 60 00 00 */	li r3, 0
/* 805C4960  C3 C4 00 18 */	lfs f30, 0x18(r4)
/* 805C4964  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 805C4968  C0 65 00 00 */	lfs f3, 0(r5)
/* 805C496C  4B E4 7A 81 */	bl Matrix_scale
/* 805C4970  3C 60 80 65 */	lis r3, lit_509@ha /* 0x8064ADAC@ha */
/* 805C4974  FC 20 F0 90 */	fmr f1, f30
/* 805C4978  C0 63 AD AC */	lfs f3, lit_509@l(r3)  /* 0x8064ADAC@l */
/* 805C497C  FC 40 F8 90 */	fmr f2, f31
/* 805C4980  38 60 00 01 */	li r3, 1
/* 805C4984  4B E4 79 7D */	bl Matrix_translate
/* 805C4988  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C498C  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 805C4990  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C4994  7F C3 F3 78 */	mr r3, r30
/* 805C4998  90 1C 00 00 */	stw r0, 0(r28)
/* 805C499C  4B E4 8A 39 */	bl _Matrix_to_Mtx_new
/* 805C49A0  90 7C 00 04 */	stw r3, 4(r28)
/* 805C49A4  3C 00 DE 00 */	lis r0, 0xde00
/* 805C49A8  3C 80 80 A1 */	lis r4, birthday_win_mode@ha /* 0x80A0DA70@ha */
/* 805C49AC  3C 60 80 65 */	lis r3, lit_510@ha /* 0x8064ADB0@ha */
/* 805C49B0  90 1C 00 08 */	stw r0, 8(r28)
/* 805C49B4  38 E3 AD B0 */	addi r7, r3, lit_510@l /* 0x8064ADB0@l */
/* 805C49B8  38 84 DA 70 */	addi r4, r4, birthday_win_mode@l /* 0x80A0DA70@l */
/* 805C49BC  3C C0 80 A1 */	lis r6, birthday_win_model@ha /* 0x80A0DAB0@ha */
/* 805C49C0  90 9C 00 0C */	stw r4, 0xc(r28)
/* 805C49C4  39 26 DA B0 */	addi r9, r6, birthday_win_model@l /* 0x80A0DAB0@l */
/* 805C49C8  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805C49CC  C0 47 00 00 */	lfs f2, 0(r7)
/* 805C49D0  81 5A 00 2C */	lwz r10, 0x2c(r26)
/* 805C49D4  39 04 00 FF */	addi r8, r4, 0x00FF /* 0xFA0000FF@l */
/* 805C49D8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805C49DC  38 9F 00 68 */	addi r4, r31, 0x68
/* 805C49E0  C0 0A 09 34 */	lfs f0, 0x934(r10)
/* 805C49E4  38 E5 00 20 */	addi r7, r5, 0x0020 /* 0xDB060020@l */
/* 805C49E8  C0 2A 09 38 */	lfs f1, 0x938(r10)
/* 805C49EC  3C 60 80 A1 */	lis r3, brt_win_month_model@ha /* 0x80A0D660@ha */
/* 805C49F0  FC 00 00 50 */	fneg f0, f0
/* 805C49F4  38 A3 D6 60 */	addi r5, r3, brt_win_month_model@l /* 0x80A0D660@l */
/* 805C49F8  FC 20 08 50 */	fneg f1, f1
/* 805C49FC  38 DF 00 38 */	addi r6, r31, 0x38
/* 805C4A00  7F C3 F3 78 */	mr r3, r30
/* 805C4A04  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C4A08  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C4A0C  FC 00 00 1E */	fctiwz f0, f0
/* 805C4A10  FC 20 08 1E */	fctiwz f1, f1
/* 805C4A14  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805C4A18  81 41 00 24 */	lwz r10, 0x24(r1)
/* 805C4A1C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805C4A20  55 4A 53 AA */	rlwinm r10, r10, 0xa, 0xe, 0x15
/* 805C4A24  65 4B F2 00 */	oris r11, r10, 0xf200
/* 805C4A28  81 81 00 1C */	lwz r12, 0x1c(r1)
/* 805C4A2C  61 6B 00 1F */	ori r11, r11, 0x1f
/* 805C4A30  55 8A 53 AA */	rlwinm r10, r12, 0xa, 0xe, 0x15
/* 805C4A34  91 7C 00 10 */	stw r11, 0x10(r28)
/* 805C4A38  65 4A 80 00 */	oris r10, r10, 0x8000
/* 805C4A3C  61 4A 00 1F */	ori r10, r10, 0x1f
/* 805C4A40  91 5C 00 14 */	stw r10, 0x14(r28)
/* 805C4A44  90 1C 00 18 */	stw r0, 0x18(r28)
/* 805C4A48  91 3C 00 1C */	stw r9, 0x1c(r28)
/* 805C4A4C  81 5D 00 04 */	lwz r10, 4(r29)
/* 805C4A50  31 2A FF FF */	addic r9, r10, -1
/* 805C4A54  91 1C 00 20 */	stw r8, 0x20(r28)
/* 805C4A58  7D 09 51 10 */	subfe r8, r9, r10
/* 805C4A5C  1D 08 00 0C */	mulli r8, r8, 0xc
/* 805C4A60  7C 84 42 14 */	add r4, r4, r8
/* 805C4A64  81 04 00 04 */	lwz r8, 4(r4)
/* 805C4A68  81 24 00 00 */	lwz r9, 0(r4)
/* 805C4A6C  81 44 00 08 */	lwz r10, 8(r4)
/* 805C4A70  55 04 82 1E */	rlwinm r4, r8, 0x10, 8, 0xf
/* 805C4A74  51 24 C0 0E */	rlwimi r4, r9, 0x18, 0, 7
/* 805C4A78  51 44 44 2E */	rlwimi r4, r10, 8, 0x10, 0x17
/* 805C4A7C  60 84 00 FF */	ori r4, r4, 0xff
/* 805C4A80  90 9C 00 24 */	stw r4, 0x24(r28)
/* 805C4A84  90 FC 00 28 */	stw r7, 0x28(r28)
/* 805C4A88  A0 9D 00 00 */	lhz r4, 0(r29)
/* 805C4A8C  54 84 10 3A */	slwi r4, r4, 2
/* 805C4A90  7C 86 22 14 */	add r4, r6, r4
/* 805C4A94  80 84 FF FC */	lwz r4, -4(r4)
/* 805C4A98  90 9C 00 2C */	stw r4, 0x2c(r28)
/* 805C4A9C  3B 9C 00 30 */	addi r28, r28, 0x30
/* 805C4AA0  7F 84 E3 78 */	mr r4, r28
/* 805C4AA4  90 1C 00 00 */	stw r0, 0(r28)
/* 805C4AA8  3B 9C 00 08 */	addi r28, r28, 8
/* 805C4AAC  90 A4 00 04 */	stw r5, 4(r4)
/* 805C4AB0  93 9E 02 D0 */	stw r28, 0x2d0(r30)
/* 805C4AB4  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 805C4AB8  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805C4ABC  7D 89 03 A6 */	mtctr r12
/* 805C4AC0  4E 80 04 21 */	bctrl 
/* 805C4AC4  3C A0 80 65 */	lis r5, lit_511@ha /* 0x8064ADB4@ha */
/* 805C4AC8  3C 80 80 65 */	lis r4, lit_512@ha /* 0x8064ADB8@ha */
/* 805C4ACC  C0 25 AD B4 */	lfs f1, lit_511@l(r5)  /* 0x8064ADB4@l */
/* 805C4AD0  3C 60 80 65 */	lis r3, lit_513@ha /* 0x8064ADBC@ha */
/* 805C4AD4  C0 04 AD B8 */	lfs f0, lit_512@l(r4)  /* 0x8064ADB8@l */
/* 805C4AD8  38 C0 00 01 */	li r6, 1
/* 805C4ADC  C0 63 AD BC */	lfs f3, lit_513@l(r3)  /* 0x8064ADBC@l */
/* 805C4AE0  38 00 00 00 */	li r0, 0
/* 805C4AE4  90 C1 00 08 */	stw r6, 8(r1)
/* 805C4AE8  EC 21 F0 2A */	fadds f1, f1, f30
/* 805C4AEC  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805C4AF0  7F 63 DB 78 */	mr r3, r27
/* 805C4AF4  FC 80 18 90 */	fmr f4, f3
/* 805C4AF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C4AFC  38 9F 00 1C */	addi r4, r31, 0x1c
/* 805C4B00  38 A0 00 15 */	li r5, 0x15
/* 805C4B04  38 C0 00 FF */	li r6, 0xff
/* 805C4B08  38 E0 00 FF */	li r7, 0xff
/* 805C4B0C  39 00 00 FF */	li r8, 0xff
/* 805C4B10  39 20 00 FF */	li r9, 0xff
/* 805C4B14  39 40 00 00 */	li r10, 0
/* 805C4B18  4B DE B5 91 */	bl mFont_SetLineStrings
/* 805C4B1C  A0 BD 00 02 */	lhz r5, 2(r29)
/* 805C4B20  38 61 00 10 */	addi r3, r1, 0x10
/* 805C4B24  38 80 00 02 */	li r4, 2
/* 805C4B28  38 C0 00 02 */	li r6, 2
/* 805C4B2C  38 E0 00 00 */	li r7, 0
/* 805C4B30  39 00 00 01 */	li r8, 1
/* 805C4B34  39 20 00 01 */	li r9, 1
/* 805C4B38  4B DE A9 41 */	bl mFont_UnintToString
/* 805C4B3C  80 9D 00 04 */	lwz r4, 4(r29)
/* 805C4B40  3C 60 80 65 */	lis r3, lit_515@ha /* 0x8064ADC4@ha */
/* 805C4B44  C0 03 AD C4 */	lfs f0, lit_515@l(r3)  /* 0x8064ADC4@l */
/* 805C4B48  38 00 00 01 */	li r0, 1
/* 805C4B4C  20 A4 00 01 */	subfic r5, r4, 1
/* 805C4B50  90 01 00 08 */	stw r0, 8(r1)
/* 805C4B54  30 65 FF FF */	addic r3, r5, -1
/* 805C4B58  EF E0 F8 28 */	fsubs f31, f0, f31
/* 805C4B5C  7C A3 29 10 */	subfe r5, r3, r5
/* 805C4B60  3C 80 80 65 */	lis r4, lit_514@ha /* 0x8064ADC0@ha */
/* 805C4B64  3C 60 80 65 */	lis r3, lit_508@ha /* 0x8064ADA8@ha */
/* 805C4B68  C0 04 AD C0 */	lfs f0, lit_514@l(r4)  /* 0x8064ADC0@l */
/* 805C4B6C  C0 63 AD A8 */	lfs f3, lit_508@l(r3)  /* 0x8064ADA8@l */
/* 805C4B70  1C 65 00 0C */	mulli r3, r5, 0xc
/* 805C4B74  38 00 00 00 */	li r0, 0
/* 805C4B78  39 1F 00 68 */	addi r8, r31, 0x68
/* 805C4B7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C4B80  FC 40 F8 90 */	fmr f2, f31
/* 805C4B84  38 81 00 10 */	addi r4, r1, 0x10
/* 805C4B88  7D 08 1A 14 */	add r8, r8, r3
/* 805C4B8C  FC 80 18 90 */	fmr f4, f3
/* 805C4B90  EC 20 F0 2A */	fadds f1, f0, f30
/* 805C4B94  80 C8 00 00 */	lwz r6, 0(r8)
/* 805C4B98  80 E8 00 04 */	lwz r7, 4(r8)
/* 805C4B9C  7F 63 DB 78 */	mr r3, r27
/* 805C4BA0  81 08 00 08 */	lwz r8, 8(r8)
/* 805C4BA4  38 A0 00 02 */	li r5, 2
/* 805C4BA8  39 20 00 FF */	li r9, 0xff
/* 805C4BAC  39 40 00 00 */	li r10, 0
/* 805C4BB0  4B DE B4 F9 */	bl mFont_SetLineStrings
/* 805C4BB4  80 BD 00 04 */	lwz r5, 4(r29)
/* 805C4BB8  38 00 00 01 */	li r0, 1
/* 805C4BBC  3C 80 80 65 */	lis r4, lit_516@ha /* 0x8064ADC8@ha */
/* 805C4BC0  3C 60 80 65 */	lis r3, lit_508@ha /* 0x8064ADA8@ha */
/* 805C4BC4  20 A5 00 02 */	subfic r5, r5, 2
/* 805C4BC8  C0 04 AD C8 */	lfs f0, lit_516@l(r4)  /* 0x8064ADC8@l */
/* 805C4BCC  90 01 00 08 */	stw r0, 8(r1)
/* 805C4BD0  30 05 FF FF */	addic r0, r5, -1
/* 805C4BD4  7C 00 29 10 */	subfe r0, r0, r5
/* 805C4BD8  C0 63 AD A8 */	lfs f3, lit_508@l(r3)  /* 0x8064ADA8@l */
/* 805C4BDC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 805C4BE0  38 7F 00 68 */	addi r3, r31, 0x68
/* 805C4BE4  38 00 00 00 */	li r0, 0
/* 805C4BE8  FC 40 F8 90 */	fmr f2, f31
/* 805C4BEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C4BF0  FC 80 18 90 */	fmr f4, f3
/* 805C4BF4  7C 63 2A 14 */	add r3, r3, r5
/* 805C4BF8  EC 20 F0 2A */	fadds f1, f0, f30
/* 805C4BFC  80 C3 00 00 */	lwz r6, 0(r3)
/* 805C4C00  38 9F 00 34 */	addi r4, r31, 0x34
/* 805C4C04  80 E3 00 04 */	lwz r7, 4(r3)
/* 805C4C08  38 A0 00 02 */	li r5, 2
/* 805C4C0C  81 03 00 08 */	lwz r8, 8(r3)
/* 805C4C10  7F 63 DB 78 */	mr r3, r27
/* 805C4C14  39 20 00 FF */	li r9, 0xff
/* 805C4C18  39 40 00 00 */	li r10, 0
/* 805C4C1C  4B DE B4 8D */	bl mFont_SetLineStrings
/* 805C4C20  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805C4C24  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805C4C28  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805C4C2C  39 61 00 40 */	addi r11, r1, 0x40
/* 805C4C30  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805C4C34  4B AD 62 E1 */	bl func_8009AF14
/* 805C4C38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C4C3C  7C 08 03 A6 */	mtlr r0
/* 805C4C40  38 21 00 60 */	addi r1, r1, 0x60
/* 805C4C44  4E 80 00 20 */	blr 
