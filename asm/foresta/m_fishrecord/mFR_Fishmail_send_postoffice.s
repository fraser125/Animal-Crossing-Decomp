lbl_803AC1CC:
/* 803AC1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC1D0  7C 08 02 A6 */	mflr r0
/* 803AC1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AC1DC  7C 9F 23 78 */	mr r31, r4
/* 803AC1E0  48 03 2C 85 */	bl mPO_get_keep_mail_sum
/* 803AC1E4  2C 03 00 05 */	cmpwi r3, 5
/* 803AC1E8  40 80 00 18 */	bge lbl_803AC200
/* 803AC1EC  7F E3 FB 78 */	mr r3, r31
/* 803AC1F0  38 80 00 00 */	li r4, 0
/* 803AC1F4  48 03 2E 6D */	bl mPO_receipt_proc
/* 803AC1F8  38 60 00 01 */	li r3, 1
/* 803AC1FC  48 00 00 08 */	b lbl_803AC204
lbl_803AC200:
/* 803AC200  38 60 00 00 */	li r3, 0
lbl_803AC204:
/* 803AC204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AC20C  7C 08 03 A6 */	mtlr r0
/* 803AC210  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC214  4E 80 00 20 */	blr 
