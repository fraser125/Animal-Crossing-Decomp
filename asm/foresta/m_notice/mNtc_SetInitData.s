lbl_803CA0F8:
/* 803CA0F8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803CA0FC  7C 08 02 A6 */	mflr r0
/* 803CA100  90 01 00 84 */	stw r0, 0x84(r1)
/* 803CA104  39 61 00 80 */	addi r11, r1, 0x80
/* 803CA108  4B CD 0D C1 */	bl func_8009AEC8
/* 803CA10C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CA110  3C A0 80 64 */	lis r5, data_8064288C@ha /* 0x8064288C@ha */
/* 803CA114  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CA118  3B C1 00 14 */	addi r30, r1, 0x14
/* 803CA11C  38 E5 28 8C */	addi r7, r5, data_8064288C@l /* 0x8064288C@l */
/* 803CA120  3B 40 00 00 */	li r26, 0
/* 803CA124  3C 64 00 02 */	addis r3, r4, 2
/* 803CA128  3F 64 00 01 */	addis r27, r4, 1
/* 803CA12C  80 C7 00 00 */	lwz r6, 0(r7)
/* 803CA130  3B E0 00 00 */	li r31, 0
/* 803CA134  80 A7 00 04 */	lwz r5, 4(r7)
/* 803CA138  3B 7B 91 2C */	addi r27, r27, -28372
/* 803CA13C  80 87 00 08 */	lwz r4, 8(r7)
/* 803CA140  80 07 00 0C */	lwz r0, 0xc(r7)
/* 803CA144  83 83 61 20 */	lwz r28, 0x6120(r3)
/* 803CA148  83 A3 61 24 */	lwz r29, 0x6124(r3)
/* 803CA14C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803CA150  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803CA154  90 81 00 1C */	stw r4, 0x1c(r1)
/* 803CA158  90 01 00 20 */	stw r0, 0x20(r1)
/* 803CA15C  93 81 00 0C */	stw r28, 0xc(r1)
/* 803CA160  93 A1 00 10 */	stw r29, 0x10(r1)
lbl_803CA164:
/* 803CA164  93 9B 00 C0 */	stw r28, 0xc0(r27)
/* 803CA168  7F 66 DB 78 */	mr r6, r27
/* 803CA16C  7C FE F8 2E */	lwzx r7, r30, r31
/* 803CA170  38 61 00 44 */	addi r3, r1, 0x44
/* 803CA174  93 BB 00 C4 */	stw r29, 0xc4(r27)
/* 803CA178  38 81 00 08 */	addi r4, r1, 8
/* 803CA17C  38 A1 00 24 */	addi r5, r1, 0x24
/* 803CA180  4B FE 85 B5 */	bl mHandbill_Load_HandbillFromRom
/* 803CA184  3B 5A 00 01 */	addi r26, r26, 1
/* 803CA188  3B FF 00 04 */	addi r31, r31, 4
/* 803CA18C  2C 1A 00 04 */	cmpwi r26, 4
/* 803CA190  3B 7B 00 C8 */	addi r27, r27, 0xc8
/* 803CA194  41 80 FF D0 */	blt lbl_803CA164
/* 803CA198  7F 63 DB 78 */	mr r3, r27
/* 803CA19C  38 80 00 0B */	li r4, 0xb
/* 803CA1A0  4B FF FE E9 */	bl mNtc_ClearPage
/* 803CA1A4  39 61 00 80 */	addi r11, r1, 0x80
/* 803CA1A8  4B CD 0D 6D */	bl func_8009AF14
/* 803CA1AC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803CA1B0  7C 08 03 A6 */	mtlr r0
/* 803CA1B4  38 21 00 80 */	addi r1, r1, 0x80
/* 803CA1B8  4E 80 00 20 */	blr 
