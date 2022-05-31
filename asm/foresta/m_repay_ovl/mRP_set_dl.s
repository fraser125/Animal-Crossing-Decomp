lbl_805ECD90:
/* 805ECD90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805ECD94  7C 08 02 A6 */	mflr r0
/* 805ECD98  90 01 00 34 */	stw r0, 0x34(r1)
/* 805ECD9C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805ECDA0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805ECDA4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805ECDA8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 805ECDAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ECDB0  93 C1 00 08 */	stw r30, 8(r1)
/* 805ECDB4  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 805ECDB8  7C 9F 23 78 */	mr r31, r4
/* 805ECDBC  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 805ECDC0  7C 7E 1B 78 */	mr r30, r3
/* 805ECDC4  FC 20 F8 90 */	fmr f1, f31
/* 805ECDC8  80 84 00 00 */	lwz r4, 0(r4)
/* 805ECDCC  FC 40 F0 90 */	fmr f2, f30
/* 805ECDD0  4B FF FA 75 */	bl mRP_set_frame_dl
/* 805ECDD4  FC 20 F8 90 */	fmr f1, f31
/* 805ECDD8  7F C3 F3 78 */	mr r3, r30
/* 805ECDDC  FC 40 F0 90 */	fmr f2, f30
/* 805ECDE0  7F E4 FB 78 */	mr r4, r31
/* 805ECDE4  4B FF FC B1 */	bl mRP_set_character_dl
/* 805ECDE8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805ECDEC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805ECDF0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805ECDF4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805ECDF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805ECDFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805ECE00  83 C1 00 08 */	lwz r30, 8(r1)
/* 805ECE04  7C 08 03 A6 */	mtlr r0
/* 805ECE08  38 21 00 30 */	addi r1, r1, 0x30
/* 805ECE0C  4E 80 00 20 */	blr 
