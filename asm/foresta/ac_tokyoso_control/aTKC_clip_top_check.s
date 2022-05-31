lbl_804ABC4C:
/* 804ABC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ABC50  7C 08 02 A6 */	mflr r0
/* 804ABC54  38 80 00 08 */	li r4, 8
/* 804ABC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ABC60  93 C1 00 08 */	stw r30, 8(r1)
/* 804ABC64  A0 A3 00 06 */	lhz r5, 6(r3)
/* 804ABC68  38 60 00 0F */	li r3, 0xf
/* 804ABC6C  3C A5 FF FF */	addis r5, r5, 0xffff
/* 804ABC70  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 804ABC74  54 1F 07 FE */	clrlwi r31, r0, 0x1f
/* 804ABC78  38 1F 00 01 */	addi r0, r31, 1
/* 804ABC7C  54 1E 07 FE */	clrlwi r30, r0, 0x1f
/* 804ABC80  4B EF 21 4D */	bl mEv_get_save_area
/* 804ABC84  A0 03 00 02 */	lhz r0, 2(r3)
/* 804ABC88  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804ABC8C  40 82 00 0C */	bne lbl_804ABC98
/* 804ABC90  38 60 00 00 */	li r3, 0
/* 804ABC94  48 00 00 54 */	b lbl_804ABCE8
lbl_804ABC98:
/* 804ABC98  57 C6 08 3C */	slwi r6, r30, 1
/* 804ABC9C  57 E0 08 3C */	slwi r0, r31, 1
/* 804ABCA0  7C A3 FA 14 */	add r5, r3, r31
/* 804ABCA4  7C 83 F2 14 */	add r4, r3, r30
/* 804ABCA8  7C C3 32 14 */	add r6, r3, r6
/* 804ABCAC  7C 63 02 14 */	add r3, r3, r0
/* 804ABCB0  88 E5 00 1A */	lbz r7, 0x1a(r5)
/* 804ABCB4  88 A4 00 1A */	lbz r5, 0x1a(r4)
/* 804ABCB8  A8 86 00 12 */	lha r4, 0x12(r6)
/* 804ABCBC  A8 03 00 12 */	lha r0, 0x12(r3)
/* 804ABCC0  7C 07 28 40 */	cmplw r7, r5
/* 804ABCC4  7C 04 00 50 */	subf r0, r4, r0
/* 804ABCC8  7C 00 07 34 */	extsh r0, r0
/* 804ABCCC  41 81 00 10 */	bgt lbl_804ABCDC
/* 804ABCD0  40 82 00 14 */	bne lbl_804ABCE4
/* 804ABCD4  7C 00 07 35 */	extsh. r0, r0
/* 804ABCD8  40 81 00 0C */	ble lbl_804ABCE4
lbl_804ABCDC:
/* 804ABCDC  38 60 00 01 */	li r3, 1
/* 804ABCE0  48 00 00 08 */	b lbl_804ABCE8
lbl_804ABCE4:
/* 804ABCE4  38 60 00 00 */	li r3, 0
lbl_804ABCE8:
/* 804ABCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABCEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ABCF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804ABCF4  7C 08 03 A6 */	mtlr r0
/* 804ABCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804ABCFC  4E 80 00 20 */	blr 
