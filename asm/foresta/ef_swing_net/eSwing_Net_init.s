lbl_80620280:
/* 80620280  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80620284  7C 08 02 A6 */	mflr r0
/* 80620288  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8062028C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80620290  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80620294  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80620298  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8062029C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806202A0  4B A7 AC 1D */	bl func_8009AEBC
/* 806202A4  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 806202A8  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 806202AC  39 4A 85 38 */	addi r10, r10, common_data@l /* 0x81138538@l */
/* 806202B0  7C 79 1B 78 */	mr r25, r3
/* 806202B4  3F EA 00 02 */	addis r31, r10, 2
/* 806202B8  7C 9A 23 78 */	mr r26, r4
/* 806202BC  80 1F 60 9C */	lwz r0, 0x609c(r31)
/* 806202C0  7C DB 33 78 */	mr r27, r6
/* 806202C4  7C FC 3B 78 */	mr r28, r7
/* 806202C8  7D 1D 43 78 */	mr r29, r8
/* 806202CC  28 00 00 00 */	cmplwi r0, 0
/* 806202D0  7D 3E 4B 78 */	mr r30, r9
/* 806202D4  41 82 02 14 */	beq lbl_806204E8
/* 806202D8  7F C0 07 35 */	extsh. r0, r30
/* 806202DC  40 82 00 2C */	bne lbl_80620308
/* 806202E0  81 79 00 00 */	lwz r11, 0(r25)
/* 806202E4  38 61 00 50 */	addi r3, r1, 0x50
/* 806202E8  81 59 00 04 */	lwz r10, 4(r25)
/* 806202EC  7C A5 07 34 */	extsh r5, r5
/* 806202F0  80 19 00 08 */	lwz r0, 8(r25)
/* 806202F4  91 61 00 50 */	stw r11, 0x50(r1)
/* 806202F8  91 41 00 54 */	stw r10, 0x54(r1)
/* 806202FC  90 01 00 58 */	stw r0, 0x58(r1)
/* 80620300  4B FF FC E5 */	bl eSwing_Net_call_effect
/* 80620304  48 00 01 E4 */	b lbl_806204E8
lbl_80620308:
/* 80620308  7F A3 07 34 */	extsh r3, r29
/* 8062030C  4B D7 3F C1 */	bl mCoBG_CheckWaterAttribute
/* 80620310  2C 03 00 00 */	cmpwi r3, 0
/* 80620314  40 82 00 10 */	bne lbl_80620324
/* 80620318  7F A0 07 34 */	extsh r0, r29
/* 8062031C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80620320  40 82 01 C8 */	bne lbl_806204E8
lbl_80620324:
/* 80620324  80 79 00 00 */	lwz r3, 0(r25)
/* 80620328  80 99 00 04 */	lwz r4, 4(r25)
/* 8062032C  80 19 00 08 */	lwz r0, 8(r25)
/* 80620330  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80620334  A8 61 00 10 */	lha r3, 0x10(r1)
/* 80620338  90 81 00 60 */	stw r4, 0x60(r1)
/* 8062033C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80620340  4B D9 A7 B1 */	bl sin_s
/* 80620344  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064CCE8@ha */
/* 80620348  3C 60 80 65 */	lis r3, lit_482@ha /* 0x8064CCEC@ha */
/* 8062034C  C0 04 CC E8 */	lfs f0, lit_481@l(r4)  /* 0x8064CCE8@l */
/* 80620350  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 80620354  EC 20 00 72 */	fmuls f1, f0, f1
/* 80620358  C0 03 CC EC */	lfs f0, lit_482@l(r3)  /* 0x8064CCEC@l */
/* 8062035C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80620360  A8 61 00 10 */	lha r3, 0x10(r1)
/* 80620364  EC 02 00 2A */	fadds f0, f2, f0
/* 80620368  EC 23 08 2A */	fadds f1, f3, f1
/* 8062036C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80620370  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80620374  4B D9 A7 29 */	bl cos_s
/* 80620378  3C 60 80 65 */	lis r3, lit_481@ha /* 0x8064CCE8@ha */
/* 8062037C  3C 80 80 65 */	lis r4, lit_484@ha /* 0x8064CCF4@ha */
/* 80620380  38 A3 CC E8 */	addi r5, r3, lit_481@l /* 0x8064CCE8@l */
/* 80620384  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80620388  C0 45 00 00 */	lfs f2, 0(r5)
/* 8062038C  3C 60 80 65 */	lis r3, lit_483@ha /* 0x8064CCF0@ha */
/* 80620390  C3 C4 CC F4 */	lfs f30, lit_484@l(r4)  /* 0x8064CCF4@l */
/* 80620394  3A E0 00 00 */	li r23, 0
/* 80620398  EC 22 00 72 */	fmuls f1, f2, f1
/* 8062039C  C3 E3 CC F0 */	lfs f31, lit_483@l(r3)  /* 0x8064CCF0@l */
/* 806203A0  3B 00 00 00 */	li r24, 0
/* 806203A4  EC 00 08 2A */	fadds f0, f0, f1
/* 806203A8  D0 01 00 64 */	stfs f0, 0x64(r1)
lbl_806203AC:
/* 806203AC  4B A3 C9 81 */	bl fqrand2
/* 806203B0  EC 1E 00 72 */	fmuls f0, f30, f1
/* 806203B4  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 806203B8  80 61 00 60 */	lwz r3, 0x60(r1)
/* 806203BC  7F 45 D3 78 */	mr r5, r26
/* 806203C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806203C4  7F 67 DB 78 */	mr r7, r27
/* 806203C8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 806203CC  90 81 00 44 */	stw r4, 0x44(r1)
/* 806203D0  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 806203D4  7F 88 E3 78 */	mr r8, r28
/* 806203D8  90 61 00 48 */	stw r3, 0x48(r1)
/* 806203DC  7F A9 EB 78 */	mr r9, r29
/* 806203E0  FC 00 00 1E */	fctiwz f0, f0
/* 806203E4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806203E8  38 81 00 44 */	addi r4, r1, 0x44
/* 806203EC  38 60 00 3B */	li r3, 0x3b
/* 806203F0  81 86 00 00 */	lwz r12, 0(r6)
/* 806203F4  39 40 50 00 */	li r10, 0x5000
/* 806203F8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806203FC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80620400  7C 18 02 14 */	add r0, r24, r0
/* 80620404  7C 06 07 34 */	extsh r6, r0
/* 80620408  7D 89 03 A6 */	mtctr r12
/* 8062040C  4E 80 04 21 */	bctrl 
/* 80620410  3A F7 00 01 */	addi r23, r23, 1
/* 80620414  3B 18 20 00 */	addi r24, r24, 0x2000
/* 80620418  2C 17 00 08 */	cmpwi r23, 8
/* 8062041C  41 80 FF 90 */	blt lbl_806203AC
/* 80620420  80 79 00 00 */	lwz r3, 0(r25)
/* 80620424  7F 45 D3 78 */	mr r5, r26
/* 80620428  80 D9 00 04 */	lwz r6, 4(r25)
/* 8062042C  7F 67 DB 78 */	mr r7, r27
/* 80620430  80 19 00 08 */	lwz r0, 8(r25)
/* 80620434  7F 88 E3 78 */	mr r8, r28
/* 80620438  90 61 00 38 */	stw r3, 0x38(r1)
/* 8062043C  38 81 00 38 */	addi r4, r1, 0x38
/* 80620440  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80620444  38 60 00 3A */	li r3, 0x3a
/* 80620448  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 8062044C  39 20 00 00 */	li r9, 0
/* 80620450  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 80620454  39 40 00 00 */	li r10, 0
/* 80620458  90 01 00 40 */	stw r0, 0x40(r1)
/* 8062045C  81 8B 00 00 */	lwz r12, 0(r11)
/* 80620460  7D 89 03 A6 */	mtctr r12
/* 80620464  4E 80 04 21 */	bctrl 
/* 80620468  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 8062046C  7F 45 D3 78 */	mr r5, r26
/* 80620470  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 80620474  7F 67 DB 78 */	mr r7, r27
/* 80620478  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8062047C  7F 88 E3 78 */	mr r8, r28
/* 80620480  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80620484  38 81 00 2C */	addi r4, r1, 0x2c
/* 80620488  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8062048C  38 60 00 45 */	li r3, 0x45
/* 80620490  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80620494  38 C0 00 00 */	li r6, 0
/* 80620498  39 20 00 00 */	li r9, 0
/* 8062049C  39 40 00 00 */	li r10, 0
/* 806204A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806204A4  81 8B 00 00 */	lwz r12, 0(r11)
/* 806204A8  7D 89 03 A6 */	mtctr r12
/* 806204AC  4E 80 04 21 */	bctrl 
/* 806204B0  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 806204B4  7F 44 D3 78 */	mr r4, r26
/* 806204B8  80 E1 00 60 */	lwz r7, 0x60(r1)
/* 806204BC  7F 65 DB 78 */	mr r5, r27
/* 806204C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806204C4  7F 86 E3 78 */	mr r6, r28
/* 806204C8  90 61 00 20 */	stw r3, 0x20(r1)
/* 806204CC  38 61 00 20 */	addi r3, r1, 0x20
/* 806204D0  90 E1 00 24 */	stw r7, 0x24(r1)
/* 806204D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 806204D8  4B FF FC 7D */	bl eSwing_Net_call_stick_effect
/* 806204DC  38 81 00 5C */	addi r4, r1, 0x5c
/* 806204E0  38 60 01 5C */	li r3, 0x15c
/* 806204E4  48 00 DA C5 */	bl sAdo_OngenTrgStart
lbl_806204E8:
/* 806204E8  80 99 00 00 */	lwz r4, 0(r25)
/* 806204EC  7F 66 DB 78 */	mr r6, r27
/* 806204F0  80 79 00 04 */	lwz r3, 4(r25)
/* 806204F4  7F 88 E3 78 */	mr r8, r28
/* 806204F8  80 19 00 08 */	lwz r0, 8(r25)
/* 806204FC  7F 49 D3 78 */	mr r9, r26
/* 80620500  90 81 00 14 */	stw r4, 0x14(r1)
/* 80620504  7F AA EB 78 */	mr r10, r29
/* 80620508  38 81 00 14 */	addi r4, r1, 0x14
/* 8062050C  38 E1 00 10 */	addi r7, r1, 0x10
/* 80620510  90 61 00 18 */	stw r3, 0x18(r1)
/* 80620514  38 60 00 39 */	li r3, 0x39
/* 80620518  38 A0 00 00 */	li r5, 0
/* 8062051C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80620520  93 C1 00 08 */	stw r30, 8(r1)
/* 80620524  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80620528  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8062052C  7D 89 03 A6 */	mtctr r12
/* 80620530  4E 80 04 21 */	bctrl 
/* 80620534  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80620538  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8062053C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80620540  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80620544  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80620548  4B A7 A9 C1 */	bl func_8009AF08
/* 8062054C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80620550  7C 08 03 A6 */	mtlr r0
/* 80620554  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80620558  4E 80 00 20 */	blr 
