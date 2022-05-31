lbl_805C309C:
/* 805C309C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805C30A0  7C 08 02 A6 */	mflr r0
/* 805C30A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C30A8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805C30AC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805C30B0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805C30B4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805C30B8  39 61 00 50 */	addi r11, r1, 0x50
/* 805C30BC  4B AD 7D F5 */	bl func_8009AEB0
/* 805C30C0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C30C4  7C B5 2B 78 */	mr r21, r5
/* 805C30C8  7C 94 23 78 */	mr r20, r4
/* 805C30CC  3B C0 00 00 */	li r30, 0
/* 805C30D0  83 23 09 94 */	lwz r25, 0x994(r3)
/* 805C30D4  88 19 00 03 */	lbz r0, 3(r25)
/* 805C30D8  7C 15 00 00 */	cmpw r21, r0
/* 805C30DC  40 82 00 14 */	bne lbl_805C30F0
/* 805C30E0  88 19 00 02 */	lbz r0, 2(r25)
/* 805C30E4  28 00 00 02 */	cmplwi r0, 2
/* 805C30E8  40 82 00 08 */	bne lbl_805C30F0
/* 805C30EC  3B C0 00 01 */	li r30, 1
lbl_805C30F0:
/* 805C30F0  7C 79 AA 14 */	add r3, r25, r21
/* 805C30F4  3C 00 43 30 */	lis r0, 0x4330
/* 805C30F8  8B 03 00 08 */	lbz r24, 8(r3)
/* 805C30FC  3C 60 80 65 */	lis r3, lit_701@ha /* 0x8064AD24@ha */
/* 805C3100  38 83 AD 24 */	addi r4, r3, lit_701@l /* 0x8064AD24@l */
/* 805C3104  3C A0 80 65 */	lis r5, lit_824@ha /* 0x8064AD50@ha */
/* 805C3108  38 78 FF FF */	addi r3, r24, -1
/* 805C310C  C8 64 00 00 */	lfd f3, 0(r4)
/* 805C3110  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805C3114  C0 85 AD 50 */	lfs f4, lit_824@l(r5)  /* 0x8064AD50@l */
/* 805C3118  90 61 00 14 */	stw r3, 0x14(r1)
/* 805C311C  3C C0 80 65 */	lis r6, lit_823@ha /* 0x8064AD4C@ha */
/* 805C3120  38 66 AD 4C */	addi r3, r6, lit_823@l /* 0x8064AD4C@l */
/* 805C3124  3C E0 80 65 */	lis r7, lit_820@ha /* 0x8064AD40@ha */
/* 805C3128  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C312C  3C C0 80 65 */	lis r6, lit_821@ha /* 0x8064AD44@ha */
/* 805C3130  C0 A6 AD 44 */	lfs f5, lit_821@l(r6)  /* 0x8064AD44@l */
/* 805C3134  3C C0 80 65 */	lis r6, lit_743@ha /* 0x8064AD38@ha */
/* 805C3138  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805C313C  3C 80 80 65 */	lis r4, lit_822@ha /* 0x8064AD48@ha */
/* 805C3140  3C A0 80 65 */	lis r5, lit_744@ha /* 0x8064AD3C@ha */
/* 805C3144  C0 C6 AD 38 */	lfs f6, lit_743@l(r6)  /* 0x8064AD38@l */
/* 805C3148  EC 00 18 28 */	fsubs f0, f0, f3
/* 805C314C  C0 63 00 00 */	lfs f3, 0(r3)
/* 805C3150  2C 15 00 00 */	cmpwi r21, 0
/* 805C3154  EC 04 00 32 */	fmuls f0, f4, f0
/* 805C3158  EC 85 08 2A */	fadds f4, f5, f1
/* 805C315C  C0 A7 AD 40 */	lfs f5, lit_820@l(r7)  /* 0x8064AD40@l */
/* 805C3160  C0 24 AD 48 */	lfs f1, lit_822@l(r4)  /* 0x8064AD48@l */
/* 805C3164  EC 03 00 2A */	fadds f0, f3, f0
/* 805C3168  C0 65 AD 3C */	lfs f3, lit_744@l(r5)  /* 0x8064AD3C@l */
/* 805C316C  EC 85 20 2A */	fadds f4, f5, f4
/* 805C3170  EC 02 00 28 */	fsubs f0, f2, f0
/* 805C3174  EF C6 20 2A */	fadds f30, f6, f4
/* 805C3178  EC 01 00 2A */	fadds f0, f1, f0
/* 805C317C  EF E3 00 28 */	fsubs f31, f3, f0
/* 805C3180  40 82 00 0C */	bne lbl_805C318C
/* 805C3184  3A F9 00 2C */	addi r23, r25, 0x2c
/* 805C3188  48 00 00 18 */	b lbl_805C31A0
lbl_805C318C:
/* 805C318C  2C 15 00 01 */	cmpwi r21, 1
/* 805C3190  40 82 00 0C */	bne lbl_805C319C
/* 805C3194  3A F9 00 9A */	addi r23, r25, 0x9a
/* 805C3198  48 00 00 08 */	b lbl_805C31A0
lbl_805C319C:
/* 805C319C  3A F9 01 4A */	addi r23, r25, 0x14a
lbl_805C31A0:
/* 805C31A0  3C 80 80 6C */	lis r4, address_color@ha /* 0x806C7A78@ha */
/* 805C31A4  3C 60 80 65 */	lis r3, lit_825@ha /* 0x8064AD54@ha */
/* 805C31A8  38 84 7A 78 */	addi r4, r4, address_color@l /* 0x806C7A78@l */
/* 805C31AC  3A C0 00 00 */	li r22, 0
/* 805C31B0  3B A4 00 10 */	addi r29, r4, 0x10
/* 805C31B4  3B E3 AD 54 */	addi r31, r3, lit_825@l /* 0x8064AD54@l */
/* 805C31B8  3B 84 00 0C */	addi r28, r4, 0xc
/* 805C31BC  3B 64 00 08 */	addi r27, r4, 8
/* 805C31C0  3B 44 00 04 */	addi r26, r4, 4
/* 805C31C4  48 00 01 0C */	b lbl_805C32D0
lbl_805C31C8:
/* 805C31C8  2C 1E 00 01 */	cmpwi r30, 1
/* 805C31CC  40 82 00 40 */	bne lbl_805C320C
/* 805C31D0  88 19 00 05 */	lbz r0, 5(r25)
/* 805C31D4  7C 16 00 00 */	cmpw r22, r0
/* 805C31D8  40 82 00 34 */	bne lbl_805C320C
/* 805C31DC  2C 15 00 00 */	cmpwi r21, 0
/* 805C31E0  40 82 00 24 */	bne lbl_805C3204
/* 805C31E4  88 19 00 06 */	lbz r0, 6(r25)
/* 805C31E8  28 00 00 00 */	cmplwi r0, 0
/* 805C31EC  41 82 00 18 */	beq lbl_805C3204
/* 805C31F0  38 18 FF FF */	addi r0, r24, -1
/* 805C31F4  7C 16 00 00 */	cmpw r22, r0
/* 805C31F8  40 82 00 0C */	bne lbl_805C3204
/* 805C31FC  7F A8 EB 78 */	mr r8, r29
/* 805C3200  48 00 00 48 */	b lbl_805C3248
lbl_805C3204:
/* 805C3204  7F 88 E3 78 */	mr r8, r28
/* 805C3208  48 00 00 40 */	b lbl_805C3248
lbl_805C320C:
/* 805C320C  2C 15 00 00 */	cmpwi r21, 0
/* 805C3210  40 82 00 34 */	bne lbl_805C3244
/* 805C3214  88 19 00 06 */	lbz r0, 6(r25)
/* 805C3218  28 00 00 00 */	cmplwi r0, 0
/* 805C321C  41 82 00 18 */	beq lbl_805C3234
/* 805C3220  38 18 FF FF */	addi r0, r24, -1
/* 805C3224  7C 16 00 00 */	cmpw r22, r0
/* 805C3228  40 82 00 0C */	bne lbl_805C3234
/* 805C322C  7F 68 DB 78 */	mr r8, r27
/* 805C3230  48 00 00 18 */	b lbl_805C3248
lbl_805C3234:
/* 805C3234  3C 60 80 6C */	lis r3, address_color@ha /* 0x806C7A78@ha */
/* 805C3238  38 03 7A 78 */	addi r0, r3, address_color@l /* 0x806C7A78@l */
/* 805C323C  7C 08 03 78 */	mr r8, r0
/* 805C3240  48 00 00 08 */	b lbl_805C3248
lbl_805C3244:
/* 805C3244  7F 48 D3 78 */	mr r8, r26
lbl_805C3248:
/* 805C3248  38 00 00 01 */	li r0, 1
/* 805C324C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 805C3250  90 01 00 08 */	stw r0, 8(r1)
/* 805C3254  38 00 00 00 */	li r0, 0
/* 805C3258  FC 20 F0 90 */	fmr f1, f30
/* 805C325C  7E 83 A3 78 */	mr r3, r20
/* 805C3260  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C3264  FC 40 F8 90 */	fmr f2, f31
/* 805C3268  FC 80 18 90 */	fmr f4, f3
/* 805C326C  7E E4 BB 78 */	mr r4, r23
/* 805C3270  88 C8 00 00 */	lbz r6, 0(r8)
/* 805C3274  38 A0 00 08 */	li r5, 8
/* 805C3278  88 E8 00 01 */	lbz r7, 1(r8)
/* 805C327C  39 20 00 FF */	li r9, 0xff
/* 805C3280  89 08 00 02 */	lbz r8, 2(r8)
/* 805C3284  39 40 00 00 */	li r10, 0
/* 805C3288  4B DE CE 21 */	bl mFont_SetLineStrings
/* 805C328C  88 19 00 06 */	lbz r0, 6(r25)
/* 805C3290  28 00 00 00 */	cmplwi r0, 0
/* 805C3294  41 82 00 28 */	beq lbl_805C32BC
/* 805C3298  38 18 FF FE */	addi r0, r24, -2
/* 805C329C  7C 16 00 00 */	cmpw r22, r0
/* 805C32A0  40 82 00 1C */	bne lbl_805C32BC
/* 805C32A4  2C 15 00 00 */	cmpwi r21, 0
/* 805C32A8  40 82 00 14 */	bne lbl_805C32BC
/* 805C32AC  3C 60 80 65 */	lis r3, lit_826@ha /* 0x8064AD58@ha */
/* 805C32B0  C0 03 AD 58 */	lfs f0, lit_826@l(r3)  /* 0x8064AD58@l */
/* 805C32B4  EF FF 00 2A */	fadds f31, f31, f0
/* 805C32B8  48 00 00 10 */	b lbl_805C32C8
lbl_805C32BC:
/* 805C32BC  3C 60 80 65 */	lis r3, lit_827@ha /* 0x8064AD5C@ha */
/* 805C32C0  C0 03 AD 5C */	lfs f0, lit_827@l(r3)  /* 0x8064AD5C@l */
/* 805C32C4  EF FF 00 2A */	fadds f31, f31, f0
lbl_805C32C8:
/* 805C32C8  3A D6 00 01 */	addi r22, r22, 1
/* 805C32CC  3A F7 00 16 */	addi r23, r23, 0x16
lbl_805C32D0:
/* 805C32D0  7C 16 C0 00 */	cmpw r22, r24
/* 805C32D4  41 80 FE F4 */	blt lbl_805C31C8
/* 805C32D8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805C32DC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805C32E0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805C32E4  39 61 00 50 */	addi r11, r1, 0x50
/* 805C32E8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805C32EC  4B AD 7C 11 */	bl func_8009AEFC
/* 805C32F0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805C32F4  7C 08 03 A6 */	mtlr r0
/* 805C32F8  38 21 00 70 */	addi r1, r1, 0x70
/* 805C32FC  4E 80 00 20 */	blr 
