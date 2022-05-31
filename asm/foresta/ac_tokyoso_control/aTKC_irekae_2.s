lbl_804AAA94:
/* 804AAA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAA98  7C 08 02 A6 */	mflr r0
/* 804AAA9C  38 80 00 08 */	li r4, 8
/* 804AAAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAAA8  7C 7F 1B 78 */	mr r31, r3
/* 804AAAAC  38 60 00 0F */	li r3, 0xf
/* 804AAAB0  4B EF 33 1D */	bl mEv_get_save_area
/* 804AAAB4  A0 03 00 02 */	lhz r0, 2(r3)
/* 804AAAB8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804AAABC  40 82 00 18 */	bne lbl_804AAAD4
/* 804AAAC0  7F E3 FB 78 */	mr r3, r31
/* 804AAAC4  38 80 00 02 */	li r4, 2
/* 804AAAC8  48 00 04 75 */	bl aTKC_setupAction
/* 804AAACC  38 00 02 58 */	li r0, 0x258
/* 804AAAD0  B0 1F 01 A4 */	sth r0, 0x1a4(r31)
lbl_804AAAD4:
/* 804AAAD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AAADC  7C 08 03 A6 */	mtlr r0
/* 804AAAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAAE4  4E 80 00 20 */	blr 
