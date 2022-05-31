lbl_8047EAD8:
/* 8047EAD8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8047EADC  7C 08 02 A6 */	mflr r0
/* 8047EAE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8047EAE4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8047EAE8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8047EAEC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8047EAF0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8047EAF4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8047EAF8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8047EAFC  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8047EB00  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 8047EB04  39 61 00 30 */	addi r11, r1, 0x30
/* 8047EB08  4B C1 C3 CD */	bl func_8009AED4
/* 8047EB0C  FF 80 08 90 */	fmr f28, f1
/* 8047EB10  7C 7E 1B 78 */	mr r30, r3
/* 8047EB14  38 60 00 00 */	li r3, 0
/* 8047EB18  4B FF 18 D9 */	bl aMR_GetLayerTopFg
/* 8047EB1C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8047EB20  41 82 01 34 */	beq lbl_8047EC54
/* 8047EB24  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 8047EB28  3B E0 00 00 */	li r31, 0
/* 8047EB2C  C3 E3 49 F4 */	lfs f31, lit_885@l(r3)  /* 0x806449F4@l */
lbl_8047EB30:
/* 8047EB30  2C 1F 00 02 */	cmpwi r31, 2
/* 8047EB34  41 82 00 44 */	beq lbl_8047EB78
/* 8047EB38  40 80 00 14 */	bge lbl_8047EB4C
/* 8047EB3C  2C 1F 00 00 */	cmpwi r31, 0
/* 8047EB40  41 82 00 18 */	beq lbl_8047EB58
/* 8047EB44  40 80 00 24 */	bge lbl_8047EB68
/* 8047EB48  48 00 00 4C */	b lbl_8047EB94
lbl_8047EB4C:
/* 8047EB4C  2C 1F 00 04 */	cmpwi r31, 4
/* 8047EB50  40 80 00 44 */	bge lbl_8047EB94
/* 8047EB54  48 00 00 34 */	b lbl_8047EB88
lbl_8047EB58:
/* 8047EB58  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8047EB5C  C3 DE 00 00 */	lfs f30, 0(r30)
/* 8047EB60  EF A0 E0 28 */	fsubs f29, f0, f28
/* 8047EB64  48 00 00 30 */	b lbl_8047EB94
lbl_8047EB68:
/* 8047EB68  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8047EB6C  C3 BE 00 08 */	lfs f29, 8(r30)
/* 8047EB70  EF C0 E0 28 */	fsubs f30, f0, f28
/* 8047EB74  48 00 00 20 */	b lbl_8047EB94
lbl_8047EB78:
/* 8047EB78  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8047EB7C  C3 DE 00 00 */	lfs f30, 0(r30)
/* 8047EB80  EF A0 E0 2A */	fadds f29, f0, f28
/* 8047EB84  48 00 00 10 */	b lbl_8047EB94
lbl_8047EB88:
/* 8047EB88  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8047EB8C  C3 BE 00 08 */	lfs f29, 8(r30)
/* 8047EB90  EF C0 E0 2A */	fadds f30, f0, f28
lbl_8047EB94:
/* 8047EB94  EC 1D F8 24 */	fdivs f0, f29, f31
/* 8047EB98  EC 3E F8 24 */	fdivs f1, f30, f31
/* 8047EB9C  FC 00 00 1E */	fctiwz f0, f0
/* 8047EBA0  FC 20 08 1E */	fctiwz f1, f1
/* 8047EBA4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8047EBA8  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8047EBAC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8047EBB0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8047EBB4  54 C0 20 36 */	slwi r0, r6, 4
/* 8047EBB8  7C 05 02 14 */	add r0, r5, r0
/* 8047EBBC  54 00 08 3C */	slwi r0, r0, 1
/* 8047EBC0  7C 7D 02 2E */	lhzx r3, r29, r0
/* 8047EBC4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8047EBC8  2C 00 00 01 */	cmpwi r0, 1
/* 8047EBCC  41 82 00 14 */	beq lbl_8047EBE0
/* 8047EBD0  2C 00 00 03 */	cmpwi r0, 3
/* 8047EBD4  41 82 00 0C */	beq lbl_8047EBE0
/* 8047EBD8  28 03 FE 1F */	cmplwi r3, 0xfe1f
/* 8047EBDC  40 82 00 54 */	bne lbl_8047EC30
lbl_8047EBE0:
/* 8047EBE0  38 61 00 08 */	addi r3, r1, 8
/* 8047EBE4  38 81 00 0C */	addi r4, r1, 0xc
/* 8047EBE8  38 E0 00 00 */	li r7, 0
/* 8047EBEC  4B FF F3 55 */	bl aMR_UnitNum2FtrItemNoFtrID
/* 8047EBF0  2C 03 00 00 */	cmpwi r3, 0
/* 8047EBF4  41 82 00 4C */	beq lbl_8047EC40
/* 8047EBF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047EBFC  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047EC00  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047EC04  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047EC08  80 63 00 00 */	lwz r3, 0(r3)
/* 8047EC0C  7C 63 02 2E */	lhzx r3, r3, r0
/* 8047EC10  4B FF 15 91 */	bl func_804701A0
/* 8047EC14  28 03 00 00 */	cmplwi r3, 0
/* 8047EC18  41 82 00 28 */	beq lbl_8047EC40
/* 8047EC1C  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8047EC20  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047EC24  40 82 00 1C */	bne lbl_8047EC40
/* 8047EC28  38 60 00 01 */	li r3, 1
/* 8047EC2C  48 00 00 2C */	b lbl_8047EC58
lbl_8047EC30:
/* 8047EC30  28 03 FF FE */	cmplwi r3, 0xfffe
/* 8047EC34  40 82 00 0C */	bne lbl_8047EC40
/* 8047EC38  38 60 00 01 */	li r3, 1
/* 8047EC3C  48 00 00 1C */	b lbl_8047EC58
lbl_8047EC40:
/* 8047EC40  3B FF 00 01 */	addi r31, r31, 1
/* 8047EC44  2C 1F 00 04 */	cmpwi r31, 4
/* 8047EC48  41 80 FE E8 */	blt lbl_8047EB30
/* 8047EC4C  38 60 00 00 */	li r3, 0
/* 8047EC50  48 00 00 08 */	b lbl_8047EC58
lbl_8047EC54:
/* 8047EC54  38 60 00 01 */	li r3, 1
lbl_8047EC58:
/* 8047EC58  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8047EC5C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8047EC60  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8047EC64  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8047EC68  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8047EC6C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8047EC70  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 8047EC74  39 61 00 30 */	addi r11, r1, 0x30
/* 8047EC78  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8047EC7C  4B C1 C2 A5 */	bl func_8009AF20
/* 8047EC80  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8047EC84  7C 08 03 A6 */	mtlr r0
/* 8047EC88  38 21 00 70 */	addi r1, r1, 0x70
/* 8047EC8C  4E 80 00 20 */	blr 
