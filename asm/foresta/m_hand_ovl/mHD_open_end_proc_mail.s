lbl_805DE938:
/* 805DE938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE93C  7C 08 02 A6 */	mflr r0
/* 805DE940  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DE948  7C 7F 1B 78 */	mr r31, r3
/* 805DE94C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DE950  80 85 09 80 */	lwz r4, 0x980(r5)
/* 805DE954  88 04 03 66 */	lbz r0, 0x366(r4)
/* 805DE958  28 00 00 00 */	cmplwi r0, 0
/* 805DE95C  41 82 00 1C */	beq lbl_805DE978
/* 805DE960  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805DE964  81 85 02 E8 */	lwz r12, 0x2e8(r5)
/* 805DE968  7D 89 03 A6 */	mtctr r12
/* 805DE96C  4E 80 04 21 */	bctrl 
/* 805DE970  7C 64 1B 78 */	mr r4, r3
/* 805DE974  48 00 00 1C */	b lbl_805DE990
lbl_805DE978:
/* 805DE978  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805DE97C  38 80 00 00 */	li r4, 0
/* 805DE980  81 85 02 E8 */	lwz r12, 0x2e8(r5)
/* 805DE984  7D 89 03 A6 */	mtctr r12
/* 805DE988  4E 80 04 21 */	bctrl 
/* 805DE98C  7C 64 1B 78 */	mr r4, r3
lbl_805DE990:
/* 805DE990  7F E3 FB 78 */	mr r3, r31
/* 805DE994  4B FF F7 51 */	bl mHD_drop_mail
/* 805DE998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DE9A0  7C 08 03 A6 */	mtlr r0
/* 805DE9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE9A8  4E 80 00 20 */	blr 
