lbl_8058EB54:
/* 8058EB54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058EB58  7C 08 02 A6 */	mflr r0
/* 8058EB5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058EB60  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8058EB64  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8058EB68  39 61 00 30 */	addi r11, r1, 0x30
/* 8058EB6C  4B B0 C3 69 */	bl func_8009AED4
/* 8058EB70  7C 7F 1B 78 */	mr r31, r3
/* 8058EB74  7C 9D 23 78 */	mr r29, r4
/* 8058EB78  38 60 00 0E */	li r3, 0xe
/* 8058EB7C  38 80 00 09 */	li r4, 9
/* 8058EB80  4B E0 F2 4D */	bl mEv_get_save_area
/* 8058EB84  7C 7E 1B 79 */	or. r30, r3, r3
/* 8058EB88  41 82 00 F0 */	beq lbl_8058EC78
/* 8058EB8C  39 20 FF FF */	li r9, -1
/* 8058EB90  3C 60 80 65 */	lis r3, lit_555@ha /* 0x80649BF4@ha */
/* 8058EB94  91 21 00 08 */	stw r9, 8(r1)
/* 8058EB98  38 A3 9B F4 */	addi r5, r3, lit_555@l /* 0x80649BF4@l */
/* 8058EB9C  38 00 00 00 */	li r0, 0
/* 8058EBA0  3C 80 80 65 */	lis r4, lit_554@ha /* 0x80649BF0@ha */
/* 8058EBA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058EBA8  38 7D 1D A8 */	addi r3, r29, 0x1da8
/* 8058EBAC  C0 44 9B F0 */	lfs f2, lit_554@l(r4)  /* 0x80649BF0@l */
/* 8058EBB0  7F A4 EB 78 */	mr r4, r29
/* 8058EBB4  91 21 00 10 */	stw r9, 0x10(r1)
/* 8058EBB8  38 C0 00 00 */	li r6, 0
/* 8058EBBC  C0 65 00 00 */	lfs f3, 0(r5)
/* 8058EBC0  38 A0 00 A7 */	li r5, 0xa7
/* 8058EBC4  91 21 00 14 */	stw r9, 0x14(r1)
/* 8058EBC8  38 E0 00 00 */	li r7, 0
/* 8058EBCC  39 00 00 00 */	li r8, 0
/* 8058EBD0  39 40 FF FF */	li r10, -1
/* 8058EBD4  91 21 00 18 */	stw r9, 0x18(r1)
/* 8058EBD8  39 20 FF FF */	li r9, -1
/* 8058EBDC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8058EBE0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8058EBE4  EC 22 08 2A */	fadds f1, f2, f1
/* 8058EBE8  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8058EBEC  EC 63 00 2A */	fadds f3, f3, f0
/* 8058EBF0  4B DE 6B 59 */	bl Actor_info_make_actor
/* 8058EBF4  28 03 00 00 */	cmplwi r3, 0
/* 8058EBF8  90 7F 09 9C */	stw r3, 0x99c(r31)
/* 8058EBFC  41 82 00 7C */	beq lbl_8058EC78
/* 8058EC00  3C 80 80 65 */	lis r4, lit_484@ha /* 0x80649BE8@ha */
/* 8058EC04  38 60 00 0E */	li r3, 0xe
/* 8058EC08  38 A4 9B E8 */	addi r5, r4, lit_484@l /* 0x80649BE8@l */
/* 8058EC0C  38 80 00 09 */	li r4, 9
/* 8058EC10  C3 E5 00 00 */	lfs f31, 0(r5)
/* 8058EC14  4B E0 F1 B9 */	bl mEv_get_save_area
/* 8058EC18  3C 80 80 65 */	lis r4, lit_484@ha /* 0x80649BE8@ha */
/* 8058EC1C  D3 E3 00 00 */	stfs f31, 0(r3)
/* 8058EC20  C0 04 9B E8 */	lfs f0, lit_484@l(r4)  /* 0x80649BE8@l */
/* 8058EC24  38 C0 00 00 */	li r6, 0
/* 8058EC28  38 00 00 01 */	li r0, 1
/* 8058EC2C  7F E3 FB 78 */	mr r3, r31
/* 8058EC30  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8058EC34  7F A4 EB 78 */	mr r4, r29
/* 8058EC38  38 A0 00 00 */	li r5, 0
/* 8058EC3C  B0 DE 00 12 */	sth r6, 0x12(r30)
/* 8058EC40  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 8058EC44  48 00 01 4D */	bl aTNN0_setup_think_proc
/* 8058EC48  3C 80 80 65 */	lis r4, lit_554@ha /* 0x80649BF0@ha */
/* 8058EC4C  3C 60 80 65 */	lis r3, lit_556@ha /* 0x80649BF8@ha */
/* 8058EC50  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8058EC54  38 00 00 3C */	li r0, 0x3c
/* 8058EC58  C0 24 9B F0 */	lfs f1, lit_554@l(r4)  /* 0x80649BF0@l */
/* 8058EC5C  C0 03 9B F8 */	lfs f0, lit_556@l(r3)  /* 0x80649BF8@l */
/* 8058EC60  EC 22 08 2A */	fadds f1, f2, f1
/* 8058EC64  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8058EC68  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8058EC6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8058EC70  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8058EC74  B0 1F 09 46 */	sth r0, 0x946(r31)
lbl_8058EC78:
/* 8058EC78  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8058EC7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8058EC80  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8058EC84  4B B0 C2 9D */	bl func_8009AF20
/* 8058EC88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058EC8C  7C 08 03 A6 */	mtlr r0
/* 8058EC90  38 21 00 40 */	addi r1, r1, 0x40
/* 8058EC94  4E 80 00 20 */	blr 
