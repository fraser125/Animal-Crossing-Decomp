lbl_8037C98C:
/* 8037C98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C990  7C 08 02 A6 */	mflr r0
/* 8037C994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C99C  7C 7F 1B 78 */	mr r31, r3
/* 8037C9A0  80 03 00 00 */	lwz r0, 0(r3)
/* 8037C9A4  2C 00 00 01 */	cmpwi r0, 1
/* 8037C9A8  40 82 00 3C */	bne lbl_8037C9E4
/* 8037C9AC  48 02 82 E5 */	bl mFI_CheckFieldData
/* 8037C9B0  2C 03 00 00 */	cmpwi r3, 0
/* 8037C9B4  41 82 00 14 */	beq lbl_8037C9C8
/* 8037C9B8  41 82 00 20 */	beq lbl_8037C9D8
/* 8037C9BC  48 02 83 11 */	bl mFI_GetFieldId
/* 8037C9C0  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8037C9C4  41 82 00 14 */	beq lbl_8037C9D8
lbl_8037C9C8:
/* 8037C9C8  38 00 00 01 */	li r0, 1
/* 8037C9CC  38 60 01 95 */	li r3, 0x195
/* 8037C9D0  98 1F 00 04 */	stb r0, 4(r31)
/* 8037C9D4  4B FF F1 39 */	bl mBGMPsComp_make_ps_wipe
lbl_8037C9D8:
/* 8037C9D8  38 00 00 02 */	li r0, 2
/* 8037C9DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8037C9E0  48 00 00 54 */	b lbl_8037CA34
lbl_8037C9E4:
/* 8037C9E4  2C 00 00 03 */	cmpwi r0, 3
/* 8037C9E8  40 82 00 10 */	bne lbl_8037C9F8
/* 8037C9EC  38 00 00 04 */	li r0, 4
/* 8037C9F0  90 1F 00 00 */	stw r0, 0(r31)
/* 8037C9F4  48 00 00 40 */	b lbl_8037CA34
lbl_8037C9F8:
/* 8037C9F8  2C 00 00 05 */	cmpwi r0, 5
/* 8037C9FC  40 82 00 24 */	bne lbl_8037CA20
/* 8037CA00  88 1F 00 04 */	lbz r0, 4(r31)
/* 8037CA04  28 00 00 00 */	cmplwi r0, 0
/* 8037CA08  41 82 00 0C */	beq lbl_8037CA14
/* 8037CA0C  38 60 02 49 */	li r3, 0x249
/* 8037CA10  4B FF F0 FD */	bl mBGMPsComp_make_ps_wipe
lbl_8037CA14:
/* 8037CA14  38 00 00 06 */	li r0, 6
/* 8037CA18  90 1F 00 00 */	stw r0, 0(r31)
/* 8037CA1C  48 00 00 18 */	b lbl_8037CA34
lbl_8037CA20:
/* 8037CA20  2C 00 00 07 */	cmpwi r0, 7
/* 8037CA24  40 82 00 10 */	bne lbl_8037CA34
/* 8037CA28  38 00 00 00 */	li r0, 0
/* 8037CA2C  90 1F 00 00 */	stw r0, 0(r31)
/* 8037CA30  98 1F 00 04 */	stb r0, 4(r31)
lbl_8037CA34:
/* 8037CA34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CA3C  7C 08 03 A6 */	mtlr r0
/* 8037CA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CA44  4E 80 00 20 */	blr 
