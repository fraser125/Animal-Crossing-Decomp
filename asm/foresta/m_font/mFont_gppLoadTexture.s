lbl_803AFAA8:
/* 803AFAA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AFAAC  7C 08 02 A6 */	mflr r0
/* 803AFAB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AFAB4  39 61 00 30 */	addi r11, r1, 0x30
/* 803AFAB8  4B CE B4 0D */	bl func_8009AEC4
/* 803AFABC  7C 79 1B 78 */	mr r25, r3
/* 803AFAC0  7C 9A 23 78 */	mr r26, r4
/* 803AFAC4  83 E3 00 00 */	lwz r31, 0(r3)
/* 803AFAC8  7C BB 2B 78 */	mr r27, r5
/* 803AFACC  7C DC 33 78 */	mr r28, r6
/* 803AFAD0  7C FD 3B 78 */	mr r29, r7
/* 803AFAD4  7D 1E 43 78 */	mr r30, r8
/* 803AFAD8  4B FF FB B9 */	bl func_803AF690
/* 803AFADC  3C 80 FD 85 */	lis r4, 0xFD85 /* 0xFD84FCBF@ha */
/* 803AFAE0  57 45 00 36 */	rlwinm r5, r26, 0, 0, 0x1b
/* 803AFAE4  38 04 FC BF */	addi r0, r4, 0xFCBF /* 0xFD84FCBF@l */
/* 803AFAE8  3C 80 D2 F0 */	lis r4, 0xd2f0
/* 803AFAEC  90 1F 00 00 */	stw r0, 0(r31)
/* 803AFAF0  7C 05 D0 50 */	subf r0, r5, r26
/* 803AFAF4  1C C0 00 0C */	mulli r6, r0, 0xc
/* 803AFAF8  38 05 00 0F */	addi r0, r5, 0xf
/* 803AFAFC  90 7F 00 04 */	stw r3, 4(r31)
/* 803AFB00  3B FF 00 08 */	addi r31, r31, 8
/* 803AFB04  7F E3 FB 78 */	mr r3, r31
/* 803AFB08  3B FF 00 08 */	addi r31, r31, 8
/* 803AFB0C  90 83 00 00 */	stw r4, 0(r3)
/* 803AFB10  38 66 00 0B */	addi r3, r6, 0xb
/* 803AFB14  93 F9 00 00 */	stw r31, 0(r25)
/* 803AFB18  90 DB 00 00 */	stw r6, 0(r27)
/* 803AFB1C  90 BC 00 00 */	stw r5, 0(r28)
/* 803AFB20  90 7D 00 00 */	stw r3, 0(r29)
/* 803AFB24  90 1E 00 00 */	stw r0, 0(r30)
/* 803AFB28  39 61 00 30 */	addi r11, r1, 0x30
/* 803AFB2C  4B CE B3 E5 */	bl func_8009AF10
/* 803AFB30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AFB34  7C 08 03 A6 */	mtlr r0
/* 803AFB38  38 21 00 30 */	addi r1, r1, 0x30
/* 803AFB3C  4E 80 00 20 */	blr 
