lbl_8037FBEC:
/* 8037FBEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8037FBF0  7C 08 02 A6 */	mflr r0
/* 8037FBF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8037FBF8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8037FBFC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8037FC00  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8037FC04  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8037FC08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037FC0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037FC10  80 03 1C 18 */	lwz r0, 0x1c18(r3)
/* 8037FC14  7C 67 1B 78 */	mr r7, r3
/* 8037FC18  7C DE 33 78 */	mr r30, r6
/* 8037FC1C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8037FC20  41 82 00 18 */	beq lbl_8037FC38
/* 8037FC24  38 64 00 28 */	addi r3, r4, 0x28
/* 8037FC28  38 87 1C 08 */	addi r4, r7, 0x1c08
/* 8037FC2C  48 03 B5 05 */	bl search_position_angleY
/* 8037FC30  7C 63 07 34 */	extsh r3, r3
/* 8037FC34  48 00 00 14 */	b lbl_8037FC48
lbl_8037FC38:
/* 8037FC38  38 64 00 28 */	addi r3, r4, 0x28
/* 8037FC3C  38 85 00 28 */	addi r4, r5, 0x28
/* 8037FC40  48 03 B4 F1 */	bl search_position_angleY
/* 8037FC44  7C 63 07 34 */	extsh r3, r3
lbl_8037FC48:
/* 8037FC48  7C 60 07 34 */	extsh r0, r3
/* 8037FC4C  7C 7F 1B 78 */	mr r31, r3
/* 8037FC50  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8037FC54  40 80 00 0C */	bge lbl_8037FC60
/* 8037FC58  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8037FC5C  41 81 00 18 */	bgt lbl_8037FC74
lbl_8037FC60:
/* 8037FC60  7F E0 07 34 */	extsh r0, r31
/* 8037FC64  2C 00 A0 00 */	cmpwi r0, -24576
/* 8037FC68  40 81 00 14 */	ble lbl_8037FC7C
/* 8037FC6C  2C 00 E0 00 */	cmpwi r0, -8192
/* 8037FC70  40 80 00 0C */	bge lbl_8037FC7C
lbl_8037FC74:
/* 8037FC74  38 60 00 00 */	li r3, 0
/* 8037FC78  48 00 00 6C */	b lbl_8037FCE4
lbl_8037FC7C:
/* 8037FC7C  7F E0 07 34 */	extsh r0, r31
/* 8037FC80  54 00 08 3C */	slwi r0, r0, 1
/* 8037FC84  7C 03 07 34 */	extsh r3, r0
/* 8037FC88  48 03 AE 15 */	bl cos_s
/* 8037FC8C  3C 80 80 64 */	lis r4, lit_1130@ha /* 0x806414D4@ha */
/* 8037FC90  7F E3 FB 78 */	mr r3, r31
/* 8037FC94  C0 04 14 D4 */	lfs f0, lit_1130@l(r4)  /* 0x806414D4@l */
/* 8037FC98  EF C0 00 72 */	fmuls f30, f0, f1
/* 8037FC9C  48 03 AE 55 */	bl sin_s
/* 8037FCA0  FF E0 08 90 */	fmr f31, f1
/* 8037FCA4  7F E3 FB 78 */	mr r3, r31
/* 8037FCA8  48 03 AD F5 */	bl cos_s
/* 8037FCAC  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037FCB0  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8037FCB4  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 8037FCB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037FCBC  4C 41 13 82 */	cror 2, 1, 2
/* 8037FCC0  40 82 00 18 */	bne lbl_8037FCD8
/* 8037FCC4  FC 00 F0 50 */	fneg f0, f30
/* 8037FCC8  FC 00 00 1E */	fctiwz f0, f0
/* 8037FCCC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8037FCD0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8037FCD4  48 00 00 10 */	b lbl_8037FCE4
lbl_8037FCD8:
/* 8037FCD8  FC 00 F0 1E */	fctiwz f0, f30
/* 8037FCDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8037FCE0  80 61 00 0C */	lwz r3, 0xc(r1)
lbl_8037FCE4:
/* 8037FCE4  A8 1E 00 02 */	lha r0, 2(r30)
/* 8037FCE8  7C 00 1A 14 */	add r0, r0, r3
/* 8037FCEC  B0 1E 00 02 */	sth r0, 2(r30)
/* 8037FCF0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8037FCF4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8037FCF8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8037FCFC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8037FD00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037FD04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8037FD08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037FD0C  7C 08 03 A6 */	mtlr r0
/* 8037FD10  38 21 00 40 */	addi r1, r1, 0x40
/* 8037FD14  4E 80 00 20 */	blr 
