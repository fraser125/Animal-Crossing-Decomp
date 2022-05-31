lbl_804AAE74:
/* 804AAE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAE78  7C 08 02 A6 */	mflr r0
/* 804AAE7C  38 80 00 08 */	li r4, 8
/* 804AAE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAE84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAE88  7C 7F 1B 78 */	mr r31, r3
/* 804AAE8C  38 60 00 0F */	li r3, 0xf
/* 804AAE90  4B EF 2F 3D */	bl mEv_get_save_area
/* 804AAE94  88 03 00 00 */	lbz r0, 0(r3)
/* 804AAE98  28 00 00 00 */	cmplwi r0, 0
/* 804AAE9C  40 82 00 20 */	bne lbl_804AAEBC
/* 804AAEA0  38 00 00 01 */	li r0, 1
/* 804AAEA4  38 80 00 02 */	li r4, 2
/* 804AAEA8  98 03 00 00 */	stb r0, 0(r3)
/* 804AAEAC  7F E3 FB 78 */	mr r3, r31
/* 804AAEB0  48 00 00 8D */	bl aTKC_setupAction
/* 804AAEB4  38 00 02 58 */	li r0, 0x258
/* 804AAEB8  B0 1F 01 A4 */	sth r0, 0x1a4(r31)
lbl_804AAEBC:
/* 804AAEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AAEC4  7C 08 03 A6 */	mtlr r0
/* 804AAEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAECC  4E 80 00 20 */	blr 
