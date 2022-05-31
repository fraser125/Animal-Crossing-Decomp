lbl_804DB860:
/* 804DB860  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804DB864  7C 08 02 A6 */	mflr r0
/* 804DB868  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804DB86C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 804DB870  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 804DB874  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804DB878  4B BB F6 45 */	bl func_8009AEBC
/* 804DB87C  7C 7B 1B 78 */	mr r27, r3
/* 804DB880  7C 9C 23 78 */	mr r28, r4
/* 804DB884  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804DB888  38 61 00 3C */	addi r3, r1, 0x3c
/* 804DB88C  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 804DB890  38 81 00 20 */	addi r4, r1, 0x20
/* 804DB894  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804DB898  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DB89C  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 804DB8A0  90 01 00 28 */	stw r0, 0x28(r1)
/* 804DB8A4  4B EC 9C 99 */	bl mFI_Wpos2UtCenterWpos
/* 804DB8A8  2C 03 00 00 */	cmpwi r3, 0
/* 804DB8AC  41 82 05 98 */	beq lbl_804DBE44
/* 804DB8B0  3C 80 80 64 */	lis r4, add_X@ha /* 0x80647A48@ha */
/* 804DB8B4  3C 60 80 64 */	lis r3, add_Z@ha /* 0x80647A68@ha */
/* 804DB8B8  38 00 00 08 */	li r0, 8
/* 804DB8BC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 804DB8C0  38 C4 7A 48 */	addi r6, r4, add_X@l /* 0x80647A48@l */
/* 804DB8C4  38 A3 7A 68 */	addi r5, r3, add_Z@l /* 0x80647A68@l */
/* 804DB8C8  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 804DB8CC  3B A0 FF FF */	li r29, -1
/* 804DB8D0  38 60 00 00 */	li r3, 0
/* 804DB8D4  38 80 00 00 */	li r4, 0
/* 804DB8D8  7C 09 03 A6 */	mtctr r0
lbl_804DB8DC:
/* 804DB8DC  7C 26 24 2E */	lfsx f1, r6, r4
/* 804DB8E0  38 E1 00 48 */	addi r7, r1, 0x48
/* 804DB8E4  7C 05 24 2E */	lfsx f0, r5, r4
/* 804DB8E8  7C E7 1A 14 */	add r7, r7, r3
/* 804DB8EC  EC 22 08 2A */	fadds f1, f2, f1
/* 804DB8F0  38 63 00 0C */	addi r3, r3, 0xc
/* 804DB8F4  EC 03 00 2A */	fadds f0, f3, f0
/* 804DB8F8  38 84 00 04 */	addi r4, r4, 4
/* 804DB8FC  D0 27 00 00 */	stfs f1, 0(r7)
/* 804DB900  D0 07 00 08 */	stfs f0, 8(r7)
/* 804DB904  42 00 FF D8 */	bdnz lbl_804DB8DC
/* 804DB908  3B E1 00 48 */	addi r31, r1, 0x48
/* 804DB90C  3B C0 00 00 */	li r30, 0
/* 804DB910  3B 20 00 00 */	li r25, 0
/* 804DB914  3B 40 00 00 */	li r26, 0
lbl_804DB918:
/* 804DB918  7C DF D2 14 */	add r6, r31, r26
/* 804DB91C  38 61 00 14 */	addi r3, r1, 0x14
/* 804DB920  80 A6 00 00 */	lwz r5, 0(r6)
/* 804DB924  80 86 00 04 */	lwz r4, 4(r6)
/* 804DB928  80 06 00 08 */	lwz r0, 8(r6)
/* 804DB92C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804DB930  90 81 00 18 */	stw r4, 0x18(r1)
/* 804DB934  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DB938  4B EC BA F9 */	bl mFI_GetUnitFG
/* 804DB93C  28 03 00 00 */	cmplwi r3, 0
/* 804DB940  41 82 03 14 */	beq lbl_804DBC54
/* 804DB944  A0 83 00 00 */	lhz r4, 0(r3)
/* 804DB948  38 00 00 00 */	li r0, 0
/* 804DB94C  28 04 08 01 */	cmplwi r4, 0x801
/* 804DB950  41 82 02 DC */	beq lbl_804DBC2C
/* 804DB954  28 04 08 06 */	cmplwi r4, 0x806
/* 804DB958  41 82 02 D4 */	beq lbl_804DBC2C
/* 804DB95C  28 04 08 0E */	cmplwi r4, 0x80e
/* 804DB960  41 82 02 CC */	beq lbl_804DBC2C
/* 804DB964  28 04 08 16 */	cmplwi r4, 0x816
/* 804DB968  41 82 02 C4 */	beq lbl_804DBC2C
/* 804DB96C  28 04 08 1E */	cmplwi r4, 0x81e
/* 804DB970  41 82 02 BC */	beq lbl_804DBC2C
/* 804DB974  28 04 08 26 */	cmplwi r4, 0x826
/* 804DB978  41 82 02 B4 */	beq lbl_804DBC2C
/* 804DB97C  28 04 08 2E */	cmplwi r4, 0x82e
/* 804DB980  41 82 02 AC */	beq lbl_804DBC2C
/* 804DB984  28 04 08 33 */	cmplwi r4, 0x833
/* 804DB988  41 82 02 A4 */	beq lbl_804DBC2C
/* 804DB98C  28 04 08 38 */	cmplwi r4, 0x838
/* 804DB990  41 82 02 9C */	beq lbl_804DBC2C
/* 804DB994  28 04 08 2E */	cmplwi r4, 0x82e
/* 804DB998  41 82 02 94 */	beq lbl_804DBC2C
/* 804DB99C  28 04 08 33 */	cmplwi r4, 0x833
/* 804DB9A0  41 82 02 8C */	beq lbl_804DBC2C
/* 804DB9A4  28 04 08 38 */	cmplwi r4, 0x838
/* 804DB9A8  41 82 02 84 */	beq lbl_804DBC2C
/* 804DB9AC  28 04 08 50 */	cmplwi r4, 0x850
/* 804DB9B0  41 82 02 7C */	beq lbl_804DBC2C
/* 804DB9B4  28 04 08 55 */	cmplwi r4, 0x855
/* 804DB9B8  41 82 02 74 */	beq lbl_804DBC2C
/* 804DB9BC  28 04 08 5E */	cmplwi r4, 0x85e
/* 804DB9C0  41 82 02 6C */	beq lbl_804DBC2C
/* 804DB9C4  28 04 08 64 */	cmplwi r4, 0x864
/* 804DB9C8  41 82 02 64 */	beq lbl_804DBC2C
/* 804DB9CC  28 04 08 02 */	cmplwi r4, 0x802
/* 804DB9D0  41 82 02 5C */	beq lbl_804DBC2C
/* 804DB9D4  28 04 08 07 */	cmplwi r4, 0x807
/* 804DB9D8  41 82 02 54 */	beq lbl_804DBC2C
/* 804DB9DC  28 04 08 0F */	cmplwi r4, 0x80f
/* 804DB9E0  41 82 02 4C */	beq lbl_804DBC2C
/* 804DB9E4  28 04 08 17 */	cmplwi r4, 0x817
/* 804DB9E8  41 82 02 44 */	beq lbl_804DBC2C
/* 804DB9EC  28 04 08 1F */	cmplwi r4, 0x81f
/* 804DB9F0  41 82 02 3C */	beq lbl_804DBC2C
/* 804DB9F4  28 04 08 27 */	cmplwi r4, 0x827
/* 804DB9F8  41 82 02 34 */	beq lbl_804DBC2C
/* 804DB9FC  28 04 08 2F */	cmplwi r4, 0x82f
/* 804DBA00  41 82 02 2C */	beq lbl_804DBC2C
/* 804DBA04  28 04 08 34 */	cmplwi r4, 0x834
/* 804DBA08  41 82 02 24 */	beq lbl_804DBC2C
/* 804DBA0C  28 04 08 39 */	cmplwi r4, 0x839
/* 804DBA10  41 82 02 1C */	beq lbl_804DBC2C
/* 804DBA14  28 04 08 2F */	cmplwi r4, 0x82f
/* 804DBA18  41 82 02 14 */	beq lbl_804DBC2C
/* 804DBA1C  28 04 08 34 */	cmplwi r4, 0x834
/* 804DBA20  41 82 02 0C */	beq lbl_804DBC2C
/* 804DBA24  28 04 08 39 */	cmplwi r4, 0x839
/* 804DBA28  41 82 02 04 */	beq lbl_804DBC2C
/* 804DBA2C  28 04 08 51 */	cmplwi r4, 0x851
/* 804DBA30  41 82 01 FC */	beq lbl_804DBC2C
/* 804DBA34  28 04 08 56 */	cmplwi r4, 0x856
/* 804DBA38  41 82 01 F4 */	beq lbl_804DBC2C
/* 804DBA3C  28 04 08 5F */	cmplwi r4, 0x85f
/* 804DBA40  41 82 01 EC */	beq lbl_804DBC2C
/* 804DBA44  28 04 08 65 */	cmplwi r4, 0x865
/* 804DBA48  41 82 01 E4 */	beq lbl_804DBC2C
/* 804DBA4C  28 04 08 03 */	cmplwi r4, 0x803
/* 804DBA50  41 82 01 DC */	beq lbl_804DBC2C
/* 804DBA54  28 04 08 08 */	cmplwi r4, 0x808
/* 804DBA58  41 82 01 D4 */	beq lbl_804DBC2C
/* 804DBA5C  28 04 08 10 */	cmplwi r4, 0x810
/* 804DBA60  41 82 01 CC */	beq lbl_804DBC2C
/* 804DBA64  28 04 08 18 */	cmplwi r4, 0x818
/* 804DBA68  41 82 01 C4 */	beq lbl_804DBC2C
/* 804DBA6C  28 04 08 20 */	cmplwi r4, 0x820
/* 804DBA70  41 82 01 BC */	beq lbl_804DBC2C
/* 804DBA74  28 04 08 28 */	cmplwi r4, 0x828
/* 804DBA78  41 82 01 B4 */	beq lbl_804DBC2C
/* 804DBA7C  28 04 08 30 */	cmplwi r4, 0x830
/* 804DBA80  41 82 01 AC */	beq lbl_804DBC2C
/* 804DBA84  28 04 08 35 */	cmplwi r4, 0x835
/* 804DBA88  41 82 01 A4 */	beq lbl_804DBC2C
/* 804DBA8C  28 04 08 3A */	cmplwi r4, 0x83a
/* 804DBA90  41 82 01 9C */	beq lbl_804DBC2C
/* 804DBA94  28 04 08 30 */	cmplwi r4, 0x830
/* 804DBA98  41 82 01 94 */	beq lbl_804DBC2C
/* 804DBA9C  28 04 08 35 */	cmplwi r4, 0x835
/* 804DBAA0  41 82 01 8C */	beq lbl_804DBC2C
/* 804DBAA4  28 04 08 3A */	cmplwi r4, 0x83a
/* 804DBAA8  41 82 01 84 */	beq lbl_804DBC2C
/* 804DBAAC  28 04 08 52 */	cmplwi r4, 0x852
/* 804DBAB0  41 82 01 7C */	beq lbl_804DBC2C
/* 804DBAB4  28 04 08 57 */	cmplwi r4, 0x857
/* 804DBAB8  41 82 01 74 */	beq lbl_804DBC2C
/* 804DBABC  28 04 08 60 */	cmplwi r4, 0x860
/* 804DBAC0  41 82 01 6C */	beq lbl_804DBC2C
/* 804DBAC4  28 04 08 66 */	cmplwi r4, 0x866
/* 804DBAC8  41 82 01 64 */	beq lbl_804DBC2C
/* 804DBACC  28 04 08 04 */	cmplwi r4, 0x804
/* 804DBAD0  41 82 01 5C */	beq lbl_804DBC2C
/* 804DBAD4  28 04 08 0C */	cmplwi r4, 0x80c
/* 804DBAD8  41 82 01 54 */	beq lbl_804DBC2C
/* 804DBADC  28 04 08 14 */	cmplwi r4, 0x814
/* 804DBAE0  41 82 01 4C */	beq lbl_804DBC2C
/* 804DBAE4  28 04 08 1C */	cmplwi r4, 0x81c
/* 804DBAE8  41 82 01 44 */	beq lbl_804DBC2C
/* 804DBAEC  28 04 08 24 */	cmplwi r4, 0x824
/* 804DBAF0  41 82 01 3C */	beq lbl_804DBC2C
/* 804DBAF4  28 04 08 2C */	cmplwi r4, 0x82c
/* 804DBAF8  41 82 01 34 */	beq lbl_804DBC2C
/* 804DBAFC  28 04 08 31 */	cmplwi r4, 0x831
/* 804DBB00  41 82 01 2C */	beq lbl_804DBC2C
/* 804DBB04  28 04 08 36 */	cmplwi r4, 0x836
/* 804DBB08  41 82 01 24 */	beq lbl_804DBC2C
/* 804DBB0C  28 04 08 3B */	cmplwi r4, 0x83b
/* 804DBB10  41 82 01 1C */	beq lbl_804DBC2C
/* 804DBB14  28 04 08 53 */	cmplwi r4, 0x853
/* 804DBB18  41 82 01 14 */	beq lbl_804DBC2C
/* 804DBB1C  28 04 08 5B */	cmplwi r4, 0x85b
/* 804DBB20  41 82 01 0C */	beq lbl_804DBC2C
/* 804DBB24  28 04 08 61 */	cmplwi r4, 0x861
/* 804DBB28  41 82 01 04 */	beq lbl_804DBC2C
/* 804DBB2C  28 04 08 68 */	cmplwi r4, 0x868
/* 804DBB30  41 82 00 FC */	beq lbl_804DBC2C
/* 804DBB34  28 04 08 67 */	cmplwi r4, 0x867
/* 804DBB38  41 82 00 F4 */	beq lbl_804DBC2C
/* 804DBB3C  28 04 08 09 */	cmplwi r4, 0x809
/* 804DBB40  41 82 00 EC */	beq lbl_804DBC2C
/* 804DBB44  28 04 08 11 */	cmplwi r4, 0x811
/* 804DBB48  41 82 00 E4 */	beq lbl_804DBC2C
/* 804DBB4C  28 04 08 19 */	cmplwi r4, 0x819
/* 804DBB50  41 82 00 DC */	beq lbl_804DBC2C
/* 804DBB54  28 04 08 21 */	cmplwi r4, 0x821
/* 804DBB58  41 82 00 D4 */	beq lbl_804DBC2C
/* 804DBB5C  28 04 08 29 */	cmplwi r4, 0x829
/* 804DBB60  41 82 00 CC */	beq lbl_804DBC2C
/* 804DBB64  28 04 08 58 */	cmplwi r4, 0x858
/* 804DBB68  41 82 00 C4 */	beq lbl_804DBC2C
/* 804DBB6C  28 04 08 0A */	cmplwi r4, 0x80a
/* 804DBB70  41 82 00 BC */	beq lbl_804DBC2C
/* 804DBB74  28 04 08 12 */	cmplwi r4, 0x812
/* 804DBB78  41 82 00 B4 */	beq lbl_804DBC2C
/* 804DBB7C  28 04 08 1A */	cmplwi r4, 0x81a
/* 804DBB80  41 82 00 AC */	beq lbl_804DBC2C
/* 804DBB84  28 04 08 22 */	cmplwi r4, 0x822
/* 804DBB88  41 82 00 A4 */	beq lbl_804DBC2C
/* 804DBB8C  28 04 08 2A */	cmplwi r4, 0x82a
/* 804DBB90  41 82 00 9C */	beq lbl_804DBC2C
/* 804DBB94  28 04 08 59 */	cmplwi r4, 0x859
/* 804DBB98  41 82 00 94 */	beq lbl_804DBC2C
/* 804DBB9C  28 04 08 0B */	cmplwi r4, 0x80b
/* 804DBBA0  41 82 00 8C */	beq lbl_804DBC2C
/* 804DBBA4  28 04 08 13 */	cmplwi r4, 0x813
/* 804DBBA8  41 82 00 84 */	beq lbl_804DBC2C
/* 804DBBAC  28 04 08 1B */	cmplwi r4, 0x81b
/* 804DBBB0  41 82 00 7C */	beq lbl_804DBC2C
/* 804DBBB4  28 04 08 23 */	cmplwi r4, 0x823
/* 804DBBB8  41 82 00 74 */	beq lbl_804DBC2C
/* 804DBBBC  28 04 08 2B */	cmplwi r4, 0x82b
/* 804DBBC0  41 82 00 6C */	beq lbl_804DBC2C
/* 804DBBC4  28 04 08 5A */	cmplwi r4, 0x85a
/* 804DBBC8  41 82 00 64 */	beq lbl_804DBC2C
/* 804DBBCC  28 04 00 5E */	cmplwi r4, 0x5e
/* 804DBBD0  41 82 00 5C */	beq lbl_804DBC2C
/* 804DBBD4  28 04 00 5F */	cmplwi r4, 0x5f
/* 804DBBD8  41 82 00 54 */	beq lbl_804DBC2C
/* 804DBBDC  28 04 00 60 */	cmplwi r4, 0x60
/* 804DBBE0  41 82 00 4C */	beq lbl_804DBC2C
/* 804DBBE4  28 04 00 61 */	cmplwi r4, 0x61
/* 804DBBE8  41 82 00 44 */	beq lbl_804DBC2C
/* 804DBBEC  28 04 00 69 */	cmplwi r4, 0x69
/* 804DBBF0  41 82 00 3C */	beq lbl_804DBC2C
/* 804DBBF4  28 04 00 78 */	cmplwi r4, 0x78
/* 804DBBF8  41 82 00 34 */	beq lbl_804DBC2C
/* 804DBBFC  28 04 00 79 */	cmplwi r4, 0x79
/* 804DBC00  41 82 00 2C */	beq lbl_804DBC2C
/* 804DBC04  28 04 00 7A */	cmplwi r4, 0x7a
/* 804DBC08  41 82 00 24 */	beq lbl_804DBC2C
/* 804DBC0C  28 04 00 82 */	cmplwi r4, 0x82
/* 804DBC10  41 82 00 1C */	beq lbl_804DBC2C
/* 804DBC14  28 04 00 7F */	cmplwi r4, 0x7f
/* 804DBC18  41 82 00 14 */	beq lbl_804DBC2C
/* 804DBC1C  28 04 00 80 */	cmplwi r4, 0x80
/* 804DBC20  41 82 00 0C */	beq lbl_804DBC2C
/* 804DBC24  28 04 00 81 */	cmplwi r4, 0x81
/* 804DBC28  40 82 00 08 */	bne lbl_804DBC30
lbl_804DBC2C:
/* 804DBC2C  38 00 00 01 */	li r0, 1
lbl_804DBC30:
/* 804DBC30  2C 00 00 00 */	cmpwi r0, 0
/* 804DBC34  40 82 00 14 */	bne lbl_804DBC48
/* 804DBC38  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DBC3C  38 00 00 00 */	li r0, 0
/* 804DBC40  7C 03 CB 2E */	sthx r0, r3, r25
/* 804DBC44  48 00 00 1C */	b lbl_804DBC60
lbl_804DBC48:
/* 804DBC48  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DBC4C  7C 83 CB 2E */	sthx r4, r3, r25
/* 804DBC50  48 00 00 10 */	b lbl_804DBC60
lbl_804DBC54:
/* 804DBC54  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DBC58  38 00 00 00 */	li r0, 0
/* 804DBC5C  7C 03 CB 2E */	sthx r0, r3, r25
lbl_804DBC60:
/* 804DBC60  3B DE 00 01 */	addi r30, r30, 1
/* 804DBC64  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804DBC68  2C 1E 00 08 */	cmpwi r30, 8
/* 804DBC6C  3B 39 00 02 */	addi r25, r25, 2
/* 804DBC70  41 80 FC A8 */	blt lbl_804DB918
/* 804DBC74  3B E1 00 2C */	addi r31, r1, 0x2c
/* 804DBC78  3B C0 00 00 */	li r30, 0
/* 804DBC7C  3B 40 00 00 */	li r26, 0
/* 804DBC80  3B 20 00 00 */	li r25, 0
lbl_804DBC84:
/* 804DBC84  7C 1F CA 2E */	lhzx r0, r31, r25
/* 804DBC88  28 00 00 00 */	cmplwi r0, 0
/* 804DBC8C  41 82 00 78 */	beq lbl_804DBD04
/* 804DBC90  3B 01 00 48 */	addi r24, r1, 0x48
/* 804DBC94  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804DBC98  7F 18 D2 14 */	add r24, r24, r26
/* 804DBC9C  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804DBCA0  80 D8 00 00 */	lwz r6, 0(r24)
/* 804DBCA4  38 61 00 08 */	addi r3, r1, 8
/* 804DBCA8  80 B8 00 04 */	lwz r5, 4(r24)
/* 804DBCAC  80 18 00 08 */	lwz r0, 8(r24)
/* 804DBCB0  90 C1 00 08 */	stw r6, 8(r1)
/* 804DBCB4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804DBCB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DBCBC  4B EB 3C DD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804DBCC0  D0 38 00 04 */	stfs f1, 4(r24)
/* 804DBCC4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DBCC8  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 804DBCCC  C0 58 00 04 */	lfs f2, 4(r24)
/* 804DBCD0  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DBCD4  EC 22 08 28 */	fsubs f1, f2, f1
/* 804DBCD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DBCDC  4C 41 13 82 */	cror 2, 1, 2
/* 804DBCE0  40 82 00 08 */	bne lbl_804DBCE8
/* 804DBCE4  48 00 00 08 */	b lbl_804DBCEC
lbl_804DBCE8:
/* 804DBCE8  FC 20 08 50 */	fneg f1, f1
lbl_804DBCEC:
/* 804DBCEC  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804DBCF0  C0 03 6A 30 */	lfs f0, lit_1375@l(r3)  /* 0x80646A30@l */
/* 804DBCF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DBCF8  40 81 00 0C */	ble lbl_804DBD04
/* 804DBCFC  38 00 00 00 */	li r0, 0
/* 804DBD00  7C 1F CB 2E */	sthx r0, r31, r25
lbl_804DBD04:
/* 804DBD04  3B DE 00 01 */	addi r30, r30, 1
/* 804DBD08  3B 39 00 02 */	addi r25, r25, 2
/* 804DBD0C  2C 1E 00 08 */	cmpwi r30, 8
/* 804DBD10  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804DBD14  41 80 FF 70 */	blt lbl_804DBC84
/* 804DBD18  3C 60 80 64 */	lis r3, lit_4004@ha /* 0x80647A88@ha */
/* 804DBD1C  3B 40 00 00 */	li r26, 0
/* 804DBD20  C3 E3 7A 88 */	lfs f31, lit_4004@l(r3)  /* 0x80647A88@l */
/* 804DBD24  3B 01 00 2C */	addi r24, r1, 0x2c
/* 804DBD28  7F 59 D3 78 */	mr r25, r26
/* 804DBD2C  3B C0 00 00 */	li r30, 0
/* 804DBD30  3B E0 00 00 */	li r31, 0
lbl_804DBD34:
/* 804DBD34  7C 18 FA 2E */	lhzx r0, r24, r31
/* 804DBD38  28 00 00 00 */	cmplwi r0, 0
/* 804DBD3C  41 82 00 30 */	beq lbl_804DBD6C
/* 804DBD40  38 61 00 48 */	addi r3, r1, 0x48
/* 804DBD44  C0 7B 00 28 */	lfs f3, 0x28(r27)
/* 804DBD48  7C 63 F2 14 */	add r3, r3, r30
/* 804DBD4C  C0 9B 00 30 */	lfs f4, 0x30(r27)
/* 804DBD50  C0 23 00 00 */	lfs f1, 0(r3)
/* 804DBD54  C0 43 00 08 */	lfs f2, 8(r3)
/* 804DBD58  4B F2 CF E5 */	bl Math3DLengthSquare2D
/* 804DBD5C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804DBD60  4C 41 13 82 */	cror 2, 1, 2
/* 804DBD64  40 82 00 08 */	bne lbl_804DBD6C
/* 804DBD68  7F 38 FB 2E */	sthx r25, r24, r31
lbl_804DBD6C:
/* 804DBD6C  3B 5A 00 01 */	addi r26, r26, 1
/* 804DBD70  3B FF 00 02 */	addi r31, r31, 2
/* 804DBD74  2C 1A 00 08 */	cmpwi r26, 8
/* 804DBD78  3B DE 00 0C */	addi r30, r30, 0xc
/* 804DBD7C  41 80 FF B8 */	blt lbl_804DBD34
/* 804DBD80  AA FB 00 DE */	lha r23, 0xde(r27)
/* 804DBD84  3B 21 00 2C */	addi r25, r1, 0x2c
/* 804DBD88  3B 40 20 00 */	li r26, 0x2000
/* 804DBD8C  3B 00 00 00 */	li r24, 0
/* 804DBD90  3B C0 00 00 */	li r30, 0
/* 804DBD94  3B E0 00 00 */	li r31, 0
lbl_804DBD98:
/* 804DBD98  7C 19 FA 2E */	lhzx r0, r25, r31
/* 804DBD9C  28 00 00 00 */	cmplwi r0, 0
/* 804DBDA0  41 82 00 4C */	beq lbl_804DBDEC
/* 804DBDA4  38 61 00 48 */	addi r3, r1, 0x48
/* 804DBDA8  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 804DBDAC  7C 63 F2 14 */	add r3, r3, r30
/* 804DBDB0  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 804DBDB4  C0 63 00 08 */	lfs f3, 8(r3)
/* 804DBDB8  C0 43 00 00 */	lfs f2, 0(r3)
/* 804DBDBC  EC 23 08 28 */	fsubs f1, f3, f1
/* 804DBDC0  EC 42 00 28 */	fsubs f2, f2, f0
/* 804DBDC4  4B F3 02 3D */	bl atans_table
/* 804DBDC8  7C 17 18 50 */	subf r0, r23, r3
/* 804DBDCC  7C 00 07 34 */	extsh r0, r0
/* 804DBDD0  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 804DBDD4  7C 60 02 78 */	xor r0, r3, r0
/* 804DBDD8  7C 03 00 50 */	subf r0, r3, r0
/* 804DBDDC  7C 00 D0 00 */	cmpw r0, r26
/* 804DBDE0  40 80 00 0C */	bge lbl_804DBDEC
/* 804DBDE4  7F 1D C3 78 */	mr r29, r24
/* 804DBDE8  7C 1A 03 78 */	mr r26, r0
lbl_804DBDEC:
/* 804DBDEC  3B 18 00 01 */	addi r24, r24, 1
/* 804DBDF0  3B FF 00 02 */	addi r31, r31, 2
/* 804DBDF4  2C 18 00 08 */	cmpwi r24, 8
/* 804DBDF8  3B DE 00 0C */	addi r30, r30, 0xc
/* 804DBDFC  41 80 FF 9C */	blt lbl_804DBD98
/* 804DBE00  2C 1D 00 00 */	cmpwi r29, 0
/* 804DBE04  41 80 00 40 */	blt lbl_804DBE44
/* 804DBE08  2C 1D 00 08 */	cmpwi r29, 8
/* 804DBE0C  40 80 00 38 */	bge lbl_804DBE44
/* 804DBE10  1C BD 00 0C */	mulli r5, r29, 0xc
/* 804DBE14  38 81 00 48 */	addi r4, r1, 0x48
/* 804DBE18  57 A0 08 3C */	slwi r0, r29, 1
/* 804DBE1C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DBE20  7C A4 2A 14 */	add r5, r4, r5
/* 804DBE24  7C 63 02 2E */	lhzx r3, r3, r0
/* 804DBE28  80 05 00 00 */	lwz r0, 0(r5)
/* 804DBE2C  80 85 00 04 */	lwz r4, 4(r5)
/* 804DBE30  90 1C 00 00 */	stw r0, 0(r28)
/* 804DBE34  80 05 00 08 */	lwz r0, 8(r5)
/* 804DBE38  90 9C 00 04 */	stw r4, 4(r28)
/* 804DBE3C  90 1C 00 08 */	stw r0, 8(r28)
/* 804DBE40  48 00 00 20 */	b lbl_804DBE60
lbl_804DBE44:
/* 804DBE44  80 9B 00 28 */	lwz r4, 0x28(r27)
/* 804DBE48  38 60 00 00 */	li r3, 0
/* 804DBE4C  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 804DBE50  90 9C 00 00 */	stw r4, 0(r28)
/* 804DBE54  90 1C 00 04 */	stw r0, 4(r28)
/* 804DBE58  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 804DBE5C  90 1C 00 08 */	stw r0, 8(r28)
lbl_804DBE60:
/* 804DBE60  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 804DBE64  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804DBE68  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 804DBE6C  4B BB F0 9D */	bl func_8009AF08
/* 804DBE70  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804DBE74  7C 08 03 A6 */	mtlr r0
/* 804DBE78  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804DBE7C  4E 80 00 20 */	blr 
