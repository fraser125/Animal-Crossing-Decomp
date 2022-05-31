lbl_804AAD74:
/* 804AAD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAD78  7C 08 02 A6 */	mflr r0
/* 804AAD7C  38 80 00 08 */	li r4, 8
/* 804AAD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAD88  93 C1 00 08 */	stw r30, 8(r1)
/* 804AAD8C  7C 7E 1B 78 */	mr r30, r3
/* 804AAD90  38 60 00 0F */	li r3, 0xf
/* 804AAD94  4B EF 30 39 */	bl mEv_get_save_area
/* 804AAD98  A0 03 00 02 */	lhz r0, 2(r3)
/* 804AAD9C  7C 7F 1B 78 */	mr r31, r3
/* 804AADA0  54 00 05 B1 */	rlwinm. r0, r0, 0, 0x16, 0x18
/* 804AADA4  40 82 00 34 */	bne lbl_804AADD8
/* 804AADA8  A8 7E 01 A4 */	lha r3, 0x1a4(r30)
/* 804AADAC  2C 03 00 00 */	cmpwi r3, 0
/* 804AADB0  40 81 00 10 */	ble lbl_804AADC0
/* 804AADB4  38 03 FF FF */	addi r0, r3, -1
/* 804AADB8  B0 1E 01 A4 */	sth r0, 0x1a4(r30)
/* 804AADBC  48 00 00 1C */	b lbl_804AADD8
lbl_804AADC0:
/* 804AADC0  7F C3 F3 78 */	mr r3, r30
/* 804AADC4  38 80 00 04 */	li r4, 4
/* 804AADC8  48 00 01 75 */	bl aTKC_setupAction
/* 804AADCC  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AADD0  60 00 03 80 */	ori r0, r0, 0x380
/* 804AADD4  B0 1F 00 02 */	sth r0, 2(r31)
lbl_804AADD8:
/* 804AADD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AADDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AADE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AADE4  7C 08 03 A6 */	mtlr r0
/* 804AADE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AADEC  4E 80 00 20 */	blr 
