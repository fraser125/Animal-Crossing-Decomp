lbl_80376358:
/* 80376358  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8037635C  7C 08 02 A6 */	mflr r0
/* 80376360  90 01 00 54 */	stw r0, 0x54(r1)
/* 80376364  39 61 00 50 */	addi r11, r1, 0x50
/* 80376368  4B D2 4B 55 */	bl func_8009AEBC
/* 8037636C  3C C0 80 64 */	lis r6, lit_427@ha /* 0x80641264@ha */
/* 80376370  3C A0 80 65 */	lis r5, data_8064F3E8@ha /* 0x8064F3E8@ha */
/* 80376374  3C 80 80 64 */	lis r4, data_8064123C@ha /* 0x8064123C@ha */
/* 80376378  7C 7A 1B 78 */	mr r26, r3
/* 8037637C  3B E6 12 64 */	addi r31, r6, lit_427@l /* 0x80641264@l */
/* 80376380  3A E5 F3 E8 */	addi r23, r5, data_8064F3E8@l /* 0x8064F3E8@l */
/* 80376384  3B 04 12 3C */	addi r24, r4, data_8064123C@l /* 0x8064123C@l */
/* 80376388  3B C0 00 00 */	li r30, 0
/* 8037638C  3B A0 00 00 */	li r29, 0
/* 80376390  3B 80 00 00 */	li r28, 0
/* 80376394  3B 60 00 00 */	li r27, 0
/* 80376398  3B 20 00 00 */	li r25, 0
lbl_8037639C:
/* 8037639C  80 DA 00 00 */	lwz r6, 0(r26)
/* 803763A0  7C F7 CA 14 */	add r7, r23, r25
/* 803763A4  80 BA 00 04 */	lwz r5, 4(r26)
/* 803763A8  38 61 00 08 */	addi r3, r1, 8
/* 803763AC  80 1A 00 08 */	lwz r0, 8(r26)
/* 803763B0  38 81 00 10 */	addi r4, r1, 0x10
/* 803763B4  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803763B8  C0 07 00 00 */	lfs f0, 0(r7)
/* 803763BC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 803763C0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 803763C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803763C8  EC 81 00 2A */	fadds f4, f1, f0
/* 803763CC  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 803763D0  C0 47 00 04 */	lfs f2, 4(r7)
/* 803763D4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 803763D8  C0 07 00 08 */	lfs f0, 8(r7)
/* 803763DC  EC 43 10 2A */	fadds f2, f3, f2
/* 803763E0  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 803763E4  EC 01 00 2A */	fadds f0, f1, f0
/* 803763E8  81 1F 00 00 */	lwz r8, 0(r31)
/* 803763EC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 803763F0  A0 FF 00 04 */	lhz r7, 4(r31)
/* 803763F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 803763F8  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 803763FC  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80376400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80376404  91 01 00 08 */	stw r8, 8(r1)
/* 80376408  C0 38 00 00 */	lfs f1, 0(r24)
/* 8037640C  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 80376410  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80376414  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80376418  90 01 00 18 */	stw r0, 0x18(r1)
/* 8037641C  48 01 92 9D */	bl func_8038F6B8
/* 80376420  3B 7B 00 01 */	addi r27, r27, 1
/* 80376424  A8 81 00 08 */	lha r4, 8(r1)
/* 80376428  A8 61 00 0A */	lha r3, 0xa(r1)
/* 8037642C  2C 1B 00 04 */	cmpwi r27, 4
/* 80376430  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80376434  7F DE 22 14 */	add r30, r30, r4
/* 80376438  7F BD 1A 14 */	add r29, r29, r3
/* 8037643C  3B 39 00 0C */	addi r25, r25, 0xc
/* 80376440  7F 9C 02 14 */	add r28, r28, r0
/* 80376444  41 80 FF 58 */	blt lbl_8037639C
/* 80376448  7F C0 16 70 */	srawi r0, r30, 2
/* 8037644C  39 61 00 50 */	addi r11, r1, 0x50
/* 80376450  B0 1A 00 20 */	sth r0, 0x20(r26)
/* 80376454  7F A3 16 70 */	srawi r3, r29, 2
/* 80376458  7F 80 16 70 */	srawi r0, r28, 2
/* 8037645C  B0 7A 00 22 */	sth r3, 0x22(r26)
/* 80376460  B0 1A 00 24 */	sth r0, 0x24(r26)
/* 80376464  4B D2 4A A5 */	bl func_8009AF08
/* 80376468  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037646C  7C 08 03 A6 */	mtlr r0
/* 80376470  38 21 00 50 */	addi r1, r1, 0x50
/* 80376474  4E 80 00 20 */	blr 