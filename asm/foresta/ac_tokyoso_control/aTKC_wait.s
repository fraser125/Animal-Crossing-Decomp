lbl_804AAED0:
/* 804AAED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAED4  7C 08 02 A6 */	mflr r0
/* 804AAED8  38 80 00 08 */	li r4, 8
/* 804AAEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAEE4  93 C1 00 08 */	stw r30, 8(r1)
/* 804AAEE8  7C 7E 1B 78 */	mr r30, r3
/* 804AAEEC  38 60 00 0F */	li r3, 0xf
/* 804AAEF0  4B EF 2E DD */	bl mEv_get_save_area
/* 804AAEF4  7C 7F 1B 78 */	mr r31, r3
/* 804AAEF8  38 7F 00 04 */	addi r3, r31, 4
/* 804AAEFC  4B F0 01 1D */	bl mFI_SetOyasiroPos
/* 804AAF00  2C 03 00 00 */	cmpwi r3, 0
/* 804AAF04  41 82 00 20 */	beq lbl_804AAF24
/* 804AAF08  38 00 00 01 */	li r0, 1
/* 804AAF0C  7F C3 F3 78 */	mr r3, r30
/* 804AAF10  98 1F 00 00 */	stb r0, 0(r31)
/* 804AAF14  38 80 00 02 */	li r4, 2
/* 804AAF18  48 00 00 25 */	bl aTKC_setupAction
/* 804AAF1C  38 00 02 58 */	li r0, 0x258
/* 804AAF20  B0 1E 01 A4 */	sth r0, 0x1a4(r30)
lbl_804AAF24:
/* 804AAF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAF28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AAF2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AAF30  7C 08 03 A6 */	mtlr r0
/* 804AAF34  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAF38  4E 80 00 20 */	blr 
