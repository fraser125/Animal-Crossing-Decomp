lbl_803A0268:
/* 803A0268  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A026C  7C 08 02 A6 */	mflr r0
/* 803A0270  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A0274  39 61 00 40 */	addi r11, r1, 0x40
/* 803A0278  4B CF AC 3D */	bl func_8009AEB4
/* 803A027C  7C 7F 1B 78 */	mr r31, r3
/* 803A0280  38 7F 00 58 */	addi r3, r31, 0x58
/* 803A0284  4B CB DD A5 */	bl guMtxIdent
/* 803A0288  38 7F 00 98 */	addi r3, r31, 0x98
/* 803A028C  4B CB DD 9D */	bl guMtxIdent
/* 803A0290  3C 60 80 64 */	lis r3, data_80641E54@ha /* 0x80641E54@ha */
/* 803A0294  3C E0 80 64 */	lis r7, lit_304@ha /* 0x80641E58@ha */
/* 803A0298  C0 23 1E 54 */	lfs f1, data_80641E54@l(r3)  /* 0x80641E54@l */
/* 803A029C  39 07 1E 58 */	addi r8, r7, lit_304@l /* 0x80641E58@l */
/* 803A02A0  3C C0 80 64 */	lis r6, lit_305@ha /* 0x80641E5C@ha */
/* 803A02A4  3C A0 80 64 */	lis r5, lit_306@ha /* 0x80641E60@ha */
/* 803A02A8  38 E6 1E 5C */	addi r7, r6, lit_305@l /* 0x80641E5C@l */
/* 803A02AC  3C 80 80 64 */	lis r4, lit_307@ha /* 0x80641E64@ha */
/* 803A02B0  38 C5 1E 60 */	addi r6, r5, lit_306@l /* 0x80641E60@l */
/* 803A02B4  3C 60 80 64 */	lis r3, lit_308@ha /* 0x80641E68@ha */
/* 803A02B8  38 A4 1E 64 */	addi r5, r4, lit_307@l /* 0x80641E64@l */
/* 803A02BC  FC 80 08 90 */	fmr f4, f1
/* 803A02C0  38 83 1E 68 */	addi r4, r3, lit_308@l /* 0x80641E68@l */
/* 803A02C4  C0 48 00 00 */	lfs f2, 0(r8)
/* 803A02C8  C0 67 00 00 */	lfs f3, 0(r7)
/* 803A02CC  38 7F 00 18 */	addi r3, r31, 0x18
/* 803A02D0  C0 A6 00 00 */	lfs f5, 0(r6)
/* 803A02D4  C0 C5 00 00 */	lfs f6, 0(r5)
/* 803A02D8  C0 E4 00 00 */	lfs f7, 0(r4)
/* 803A02DC  4B CB DF 3D */	bl func_8005E218
/* 803A02E0  38 00 00 02 */	li r0, 2
/* 803A02E4  3A C0 00 00 */	li r22, 0
/* 803A02E8  7C 09 03 A6 */	mtctr r0
lbl_803A02EC:
/* 803A02EC  92 DF 00 08 */	stw r22, 8(r31)
/* 803A02F0  80 1F 00 08 */	lwz r0, 8(r31)
/* 803A02F4  2C 00 00 00 */	cmpwi r0, 0
/* 803A02F8  40 82 00 0C */	bne lbl_803A0304
/* 803A02FC  82 FF 00 10 */	lwz r23, 0x10(r31)
/* 803A0300  48 00 00 08 */	b lbl_803A0308
lbl_803A0304:
/* 803A0304  82 FF 00 14 */	lwz r23, 0x14(r31)
lbl_803A0308:
/* 803A0308  38 60 00 00 */	li r3, 0
/* 803A030C  3A A0 00 00 */	li r21, 0
/* 803A0310  38 80 00 00 */	li r4, 0
/* 803A0314  48 00 00 78 */	b lbl_803A038C
lbl_803A0318:
/* 803A0318  38 C0 00 00 */	li r6, 0
/* 803A031C  38 A0 00 00 */	li r5, 0
/* 803A0320  7C CA 33 78 */	mr r10, r6
/* 803A0324  39 80 00 00 */	li r12, 0
/* 803A0328  39 60 FF FB */	li r11, -5
/* 803A032C  39 20 00 78 */	li r9, 0x78
/* 803A0330  39 00 00 FF */	li r8, 0xff
/* 803A0334  48 00 00 3C */	b lbl_803A0370
lbl_803A0338:
/* 803A0338  B0 D7 00 00 */	sth r6, 0(r23)
/* 803A033C  39 8C 00 01 */	addi r12, r12, 1
/* 803A0340  38 C6 00 20 */	addi r6, r6, 0x20
/* 803A0344  B0 97 00 02 */	sth r4, 2(r23)
/* 803A0348  B1 77 00 04 */	sth r11, 4(r23)
/* 803A034C  B1 57 00 06 */	sth r10, 6(r23)
/* 803A0350  B0 B7 00 08 */	sth r5, 8(r23)
/* 803A0354  38 A5 08 00 */	addi r5, r5, 0x800
/* 803A0358  B0 77 00 0A */	sth r3, 0xa(r23)
/* 803A035C  99 57 00 0C */	stb r10, 0xc(r23)
/* 803A0360  99 57 00 0D */	stb r10, 0xd(r23)
/* 803A0364  99 37 00 0E */	stb r9, 0xe(r23)
/* 803A0368  99 17 00 0F */	stb r8, 0xf(r23)
/* 803A036C  3A F7 00 10 */	addi r23, r23, 0x10
lbl_803A0370:
/* 803A0370  80 FF 00 00 */	lwz r7, 0(r31)
/* 803A0374  38 07 00 01 */	addi r0, r7, 1
/* 803A0378  7C 0C 00 00 */	cmpw r12, r0
/* 803A037C  41 80 FF BC */	blt lbl_803A0338
/* 803A0380  38 63 08 00 */	addi r3, r3, 0x800
/* 803A0384  3A B5 00 01 */	addi r21, r21, 1
/* 803A0388  38 84 00 20 */	addi r4, r4, 0x20
lbl_803A038C:
/* 803A038C  80 BF 00 04 */	lwz r5, 4(r31)
/* 803A0390  38 05 00 01 */	addi r0, r5, 1
/* 803A0394  7C 15 00 00 */	cmpw r21, r0
/* 803A0398  41 80 FF 80 */	blt lbl_803A0318
/* 803A039C  3A D6 00 01 */	addi r22, r22, 1
/* 803A03A0  42 00 FF 4C */	bdnz lbl_803A02EC
/* 803A03A4  39 80 00 00 */	li r12, 0
/* 803A03A8  3C 80 FD 10 */	lis r4, 0xFD10 /* 0xFD10013F@ha */
/* 803A03AC  3C 60 F5 10 */	lis r3, 0xF510 /* 0xF5101200@ha */
/* 803A03B0  83 5F 00 D8 */	lwz r26, 0xd8(r31)
/* 803A03B4  38 C4 01 3F */	addi r6, r4, 0x013F /* 0xFD10013F@l */
/* 803A03B8  7D 9E 63 78 */	mr r30, r12
/* 803A03BC  38 83 12 00 */	addi r4, r3, 0x1200 /* 0xF5101200@l */
/* 803A03C0  3D 00 E7 00 */	lis r8, 0xe700
/* 803A03C4  3C A0 0B 00 */	lis r5, 0xb00
/* 803A03C8  3C 60 07 00 */	lis r3, 0x700
/* 803A03CC  3C 00 E6 00 */	lis r0, 0xe600
/* 803A03D0  48 00 01 2C */	b lbl_803A04FC
lbl_803A03D4:
/* 803A03D4  81 5F 00 00 */	lwz r10, 0(r31)
/* 803A03D8  3B A0 00 00 */	li r29, 0
/* 803A03DC  38 EC 00 20 */	addi r7, r12, 0x20
/* 803A03E0  55 89 15 3A */	rlwinm r9, r12, 2, 0x14, 0x1d
/* 803A03E4  3A AA 00 01 */	addi r21, r10, 1
/* 803A03E8  7F BC EB 78 */	mr r28, r29
/* 803A03EC  56 AA 6B 24 */	rlwinm r10, r21, 0xd, 0xc, 0x12
/* 803A03F0  3B 60 00 00 */	li r27, 0
/* 803A03F4  65 4B 01 00 */	oris r11, r10, 0x100
/* 803A03F8  56 AA 16 3A */	rlwinm r10, r21, 2, 0x18, 0x1d
/* 803A03FC  7D 6A 53 78 */	or r10, r11, r10
/* 803A0400  91 5A 00 00 */	stw r10, 0(r26)
/* 803A0404  54 EA 15 3A */	rlwinm r10, r7, 2, 0x14, 0x1d
/* 803A0408  80 FF 00 00 */	lwz r7, 0(r31)
/* 803A040C  38 E7 00 01 */	addi r7, r7, 1
/* 803A0410  7C FE 39 D6 */	mullw r7, r30, r7
/* 803A0414  54 E7 20 36 */	slwi r7, r7, 4
/* 803A0418  3C E7 0A 00 */	addis r7, r7, 0xa00
/* 803A041C  90 FA 00 04 */	stw r7, 4(r26)
/* 803A0420  3B 5A 00 08 */	addi r26, r26, 8
/* 803A0424  48 00 00 C4 */	b lbl_803A04E8
lbl_803A0428:
/* 803A0428  91 1A 00 00 */	stw r8, 0(r26)
/* 803A042C  38 E0 00 00 */	li r7, 0
/* 803A0430  57 B7 72 22 */	rlwinm r23, r29, 0xe, 8, 0x11
/* 803A0434  3A DD 00 20 */	addi r22, r29, 0x20
/* 803A0438  90 FA 00 04 */	stw r7, 4(r26)
/* 803A043C  66 F5 F4 00 */	oris r21, r23, 0xf400
/* 803A0440  56 D8 72 22 */	rlwinm r24, r22, 0xe, 8, 0x11
/* 803A0444  66 F7 F2 00 */	oris r23, r23, 0xf200
/* 803A0448  90 DA 00 08 */	stw r6, 8(r26)
/* 803A044C  67 16 07 00 */	oris r22, r24, 0x700
/* 803A0450  39 7B 00 01 */	addi r11, r27, 1
/* 803A0454  7E B5 4B 78 */	or r21, r21, r9
/* 803A0458  90 BA 00 0C */	stw r5, 0xc(r26)
/* 803A045C  55 79 4C 2C */	rlwinm r25, r11, 9, 0x10, 0x16
/* 803A0460  7E D6 53 78 */	or r22, r22, r10
/* 803A0464  7E F7 4B 78 */	or r23, r23, r9
/* 803A0468  90 9A 00 10 */	stw r4, 0x10(r26)
/* 803A046C  7F 18 53 78 */	or r24, r24, r10
/* 803A0470  53 79 8A 1C */	rlwimi r25, r27, 0x11, 8, 0xe
/* 803A0474  57 6B 8A 1C */	rlwinm r11, r27, 0x11, 8, 0xe
/* 803A0478  90 7A 00 14 */	stw r3, 0x14(r26)
/* 803A047C  3B BD 00 20 */	addi r29, r29, 0x20
/* 803A0480  3B 9C 00 01 */	addi r28, r28, 1
/* 803A0484  90 1A 00 18 */	stw r0, 0x18(r26)
/* 803A0488  90 FA 00 1C */	stw r7, 0x1c(r26)
/* 803A048C  92 BA 00 20 */	stw r21, 0x20(r26)
/* 803A0490  92 DA 00 24 */	stw r22, 0x24(r26)
/* 803A0494  91 1A 00 28 */	stw r8, 0x28(r26)
/* 803A0498  90 FA 00 2C */	stw r7, 0x2c(r26)
/* 803A049C  90 9A 00 30 */	stw r4, 0x30(r26)
/* 803A04A0  90 FA 00 34 */	stw r7, 0x34(r26)
/* 803A04A4  92 FA 00 38 */	stw r23, 0x38(r26)
/* 803A04A8  93 1A 00 3C */	stw r24, 0x3c(r26)
/* 803A04AC  80 FF 00 00 */	lwz r7, 0(r31)
/* 803A04B0  7C E7 DA 14 */	add r7, r7, r27
/* 803A04B4  38 E7 00 02 */	addi r7, r7, 2
/* 803A04B8  50 F9 0E 3C */	rlwimi r25, r7, 1, 0x18, 0x1e
/* 803A04BC  67 27 07 00 */	oris r7, r25, 0x700
/* 803A04C0  90 FA 00 40 */	stw r7, 0x40(r26)
/* 803A04C4  80 FF 00 00 */	lwz r7, 0(r31)
/* 803A04C8  7C E7 DA 14 */	add r7, r7, r27
/* 803A04CC  3B 7B 00 01 */	addi r27, r27, 1
/* 803A04D0  3B 27 00 02 */	addi r25, r7, 2
/* 803A04D4  38 E7 00 01 */	addi r7, r7, 1
/* 803A04D8  53 2B 4C 2C */	rlwimi r11, r25, 9, 0x10, 0x16
/* 803A04DC  50 EB 0E 3C */	rlwimi r11, r7, 1, 0x18, 0x1e
/* 803A04E0  91 7A 00 44 */	stw r11, 0x44(r26)
/* 803A04E4  3B 5A 00 48 */	addi r26, r26, 0x48
lbl_803A04E8:
/* 803A04E8  80 FF 00 00 */	lwz r7, 0(r31)
/* 803A04EC  7C 1C 38 00 */	cmpw r28, r7
/* 803A04F0  41 80 FF 38 */	blt lbl_803A0428
/* 803A04F4  39 8C 00 20 */	addi r12, r12, 0x20
/* 803A04F8  3B DE 00 01 */	addi r30, r30, 1
lbl_803A04FC:
/* 803A04FC  80 FF 00 04 */	lwz r7, 4(r31)
/* 803A0500  7C 1E 38 00 */	cmpw r30, r7
/* 803A0504  41 80 FE D0 */	blt lbl_803A03D4
/* 803A0508  3C 00 E7 00 */	lis r0, 0xe700
/* 803A050C  38 60 00 00 */	li r3, 0
/* 803A0510  90 1A 00 00 */	stw r0, 0(r26)
/* 803A0514  3C 00 DF 00 */	lis r0, 0xdf00
/* 803A0518  90 7A 00 04 */	stw r3, 4(r26)
/* 803A051C  90 1A 00 08 */	stw r0, 8(r26)
/* 803A0520  90 7A 00 0C */	stw r3, 0xc(r26)
/* 803A0524  39 61 00 40 */	addi r11, r1, 0x40
/* 803A0528  4B CF A9 D9 */	bl func_8009AF00
/* 803A052C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A0530  7C 08 03 A6 */	mtlr r0
/* 803A0534  38 21 00 40 */	addi r1, r1, 0x40
/* 803A0538  4E 80 00 20 */	blr 