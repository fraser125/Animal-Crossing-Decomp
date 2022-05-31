lbl_805DE9AC:
/* 805DE9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE9B0  7C 08 02 A6 */	mflr r0
/* 805DE9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE9B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DE9BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805DE9C0  7C 7E 1B 78 */	mr r30, r3
/* 805DE9C4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DE9C8  83 E4 09 80 */	lwz r31, 0x980(r4)
/* 805DE9CC  A0 1F 02 34 */	lhz r0, 0x234(r31)
/* 805DE9D0  28 00 00 00 */	cmplwi r0, 0
/* 805DE9D4  41 82 00 0C */	beq lbl_805DE9E0
/* 805DE9D8  4B FF FE 21 */	bl mHD_open_end_proc_item
/* 805DE9DC  48 00 00 1C */	b lbl_805DE9F8
lbl_805DE9E0:
/* 805DE9E0  38 7F 02 36 */	addi r3, r31, 0x236
/* 805DE9E4  4B DD DD BD */	bl mMl_check_not_used_mail
/* 805DE9E8  2C 03 00 01 */	cmpwi r3, 1
/* 805DE9EC  41 82 00 0C */	beq lbl_805DE9F8
/* 805DE9F0  7F C3 F3 78 */	mr r3, r30
/* 805DE9F4  4B FF FF 45 */	bl mHD_open_end_proc_mail
lbl_805DE9F8:
/* 805DE9F8  38 00 00 00 */	li r0, 0
/* 805DE9FC  98 1F 03 66 */	stb r0, 0x366(r31)
/* 805DEA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DEA04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DEA08  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DEA0C  7C 08 03 A6 */	mtlr r0
/* 805DEA10  38 21 00 10 */	addi r1, r1, 0x10
/* 805DEA14  4E 80 00 20 */	blr 
