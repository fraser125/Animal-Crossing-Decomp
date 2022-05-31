lbl_805FE41C:
/* 805FE41C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805FE420  7C 08 02 A6 */	mflr r0
/* 805FE424  90 01 00 34 */	stw r0, 0x34(r1)
/* 805FE428  39 61 00 30 */	addi r11, r1, 0x30
/* 805FE42C  4B A9 CA 11 */	bl func_8009AE3C
/* 805FE430  93 E1 00 14 */	stw r31, 0x14(r1)
/* 805FE434  93 C1 00 10 */	stw r30, 0x10(r1)
/* 805FE438  FF A0 08 90 */	fmr f29, f1
/* 805FE43C  7C 9F 23 78 */	mr r31, r4
/* 805FE440  FF C0 10 90 */	fmr f30, f2
/* 805FE444  7C 7E 1B 78 */	mr r30, r3
/* 805FE448  7C A4 2B 78 */	mr r4, r5
/* 805FE44C  FF E0 18 90 */	fmr f31, f3
/* 805FE450  7F E3 FB 78 */	mr r3, r31
/* 805FE454  38 A0 00 20 */	li r5, 0x20
/* 805FE458  4B DB E1 CD */	bl func_803BC624
/* 805FE45C  38 00 00 01 */	li r0, 1
/* 805FE460  7C 65 1B 78 */	mr r5, r3
/* 805FE464  90 01 00 08 */	stw r0, 8(r1)
/* 805FE468  38 00 00 00 */	li r0, 0
/* 805FE46C  FC 20 E8 90 */	fmr f1, f29
/* 805FE470  7F C3 F3 78 */	mr r3, r30
/* 805FE474  FC 40 F0 90 */	fmr f2, f30
/* 805FE478  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE47C  FC 60 F8 90 */	fmr f3, f31
/* 805FE480  7F E4 FB 78 */	mr r4, r31
/* 805FE484  FC 80 F8 90 */	fmr f4, f31
/* 805FE488  38 C0 00 5A */	li r6, 0x5a
/* 805FE48C  38 E0 00 3C */	li r7, 0x3c
/* 805FE490  39 00 00 32 */	li r8, 0x32
/* 805FE494  39 20 00 FF */	li r9, 0xff
/* 805FE498  39 40 00 00 */	li r10, 0
/* 805FE49C  4B DB 1C 0D */	bl mFont_SetLineStrings
/* 805FE4A0  39 61 00 30 */	addi r11, r1, 0x30
/* 805FE4A4  4B A9 C9 E5 */	bl func_8009AE88
/* 805FE4A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805FE4AC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 805FE4B0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 805FE4B4  7C 08 03 A6 */	mtlr r0
/* 805FE4B8  38 21 00 30 */	addi r1, r1, 0x30
/* 805FE4BC  4E 80 00 20 */	blr 
