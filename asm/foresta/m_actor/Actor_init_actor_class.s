lbl_8037564C:
/* 8037564C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80375650  7C 08 02 A6 */	mflr r0
/* 80375654  90 01 00 64 */	stw r0, 0x64(r1)
/* 80375658  39 61 00 60 */	addi r11, r1, 0x60
/* 8037565C  4B D2 57 E1 */	bl func_8009AE3C
/* 80375660  39 61 00 48 */	addi r11, r1, 0x48
/* 80375664  4B D2 58 49 */	bl func_8009AEAC
/* 80375668  7C 97 23 78 */	mr r23, r4
/* 8037566C  FF A0 08 90 */	fmr f29, f1
/* 80375670  FF C0 10 90 */	fmr f30, f2
/* 80375674  8B 81 00 6B */	lbz r28, 0x6b(r1)
/* 80375678  7C B3 2B 78 */	mr r19, r5
/* 8037567C  FF E0 18 90 */	fmr f31, f3
/* 80375680  8B A1 00 6F */	lbz r29, 0x6f(r1)
/* 80375684  AB C1 00 72 */	lha r30, 0x72(r1)
/* 80375688  A3 E1 00 76 */	lhz r31, 0x76(r1)
/* 8037568C  7C 76 1B 78 */	mr r22, r3
/* 80375690  AA A1 00 7A */	lha r21, 0x7a(r1)
/* 80375694  7C D8 33 78 */	mr r24, r6
/* 80375698  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8037569C  7C F4 3B 78 */	mr r20, r7
/* 803756A0  7D 19 43 78 */	mr r25, r8
/* 803756A4  7D 3A 4B 78 */	mr r26, r9
/* 803756A8  7D 5B 53 78 */	mr r27, r10
/* 803756AC  38 A0 00 00 */	li r5, 0
/* 803756B0  48 04 53 99 */	bl mem_clear
/* 803756B4  92 76 01 70 */	stw r19, 0x170(r22)
/* 803756B8  39 61 00 60 */	addi r11, r1, 0x60
/* 803756BC  A8 17 00 00 */	lha r0, 0(r23)
/* 803756C0  B0 16 00 00 */	sth r0, 0(r22)
/* 803756C4  80 17 00 04 */	lwz r0, 4(r23)
/* 803756C8  90 16 00 20 */	stw r0, 0x20(r22)
/* 803756CC  B2 96 00 26 */	sth r20, 0x26(r22)
/* 803756D0  80 17 00 10 */	lwz r0, 0x10(r23)
/* 803756D4  90 16 01 5C */	stw r0, 0x15c(r22)
/* 803756D8  80 17 00 14 */	lwz r0, 0x14(r23)
/* 803756DC  90 16 01 60 */	stw r0, 0x160(r22)
/* 803756E0  80 17 00 18 */	lwz r0, 0x18(r23)
/* 803756E4  90 16 01 64 */	stw r0, 0x164(r22)
/* 803756E8  80 17 00 1C */	lwz r0, 0x1c(r23)
/* 803756EC  90 16 01 68 */	stw r0, 0x168(r22)
/* 803756F0  80 17 00 20 */	lwz r0, 0x20(r23)
/* 803756F4  90 16 01 6C */	stw r0, 0x16c(r22)
/* 803756F8  B2 B6 00 24 */	sth r21, 0x24(r22)
/* 803756FC  A8 18 00 E0 */	lha r0, 0xe0(r24)
/* 80375700  B0 16 00 04 */	sth r0, 4(r22)
/* 80375704  D3 B6 00 0C */	stfs f29, 0xc(r22)
/* 80375708  D3 D6 00 10 */	stfs f30, 0x10(r22)
/* 8037570C  D3 F6 00 14 */	stfs f31, 0x14(r22)
/* 80375710  B3 36 00 18 */	sth r25, 0x18(r22)
/* 80375714  B3 56 00 1A */	sth r26, 0x1a(r22)
/* 80375718  B3 76 00 1C */	sth r27, 0x1c(r22)
/* 8037571C  9B 96 00 08 */	stb r28, 8(r22)
/* 80375720  9B B6 00 09 */	stb r29, 9(r22)
/* 80375724  B3 D6 00 0A */	sth r30, 0xa(r22)
/* 80375728  B3 F6 00 06 */	sth r31, 6(r22)
/* 8037572C  4B D2 57 5D */	bl func_8009AE88
/* 80375730  39 61 00 48 */	addi r11, r1, 0x48
/* 80375734  4B D2 57 C5 */	bl func_8009AEF8
/* 80375738  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8037573C  7C 08 03 A6 */	mtlr r0
/* 80375740  38 21 00 60 */	addi r1, r1, 0x60
/* 80375744  4E 80 00 20 */	blr 
