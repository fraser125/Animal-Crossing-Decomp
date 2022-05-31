lbl_8045EA30:
/* 8045EA30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045EA34  7C 08 02 A6 */	mflr r0
/* 8045EA38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045EA3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045EA40  7C 7F 1B 78 */	mr r31, r3
/* 8045EA44  A8 63 00 8C */	lha r3, 0x8c(r3)
/* 8045EA48  70 60 00 9E */	andi. r0, r3, 0x9e
/* 8045EA4C  41 82 02 3C */	beq lbl_8045EC88
/* 8045EA50  A8 9F 00 72 */	lha r4, 0x72(r31)
/* 8045EA54  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8045EA58  41 82 00 B4 */	beq lbl_8045EB0C
/* 8045EA5C  4B BF E2 99 */	bl fqrand
/* 8045EA60  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8045EA64  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8045EA68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045EA6C  4C 41 13 82 */	cror 2, 1, 2
/* 8045EA70  40 82 00 44 */	bne lbl_8045EAB4
/* 8045EA74  4B BF E2 81 */	bl fqrand
/* 8045EA78  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045EA7C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045EA80  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045EA84  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045EA88  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045EA8C  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 8045EA90  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045EA94  FC 00 00 1E */	fctiwz f0, f0
/* 8045EA98  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EA9C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045EAA0  38 63 40 00 */	addi r3, r3, 0x4000
/* 8045EAA4  7C 63 07 34 */	extsh r3, r3
/* 8045EAA8  7C 00 1A 14 */	add r0, r0, r3
/* 8045EAAC  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EAB0  48 00 00 40 */	b lbl_8045EAF0
lbl_8045EAB4:
/* 8045EAB4  4B BF E2 41 */	bl fqrand
/* 8045EAB8  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045EABC  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045EAC0  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045EAC4  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045EAC8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045EACC  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 8045EAD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045EAD4  FC 00 00 1E */	fctiwz f0, f0
/* 8045EAD8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EADC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045EAE0  38 63 40 00 */	addi r3, r3, 0x4000
/* 8045EAE4  7C 63 07 34 */	extsh r3, r3
/* 8045EAE8  7C 03 00 50 */	subf r0, r3, r0
/* 8045EAEC  B0 1F 00 70 */	sth r0, 0x70(r31)
lbl_8045EAF0:
/* 8045EAF0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045EAF4  38 00 00 00 */	li r0, 0
/* 8045EAF8  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045EAFC  38 60 00 01 */	li r3, 1
/* 8045EB00  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 8045EB04  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8045EB08  48 00 01 84 */	b lbl_8045EC8C
lbl_8045EB0C:
/* 8045EB0C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8045EB10  41 82 00 0C */	beq lbl_8045EB1C
/* 8045EB14  54 60 07 7D */	rlwinm. r0, r3, 0, 0x1d, 0x1e
/* 8045EB18  41 82 01 70 */	beq lbl_8045EC88
lbl_8045EB1C:
/* 8045EB1C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8045EB20  41 82 00 48 */	beq lbl_8045EB68
/* 8045EB24  38 00 40 00 */	li r0, 0x4000
/* 8045EB28  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EB2C  4B BF E2 01 */	bl fqrand2
/* 8045EB30  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045EB34  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045EB38  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045EB3C  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045EB40  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045EB44  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 8045EB48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045EB4C  FC 00 00 1E */	fctiwz f0, f0
/* 8045EB50  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EB54  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045EB58  7C 63 07 34 */	extsh r3, r3
/* 8045EB5C  7C 00 1A 14 */	add r0, r0, r3
/* 8045EB60  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EB64  48 00 01 08 */	b lbl_8045EC6C
lbl_8045EB68:
/* 8045EB68  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8045EB6C  41 82 00 48 */	beq lbl_8045EBB4
/* 8045EB70  38 00 C0 00 */	li r0, -16384
/* 8045EB74  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EB78  4B BF E1 B5 */	bl fqrand2
/* 8045EB7C  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045EB80  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045EB84  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045EB88  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045EB8C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045EB90  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 8045EB94  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045EB98  FC 00 00 1E */	fctiwz f0, f0
/* 8045EB9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EBA0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045EBA4  7C 63 07 34 */	extsh r3, r3
/* 8045EBA8  7C 00 1A 14 */	add r0, r0, r3
/* 8045EBAC  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EBB0  48 00 00 BC */	b lbl_8045EC6C
lbl_8045EBB4:
/* 8045EBB4  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8045EBB8  41 82 00 48 */	beq lbl_8045EC00
/* 8045EBBC  38 00 80 00 */	li r0, -32768
/* 8045EBC0  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EBC4  4B BF E1 69 */	bl fqrand2
/* 8045EBC8  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045EBCC  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045EBD0  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045EBD4  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045EBD8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045EBDC  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 8045EBE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045EBE4  FC 00 00 1E */	fctiwz f0, f0
/* 8045EBE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EBEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045EBF0  7C 63 07 34 */	extsh r3, r3
/* 8045EBF4  7C 00 1A 14 */	add r0, r0, r3
/* 8045EBF8  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EBFC  48 00 00 70 */	b lbl_8045EC6C
lbl_8045EC00:
/* 8045EC00  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 8045EC04  41 82 00 34 */	beq lbl_8045EC38
/* 8045EC08  4B BF E1 25 */	bl fqrand2
/* 8045EC0C  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045EC10  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045EC14  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045EC18  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045EC1C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045EC20  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045EC24  FC 00 00 1E */	fctiwz f0, f0
/* 8045EC28  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EC2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045EC30  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045EC34  48 00 00 38 */	b lbl_8045EC6C
lbl_8045EC38:
/* 8045EC38  4B BF E0 F5 */	bl fqrand2
/* 8045EC3C  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045EC40  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045EC44  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045EC48  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045EC4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045EC50  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 8045EC54  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045EC58  FC 00 00 1E */	fctiwz f0, f0
/* 8045EC5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EC60  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045EC64  7C 00 1A 14 */	add r0, r0, r3
/* 8045EC68  B0 1F 00 70 */	sth r0, 0x70(r31)
lbl_8045EC6C:
/* 8045EC6C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045EC70  38 00 00 00 */	li r0, 0
/* 8045EC74  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045EC78  38 60 00 01 */	li r3, 1
/* 8045EC7C  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 8045EC80  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8045EC84  48 00 00 08 */	b lbl_8045EC8C
lbl_8045EC88:
/* 8045EC88  38 60 00 00 */	li r3, 0
lbl_8045EC8C:
/* 8045EC8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045EC90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045EC94  7C 08 03 A6 */	mtlr r0
/* 8045EC98  38 21 00 20 */	addi r1, r1, 0x20
/* 8045EC9C  4E 80 00 20 */	blr 
