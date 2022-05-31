lbl_8048E054:
/* 8048E054  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048E058  7C 08 02 A6 */	mflr r0
/* 8048E05C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048E060  39 61 00 40 */	addi r11, r1, 0x40
/* 8048E064  4B C0 CE 59 */	bl func_8009AEBC
/* 8048E068  3B 20 00 00 */	li r25, 0
/* 8048E06C  7C 7B 1B 78 */	mr r27, r3
/* 8048E070  B3 23 00 00 */	sth r25, 0(r3)
/* 8048E074  7C DE 33 78 */	mr r30, r6
/* 8048E078  7C 9C 23 78 */	mr r28, r4
/* 8048E07C  7C BD 2B 78 */	mr r29, r5
/* 8048E080  54 DA 04 3E */	clrlwi r26, r6, 0x10
/* 8048E084  3B E0 FF FF */	li r31, -1
/* 8048E088  3B 00 00 00 */	li r24, 0
/* 8048E08C  3A E0 00 00 */	li r23, 0
lbl_8048E090:
/* 8048E090  7C 7C CA 2E */	lhzx r3, r28, r25
/* 8048E094  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048E098  2C 00 00 02 */	cmpwi r0, 2
/* 8048E09C  40 82 00 38 */	bne lbl_8048E0D4
/* 8048E0A0  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8048E0A4  2C 00 00 04 */	cmpwi r0, 4
/* 8048E0A8  40 82 00 2C */	bne lbl_8048E0D4
/* 8048E0AC  7F A3 EB 78 */	mr r3, r29
/* 8048E0B0  7E E5 BB 78 */	mr r5, r23
/* 8048E0B4  38 80 00 00 */	li r4, 0
/* 8048E0B8  4B FF FC 9D */	bl aQMgr_check_item_cond
/* 8048E0BC  2C 03 00 01 */	cmpwi r3, 1
/* 8048E0C0  40 82 00 14 */	bne lbl_8048E0D4
/* 8048E0C4  7C 1C CA 2E */	lhzx r0, r28, r25
/* 8048E0C8  7C 1A 00 40 */	cmplw r26, r0
/* 8048E0CC  41 82 00 08 */	beq lbl_8048E0D4
/* 8048E0D0  3B 18 00 01 */	addi r24, r24, 1
lbl_8048E0D4:
/* 8048E0D4  3A F7 00 01 */	addi r23, r23, 1
/* 8048E0D8  3B 39 00 02 */	addi r25, r25, 2
/* 8048E0DC  2C 17 00 0F */	cmpwi r23, 0xf
/* 8048E0E0  41 80 FF B0 */	blt lbl_8048E090
/* 8048E0E4  2C 18 00 00 */	cmpwi r24, 0
/* 8048E0E8  40 81 00 A8 */	ble lbl_8048E190
/* 8048E0EC  4B BC EC 09 */	bl fqrand
/* 8048E0F0  6F 03 80 00 */	xoris r3, r24, 0x8000
/* 8048E0F4  3C 00 43 30 */	lis r0, 0x4330
/* 8048E0F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8048E0FC  3C 80 80 64 */	lis r4, lit_504@ha /* 0x80644C2C@ha */
/* 8048E100  C8 44 4C 2C */	lfd f2, lit_504@l(r4)  /* 0x80644C2C@l */
/* 8048E104  3B 20 00 00 */	li r25, 0
/* 8048E108  90 01 00 08 */	stw r0, 8(r1)
/* 8048E10C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048E110  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048E114  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048E118  FC 00 00 1E */	fctiwz f0, f0
/* 8048E11C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8048E120  83 01 00 14 */	lwz r24, 0x14(r1)
lbl_8048E124:
/* 8048E124  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8048E128  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048E12C  2C 00 00 02 */	cmpwi r0, 2
/* 8048E130  40 82 00 50 */	bne lbl_8048E180
/* 8048E134  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8048E138  2C 00 00 04 */	cmpwi r0, 4
/* 8048E13C  40 82 00 44 */	bne lbl_8048E180
/* 8048E140  7F A3 EB 78 */	mr r3, r29
/* 8048E144  7F 25 CB 78 */	mr r5, r25
/* 8048E148  38 80 00 00 */	li r4, 0
/* 8048E14C  4B FF FC 09 */	bl aQMgr_check_item_cond
/* 8048E150  2C 03 00 01 */	cmpwi r3, 1
/* 8048E154  40 82 00 2C */	bne lbl_8048E180
/* 8048E158  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8048E15C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8048E160  7C 03 00 40 */	cmplw r3, r0
/* 8048E164  41 82 00 1C */	beq lbl_8048E180
/* 8048E168  2C 18 00 00 */	cmpwi r24, 0
/* 8048E16C  40 82 00 10 */	bne lbl_8048E17C
/* 8048E170  B0 7B 00 00 */	sth r3, 0(r27)
/* 8048E174  7F 3F CB 78 */	mr r31, r25
/* 8048E178  48 00 00 18 */	b lbl_8048E190
lbl_8048E17C:
/* 8048E17C  3B 18 FF FF */	addi r24, r24, -1
lbl_8048E180:
/* 8048E180  3B 39 00 01 */	addi r25, r25, 1
/* 8048E184  3B 9C 00 02 */	addi r28, r28, 2
/* 8048E188  2C 19 00 0F */	cmpwi r25, 0xf
/* 8048E18C  41 80 FF 98 */	blt lbl_8048E124
lbl_8048E190:
/* 8048E190  7F E3 FB 78 */	mr r3, r31
/* 8048E194  39 61 00 40 */	addi r11, r1, 0x40
/* 8048E198  4B C0 CD 71 */	bl func_8009AF08
/* 8048E19C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048E1A0  7C 08 03 A6 */	mtlr r0
/* 8048E1A4  38 21 00 40 */	addi r1, r1, 0x40
/* 8048E1A8  4E 80 00 20 */	blr 
