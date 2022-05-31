lbl_804AACF0:
/* 804AACF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AACF4  7C 08 02 A6 */	mflr r0
/* 804AACF8  38 80 00 08 */	li r4, 8
/* 804AACFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAD04  93 C1 00 08 */	stw r30, 8(r1)
/* 804AAD08  7C 7E 1B 78 */	mr r30, r3
/* 804AAD0C  38 60 00 0F */	li r3, 0xf
/* 804AAD10  4B EF 30 BD */	bl mEv_get_save_area
/* 804AAD14  A0 03 00 02 */	lhz r0, 2(r3)
/* 804AAD18  7C 7F 1B 78 */	mr r31, r3
/* 804AAD1C  54 00 05 B1 */	rlwinm. r0, r0, 0, 0x16, 0x18
/* 804AAD20  40 82 00 3C */	bne lbl_804AAD5C
/* 804AAD24  7F C3 F3 78 */	mr r3, r30
/* 804AAD28  38 80 00 05 */	li r4, 5
/* 804AAD2C  48 00 02 11 */	bl aTKC_setupAction
/* 804AAD30  A0 BF 00 02 */	lhz r5, 2(r31)
/* 804AAD34  38 00 00 00 */	li r0, 0
/* 804AAD38  7F C3 F3 78 */	mr r3, r30
/* 804AAD3C  38 80 00 05 */	li r4, 5
/* 804AAD40  60 A5 04 00 */	ori r5, r5, 0x400
/* 804AAD44  B0 BF 00 02 */	sth r5, 2(r31)
/* 804AAD48  98 1F 00 1B */	stb r0, 0x1b(r31)
/* 804AAD4C  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 804AAD50  98 1F 00 1D */	stb r0, 0x1d(r31)
/* 804AAD54  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 804AAD58  48 00 01 E5 */	bl aTKC_setupAction
lbl_804AAD5C:
/* 804AAD5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AAD64  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AAD68  7C 08 03 A6 */	mtlr r0
/* 804AAD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAD70  4E 80 00 20 */	blr 
