lbl_804AD418:
/* 804AD418  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AD41C  7C 08 02 A6 */	mflr r0
/* 804AD420  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AD424  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804AD428  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804AD42C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AD430  93 C1 00 08 */	stw r30, 8(r1)
/* 804AD434  7C 9E 23 78 */	mr r30, r4
/* 804AD438  38 60 00 0E */	li r3, 0xe
/* 804AD43C  38 80 00 09 */	li r4, 9
/* 804AD440  4B EF 09 8D */	bl mEv_get_save_area
/* 804AD444  7C 7F 1B 78 */	mr r31, r3
/* 804AD448  3C 60 80 64 */	lis r3, data_80645F0C@ha /* 0x80645F0C@ha */
/* 804AD44C  A0 9F 00 12 */	lhz r4, 0x12(r31)
/* 804AD450  C0 63 5F 0C */	lfs f3, data_80645F0C@l(r3)  /* 0x80645F0C@l */
/* 804AD454  54 80 04 21 */	rlwinm. r0, r4, 0, 0x10, 0x10
/* 804AD458  41 82 00 90 */	beq lbl_804AD4E8
/* 804AD45C  80 1E 20 90 */	lwz r0, 0x2090(r30)
/* 804AD460  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804AD464  41 82 00 10 */	beq lbl_804AD474
/* 804AD468  3C 60 80 64 */	lis r3, lit_423@ha /* 0x80645F10@ha */
/* 804AD46C  C0 63 5F 10 */	lfs f3, lit_423@l(r3)  /* 0x80645F10@l */
/* 804AD470  48 00 00 0C */	b lbl_804AD47C
lbl_804AD474:
/* 804AD474  3C 60 80 64 */	lis r3, lit_424@ha /* 0x80645F14@ha */
/* 804AD478  C0 63 5F 14 */	lfs f3, lit_424@l(r3)  /* 0x80645F14@l */
lbl_804AD47C:
/* 804AD47C  54 80 05 B5 */	rlwinm. r0, r4, 0, 0x16, 0x1a
/* 804AD480  40 82 00 68 */	bne lbl_804AD4E8
/* 804AD484  3C 80 80 64 */	lis r4, lit_425@ha /* 0x80645F18@ha */
/* 804AD488  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804AD48C  C0 24 5F 18 */	lfs f1, lit_425@l(r4)  /* 0x80645F18@l */
/* 804AD490  3C 60 80 64 */	lis r3, lit_426@ha /* 0x80645F1C@ha */
/* 804AD494  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804AD498  EC 21 00 32 */	fmuls f1, f1, f0
/* 804AD49C  C0 03 5F 1C */	lfs f0, lit_426@l(r3)  /* 0x80645F1C@l */
/* 804AD4A0  EC 22 08 2A */	fadds f1, f2, f1
/* 804AD4A4  D0 3F 00 04 */	stfs f1, 4(r31)
/* 804AD4A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804AD4AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD4B0  40 80 00 18 */	bge lbl_804AD4C8
/* 804AD4B4  3C 60 80 64 */	lis r3, data_80645F0C@ha /* 0x80645F0C@ha */
/* 804AD4B8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 804AD4BC  C0 03 5F 0C */	lfs f0, data_80645F0C@l(r3)  /* 0x80645F0C@l */
/* 804AD4C0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804AD4C4  48 00 00 24 */	b lbl_804AD4E8
lbl_804AD4C8:
/* 804AD4C8  3C 60 80 64 */	lis r3, lit_427@ha /* 0x80645F20@ha */
/* 804AD4CC  C0 03 5F 20 */	lfs f0, lit_427@l(r3)  /* 0x80645F20@l */
/* 804AD4D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD4D4  40 81 00 14 */	ble lbl_804AD4E8
/* 804AD4D8  3C 60 80 64 */	lis r3, data_80645F0C@ha /* 0x80645F0C@ha */
/* 804AD4DC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 804AD4E0  C0 03 5F 0C */	lfs f0, data_80645F0C@l(r3)  /* 0x80645F0C@l */
/* 804AD4E4  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_804AD4E8:
/* 804AD4E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804AD4EC  38 60 00 0E */	li r3, 0xe
/* 804AD4F0  38 80 00 09 */	li r4, 9
/* 804AD4F4  EF E0 18 2A */	fadds f31, f0, f3
/* 804AD4F8  4B EF 08 D5 */	bl mEv_get_save_area
/* 804AD4FC  D3 E3 00 00 */	stfs f31, 0(r3)
/* 804AD500  A0 7F 00 16 */	lhz r3, 0x16(r31)
/* 804AD504  38 03 00 01 */	addi r0, r3, 1
/* 804AD508  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804AD50C  A0 1F 00 16 */	lhz r0, 0x16(r31)
/* 804AD510  28 00 00 41 */	cmplwi r0, 0x41
/* 804AD514  41 80 00 0C */	blt lbl_804AD520
/* 804AD518  38 00 00 02 */	li r0, 2
/* 804AD51C  B0 1F 00 16 */	sth r0, 0x16(r31)
lbl_804AD520:
/* 804AD520  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804AD524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AD528  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804AD52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AD530  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AD534  7C 08 03 A6 */	mtlr r0
/* 804AD538  38 21 00 20 */	addi r1, r1, 0x20
/* 804AD53C  4E 80 00 20 */	blr 
