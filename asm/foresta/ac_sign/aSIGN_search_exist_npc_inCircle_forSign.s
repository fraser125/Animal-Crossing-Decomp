lbl_804A1B2C:
/* 804A1B2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A1B30  7C 08 02 A6 */	mflr r0
/* 804A1B34  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A1B38  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804A1B3C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804A1B40  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804A1B44  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804A1B48  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 804A1B4C  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 804A1B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A1B54  93 C1 00 08 */	stw r30, 8(r1)
/* 804A1B58  7C 7E 1B 78 */	mr r30, r3
/* 804A1B5C  FF A0 08 90 */	fmr f29, f1
/* 804A1B60  83 E3 1D D0 */	lwz r31, 0x1dd0(r3)
/* 804A1B64  C3 E4 00 00 */	lfs f31, 0(r4)
/* 804A1B68  C3 C4 00 08 */	lfs f30, 8(r4)
/* 804A1B6C  48 00 00 38 */	b lbl_804A1BA4
lbl_804A1B70:
/* 804A1B70  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804A1B74  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804A1B78  EC 21 F8 28 */	fsubs f1, f1, f31
/* 804A1B7C  EC 40 F0 28 */	fsubs f2, f0, f30
/* 804A1B80  4B F6 71 19 */	bl Math3DVecLengthSquare2D
/* 804A1B84  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 804A1B88  40 80 00 18 */	bge lbl_804A1BA0
/* 804A1B8C  88 1F 08 30 */	lbz r0, 0x830(r31)
/* 804A1B90  28 00 00 00 */	cmplwi r0, 0
/* 804A1B94  40 82 00 0C */	bne lbl_804A1BA0
/* 804A1B98  7F E3 FB 78 */	mr r3, r31
/* 804A1B9C  48 00 00 58 */	b lbl_804A1BF4
lbl_804A1BA0:
/* 804A1BA0  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_804A1BA4:
/* 804A1BA4  28 1F 00 00 */	cmplwi r31, 0
/* 804A1BA8  40 82 FF C8 */	bne lbl_804A1B70
/* 804A1BAC  83 FE 1D D8 */	lwz r31, 0x1dd8(r30)
/* 804A1BB0  48 00 00 38 */	b lbl_804A1BE8
lbl_804A1BB4:
/* 804A1BB4  A8 1F 00 00 */	lha r0, 0(r31)
/* 804A1BB8  2C 00 00 58 */	cmpwi r0, 0x58
/* 804A1BBC  40 82 00 28 */	bne lbl_804A1BE4
/* 804A1BC0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804A1BC4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804A1BC8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 804A1BCC  EC 40 F0 28 */	fsubs f2, f0, f30
/* 804A1BD0  4B F6 70 C9 */	bl Math3DVecLengthSquare2D
/* 804A1BD4  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 804A1BD8  40 80 00 0C */	bge lbl_804A1BE4
/* 804A1BDC  7F E3 FB 78 */	mr r3, r31
/* 804A1BE0  48 00 00 14 */	b lbl_804A1BF4
lbl_804A1BE4:
/* 804A1BE4  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_804A1BE8:
/* 804A1BE8  28 1F 00 00 */	cmplwi r31, 0
/* 804A1BEC  40 82 FF C8 */	bne lbl_804A1BB4
/* 804A1BF0  38 60 00 00 */	li r3, 0
lbl_804A1BF4:
/* 804A1BF4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804A1BF8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804A1BFC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804A1C00  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804A1C04  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 804A1C08  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 804A1C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A1C10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A1C14  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A1C18  7C 08 03 A6 */	mtlr r0
/* 804A1C1C  38 21 00 40 */	addi r1, r1, 0x40
/* 804A1C20  4E 80 00 20 */	blr 
