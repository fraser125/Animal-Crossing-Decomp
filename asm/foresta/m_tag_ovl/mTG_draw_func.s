lbl_805FF098:
/* 805FF098  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805FF09C  7C 08 02 A6 */	mflr r0
/* 805FF0A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805FF0A4  39 61 00 30 */	addi r11, r1, 0x30
/* 805FF0A8  4B A9 BE 19 */	bl func_8009AEC0
/* 805FF0AC  7C 7E 1B 78 */	mr r30, r3
/* 805FF0B0  7C 9F 23 78 */	mr r31, r4
/* 805FF0B4  80 03 00 04 */	lwz r0, 4(r3)
/* 805FF0B8  7C 00 28 00 */	cmpw r0, r5
/* 805FF0BC  40 82 00 E0 */	bne lbl_805FF19C
/* 805FF0C0  1C 85 00 48 */	mulli r4, r5, 0x48
/* 805FF0C4  83 9E 00 2C */	lwz r28, 0x2c(r30)
/* 805FF0C8  83 BF 00 00 */	lwz r29, 0(r31)
/* 805FF0CC  83 7C 09 7C */	lwz r27, 0x97c(r28)
/* 805FF0D0  3B 44 00 54 */	addi r26, r4, 0x54
/* 805FF0D4  7F 5C D2 14 */	add r26, r28, r26
/* 805FF0D8  80 1A 00 04 */	lwz r0, 4(r26)
/* 805FF0DC  2C 00 00 00 */	cmpwi r0, 0
/* 805FF0E0  41 82 00 BC */	beq lbl_805FF19C
/* 805FF0E4  2C 00 00 04 */	cmpwi r0, 4
/* 805FF0E8  41 82 00 B4 */	beq lbl_805FF19C
/* 805FF0EC  7F A4 EB 78 */	mr r4, r29
/* 805FF0F0  7F 65 DB 78 */	mr r5, r27
/* 805FF0F4  4B FF FE 81 */	bl mTG_single_draw_mail
/* 805FF0F8  7F C3 F3 78 */	mr r3, r30
/* 805FF0FC  7F A4 EB 78 */	mr r4, r29
/* 805FF100  7F 65 DB 78 */	mr r5, r27
/* 805FF104  4B FF FF 19 */	bl mTG_single_draw_original
/* 805FF108  A0 1B 03 74 */	lhz r0, 0x374(r27)
/* 805FF10C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805FF110  40 82 00 1C */	bne lbl_805FF12C
/* 805FF114  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805FF118  7F C3 F3 78 */	mr r3, r30
/* 805FF11C  7F E4 FB 78 */	mr r4, r31
/* 805FF120  81 85 09 18 */	lwz r12, 0x918(r5)
/* 805FF124  7D 89 03 A6 */	mtctr r12
/* 805FF128  4E 80 04 21 */	bctrl 
lbl_805FF12C:
/* 805FF12C  80 9C 09 7C */	lwz r4, 0x97c(r28)
/* 805FF130  3B 20 00 00 */	li r25, 0
/* 805FF134  80 64 00 00 */	lwz r3, 0(r4)
/* 805FF138  3B 84 00 08 */	addi r28, r4, 8
/* 805FF13C  3B 03 00 01 */	addi r24, r3, 1
/* 805FF140  48 00 00 30 */	b lbl_805FF170
lbl_805FF144:
/* 805FF144  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 805FF148  7F C3 F3 78 */	mr r3, r30
/* 805FF14C  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 805FF150  7F 44 D3 78 */	mr r4, r26
/* 805FF154  7F A5 EB 78 */	mr r5, r29
/* 805FF158  7F E6 FB 78 */	mr r6, r31
/* 805FF15C  7F 87 E3 78 */	mr r7, r28
/* 805FF160  7F 28 CB 78 */	mr r8, r25
/* 805FF164  4B FF FB C5 */	bl mTG_set_dl
/* 805FF168  3B 39 00 01 */	addi r25, r25, 1
/* 805FF16C  3B 9C 00 B4 */	addi r28, r28, 0xb4
lbl_805FF170:
/* 805FF170  7C 19 C0 00 */	cmpw r25, r24
/* 805FF174  41 80 FF D0 */	blt lbl_805FF144
/* 805FF178  A0 1B 03 74 */	lhz r0, 0x374(r27)
/* 805FF17C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805FF180  41 82 00 1C */	beq lbl_805FF19C
/* 805FF184  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805FF188  7F C3 F3 78 */	mr r3, r30
/* 805FF18C  7F E4 FB 78 */	mr r4, r31
/* 805FF190  81 85 09 18 */	lwz r12, 0x918(r5)
/* 805FF194  7D 89 03 A6 */	mtctr r12
/* 805FF198  4E 80 04 21 */	bctrl 
lbl_805FF19C:
/* 805FF19C  39 61 00 30 */	addi r11, r1, 0x30
/* 805FF1A0  4B A9 BD 6D */	bl func_8009AF0C
/* 805FF1A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805FF1A8  7C 08 03 A6 */	mtlr r0
/* 805FF1AC  38 21 00 30 */	addi r1, r1, 0x30
/* 805FF1B0  4E 80 00 20 */	blr 
