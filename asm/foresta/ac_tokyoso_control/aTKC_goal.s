lbl_804AAB58:
/* 804AAB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAB5C  7C 08 02 A6 */	mflr r0
/* 804AAB60  38 80 00 08 */	li r4, 8
/* 804AAB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAB68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAB6C  93 C1 00 08 */	stw r30, 8(r1)
/* 804AAB70  7C 7E 1B 78 */	mr r30, r3
/* 804AAB74  38 60 00 0F */	li r3, 0xf
/* 804AAB78  4B EF 32 55 */	bl mEv_get_save_area
/* 804AAB7C  7C 7F 1B 78 */	mr r31, r3
/* 804AAB80  A0 03 00 02 */	lhz r0, 2(r3)
/* 804AAB84  54 00 04 64 */	rlwinm r0, r0, 0, 0x11, 0x12
/* 804AAB88  2C 00 60 00 */	cmpwi r0, 0x6000
/* 804AAB8C  40 82 00 58 */	bne lbl_804AABE4
/* 804AAB90  A8 7E 01 A4 */	lha r3, 0x1a4(r30)
/* 804AAB94  2C 03 00 00 */	cmpwi r3, 0
/* 804AAB98  40 81 00 10 */	ble lbl_804AABA8
/* 804AAB9C  38 03 FF FF */	addi r0, r3, -1
/* 804AABA0  B0 1E 01 A4 */	sth r0, 0x1a4(r30)
/* 804AABA4  48 00 00 40 */	b lbl_804AABE4
lbl_804AABA8:
/* 804AABA8  7F C3 F3 78 */	mr r3, r30
/* 804AABAC  38 80 00 07 */	li r4, 7
/* 804AABB0  48 00 03 8D */	bl aTKC_setupAction
/* 804AABB4  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AABB8  60 00 00 40 */	ori r0, r0, 0x40
/* 804AABBC  B0 1F 00 02 */	sth r0, 2(r31)
/* 804AABC0  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AABC4  60 00 10 00 */	ori r0, r0, 0x1000
/* 804AABC8  B0 1F 00 02 */	sth r0, 2(r31)
/* 804AABCC  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AABD0  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 804AABD4  B0 1F 00 02 */	sth r0, 2(r31)
/* 804AABD8  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AABDC  54 00 04 E0 */	rlwinm r0, r0, 0, 0x13, 0x10
/* 804AABE0  B0 1F 00 02 */	sth r0, 2(r31)
lbl_804AABE4:
/* 804AABE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AABE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AABEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AABF0  7C 08 03 A6 */	mtlr r0
/* 804AABF4  38 21 00 10 */	addi r1, r1, 0x10
/* 804AABF8  4E 80 00 20 */	blr 
