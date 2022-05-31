lbl_804DAD40:
/* 804DAD40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DAD44  7C 08 02 A6 */	mflr r0
/* 804DAD48  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DAD4C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804DAD50  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804DAD54  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804DAD58  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804DAD5C  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 804DAD60  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 804DAD64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAD68  28 04 00 00 */	cmplwi r4, 0
/* 804DAD6C  41 82 00 58 */	beq lbl_804DADC4
/* 804DAD70  3C A0 80 64 */	lis r5, lit_3134@ha /* 0x80646E5C@ha */
/* 804DAD74  83 E3 1D D0 */	lwz r31, 0x1dd0(r3)
/* 804DAD78  C3 C4 00 00 */	lfs f30, 0(r4)
/* 804DAD7C  C3 A4 00 08 */	lfs f29, 8(r4)
/* 804DAD80  C3 E5 6E 5C */	lfs f31, lit_3134@l(r5)  /* 0x80646E5C@l */
/* 804DAD84  48 00 00 38 */	b lbl_804DADBC
lbl_804DAD88:
/* 804DAD88  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804DAD8C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804DAD90  EC 21 F0 28 */	fsubs f1, f1, f30
/* 804DAD94  EC 40 E8 28 */	fsubs f2, f0, f29
/* 804DAD98  4B F2 DF 01 */	bl Math3DVecLengthSquare2D
/* 804DAD9C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804DADA0  40 80 00 18 */	bge lbl_804DADB8
/* 804DADA4  88 1F 08 30 */	lbz r0, 0x830(r31)
/* 804DADA8  28 00 00 00 */	cmplwi r0, 0
/* 804DADAC  40 82 00 0C */	bne lbl_804DADB8
/* 804DADB0  38 60 00 01 */	li r3, 1
/* 804DADB4  48 00 00 14 */	b lbl_804DADC8
lbl_804DADB8:
/* 804DADB8  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_804DADBC:
/* 804DADBC  28 1F 00 00 */	cmplwi r31, 0
/* 804DADC0  40 82 FF C8 */	bne lbl_804DAD88
lbl_804DADC4:
/* 804DADC4  38 60 00 00 */	li r3, 0
lbl_804DADC8:
/* 804DADC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804DADCC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804DADD0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804DADD4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804DADD8  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 804DADDC  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 804DADE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DADE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DADE8  7C 08 03 A6 */	mtlr r0
/* 804DADEC  38 21 00 40 */	addi r1, r1, 0x40
/* 804DADF0  4E 80 00 20 */	blr 
