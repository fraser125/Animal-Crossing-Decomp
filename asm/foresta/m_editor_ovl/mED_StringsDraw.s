lbl_805DBEA4:
/* 805DBEA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DBEA8  7C 08 02 A6 */	mflr r0
/* 805DBEAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DBEB0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 805DBEB4  FF E0 10 90 */	fmr f31, f2
/* 805DBEB8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805DBEBC  FF C0 08 90 */	fmr f30, f1
/* 805DBEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DBEC4  7C BF 2B 78 */	mr r31, r5
/* 805DBEC8  93 C1 00 08 */	stw r30, 8(r1)
/* 805DBECC  7C 9E 23 78 */	mr r30, r4
/* 805DBED0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DBED4  81 83 09 50 */	lwz r12, 0x950(r3)
/* 805DBED8  80 65 00 00 */	lwz r3, 0(r5)
/* 805DBEDC  7D 89 03 A6 */	mtctr r12
/* 805DBEE0  4E 80 04 21 */	bctrl 
/* 805DBEE4  FC 20 F0 90 */	fmr f1, f30
/* 805DBEE8  7F C3 F3 78 */	mr r3, r30
/* 805DBEEC  FC 40 F8 90 */	fmr f2, f31
/* 805DBEF0  7F E4 FB 78 */	mr r4, r31
/* 805DBEF4  4B FF FB ED */	bl mED_StringsDraw_keyboard
/* 805DBEF8  FC 20 F0 90 */	fmr f1, f30
/* 805DBEFC  7F C3 F3 78 */	mr r3, r30
/* 805DBF00  FC 40 F8 90 */	fmr f2, f31
/* 805DBF04  7F E4 FB 78 */	mr r4, r31
/* 805DBF08  4B FF FD 41 */	bl mED_StringsDraw_select
/* 805DBF0C  FC 20 F0 90 */	fmr f1, f30
/* 805DBF10  7F C3 F3 78 */	mr r3, r30
/* 805DBF14  FC 40 F8 90 */	fmr f2, f31
/* 805DBF18  7F E4 FB 78 */	mr r4, r31
/* 805DBF1C  4B FF FE 59 */	bl mED_StringsDraw_ornament
/* 805DBF20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DBF24  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 805DBF28  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805DBF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DBF30  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DBF34  7C 08 03 A6 */	mtlr r0
/* 805DBF38  38 21 00 20 */	addi r1, r1, 0x20
/* 805DBF3C  4E 80 00 20 */	blr 
