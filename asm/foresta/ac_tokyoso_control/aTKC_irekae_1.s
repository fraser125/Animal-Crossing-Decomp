lbl_804AAAE8:
/* 804AAAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAAEC  7C 08 02 A6 */	mflr r0
/* 804AAAF0  38 80 00 08 */	li r4, 8
/* 804AAAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAAFC  93 C1 00 08 */	stw r30, 8(r1)
/* 804AAB00  7C 7E 1B 78 */	mr r30, r3
/* 804AAB04  38 60 00 0F */	li r3, 0xf
/* 804AAB08  4B EF 32 C5 */	bl mEv_get_save_area
/* 804AAB0C  A0 03 00 02 */	lhz r0, 2(r3)
/* 804AAB10  7C 7F 1B 78 */	mr r31, r3
/* 804AAB14  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 804AAB18  40 82 00 28 */	bne lbl_804AAB40
/* 804AAB1C  7F C3 F3 78 */	mr r3, r30
/* 804AAB20  38 80 00 08 */	li r4, 8
/* 804AAB24  48 00 04 19 */	bl aTKC_setupAction
/* 804AAB28  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AAB2C  60 00 00 20 */	ori r0, r0, 0x20
/* 804AAB30  B0 1F 00 02 */	sth r0, 2(r31)
/* 804AAB34  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AAB38  60 00 08 00 */	ori r0, r0, 0x800
/* 804AAB3C  B0 1F 00 02 */	sth r0, 2(r31)
lbl_804AAB40:
/* 804AAB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AAB48  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AAB4C  7C 08 03 A6 */	mtlr r0
/* 804AAB50  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAB54  4E 80 00 20 */	blr 
