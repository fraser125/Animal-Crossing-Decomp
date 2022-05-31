lbl_804D5B1C:
/* 804D5B1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D5B20  7C 08 02 A6 */	mflr r0
/* 804D5B24  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D5B28  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D5B2C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D5B30  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804D5B34  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804D5B38  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 804D5B3C  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 804D5B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5B44  FF A0 08 90 */	fmr f29, f1
/* 804D5B48  83 E3 1D D0 */	lwz r31, 0x1dd0(r3)
/* 804D5B4C  C3 E4 00 00 */	lfs f31, 0(r4)
/* 804D5B50  C3 C4 00 08 */	lfs f30, 8(r4)
/* 804D5B54  48 00 00 38 */	b lbl_804D5B8C
lbl_804D5B58:
/* 804D5B58  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D5B5C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804D5B60  EC 21 F8 28 */	fsubs f1, f1, f31
/* 804D5B64  EC 40 F0 28 */	fsubs f2, f0, f30
/* 804D5B68  4B F3 31 31 */	bl Math3DVecLengthSquare2D
/* 804D5B6C  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 804D5B70  40 80 00 18 */	bge lbl_804D5B88
/* 804D5B74  88 1F 08 30 */	lbz r0, 0x830(r31)
/* 804D5B78  28 00 00 00 */	cmplwi r0, 0
/* 804D5B7C  40 82 00 0C */	bne lbl_804D5B88
/* 804D5B80  38 60 00 01 */	li r3, 1
/* 804D5B84  48 00 00 14 */	b lbl_804D5B98
lbl_804D5B88:
/* 804D5B88  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_804D5B8C:
/* 804D5B8C  28 1F 00 00 */	cmplwi r31, 0
/* 804D5B90  40 82 FF C8 */	bne lbl_804D5B58
/* 804D5B94  38 60 00 00 */	li r3, 0
lbl_804D5B98:
/* 804D5B98  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D5B9C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D5BA0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804D5BA4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804D5BA8  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 804D5BAC  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 804D5BB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D5BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5BB8  7C 08 03 A6 */	mtlr r0
/* 804D5BBC  38 21 00 40 */	addi r1, r1, 0x40
/* 804D5BC0  4E 80 00 20 */	blr 
