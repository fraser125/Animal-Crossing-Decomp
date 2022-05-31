lbl_8053EB10:
/* 8053EB10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053EB14  7C 08 02 A6 */	mflr r0
/* 8053EB18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053EB1C  39 61 00 30 */	addi r11, r1, 0x30
/* 8053EB20  4B B5 C3 B5 */	bl func_8009AED4
/* 8053EB24  7C 7E 1B 78 */	mr r30, r3
/* 8053EB28  3B E0 00 01 */	li r31, 1
/* 8053EB2C  4B FF FF A5 */	bl aNPC_check_arrive_destination
/* 8053EB30  2C 03 00 01 */	cmpwi r3, 1
/* 8053EB34  40 82 00 E8 */	bne lbl_8053EC1C
/* 8053EB38  88 1E 07 DC */	lbz r0, 0x7dc(r30)
/* 8053EB3C  2C 00 00 04 */	cmpwi r0, 4
/* 8053EB40  41 82 00 1C */	beq lbl_8053EB5C
/* 8053EB44  40 80 00 D4 */	bge lbl_8053EC18
/* 8053EB48  2C 00 00 02 */	cmpwi r0, 2
/* 8053EB4C  40 80 00 CC */	bge lbl_8053EC18
/* 8053EB50  2C 00 00 00 */	cmpwi r0, 0
/* 8053EB54  40 80 00 08 */	bge lbl_8053EB5C
/* 8053EB58  48 00 00 C0 */	b lbl_8053EC18
lbl_8053EB5C:
/* 8053EB5C  88 1E 09 16 */	lbz r0, 0x916(r30)
/* 8053EB60  3C 80 43 30 */	lis r4, 0x4330
/* 8053EB64  3C C0 81 1F */	lis r6, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053EB68  3C A0 80 65 */	lis r5, lit_1795@ha /* 0x80649414@ha */
/* 8053EB6C  1C E0 00 0C */	mulli r7, r0, 0xc
/* 8053EB70  83 A6 BD 30 */	lwz r29, data_811EBD30@l(r6)  /* 0x811EBD30@l */
/* 8053EB74  3C 60 80 65 */	lis r3, lit_811@ha /* 0x80649384@ha */
/* 8053EB78  90 81 00 08 */	stw r4, 8(r1)
/* 8053EB7C  39 27 09 D0 */	addi r9, r7, 0x9d0
/* 8053EB80  38 C3 93 84 */	addi r6, r3, lit_811@l /* 0x80649384@l */
/* 8053EB84  7D 3D 4A 14 */	add r9, r29, r9
/* 8053EB88  38 E5 94 14 */	addi r7, r5, lit_1795@l /* 0x80649414@l */
/* 8053EB8C  80 A9 00 00 */	lwz r5, 0(r9)
/* 8053EB90  3C 60 80 65 */	lis r3, lit_1794@ha /* 0x80649410@ha */
/* 8053EB94  80 09 00 04 */	lwz r0, 4(r9)
/* 8053EB98  39 03 94 10 */	addi r8, r3, lit_1794@l /* 0x80649410@l */
/* 8053EB9C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8053EBA0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8053EBA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053EBA8  C8 46 00 00 */	lfd f2, 0(r6)
/* 8053EBAC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8053EBB0  7F C3 F3 78 */	mr r3, r30
/* 8053EBB4  C0 67 00 00 */	lfs f3, 0(r7)
/* 8053EBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053EBBC  C8 21 00 08 */	lfd f1, 8(r1)
/* 8053EBC0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8053EBC4  EC 21 10 28 */	fsubs f1, f1, f2
/* 8053EBC8  C0 88 00 00 */	lfs f4, 0(r8)
/* 8053EBCC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8053EBD0  EC 23 08 2A */	fadds f1, f3, f1
/* 8053EBD4  EC 03 00 2A */	fadds f0, f3, f0
/* 8053EBD8  EC 24 00 72 */	fmuls f1, f4, f1
/* 8053EBDC  EC 44 00 32 */	fmuls f2, f4, f0
/* 8053EBE0  4B FF EF 21 */	bl aNPC_set_avoid_pos
/* 8053EBE4  80 1D 0A C0 */	lwz r0, 0xac0(r29)
/* 8053EBE8  88 7E 09 16 */	lbz r3, 0x916(r30)
/* 8053EBEC  7C 00 18 00 */	cmpw r0, r3
/* 8053EBF0  40 82 00 1C */	bne lbl_8053EC0C
/* 8053EBF4  C0 3E 09 0C */	lfs f1, 0x90c(r30)
/* 8053EBF8  7F C3 F3 78 */	mr r3, r30
/* 8053EBFC  C0 5E 09 10 */	lfs f2, 0x910(r30)
/* 8053EC00  4B FF EF 29 */	bl aNPC_set_dst_pos
/* 8053EC04  3B E0 00 00 */	li r31, 0
/* 8053EC08  48 00 00 14 */	b lbl_8053EC1C
lbl_8053EC0C:
/* 8053EC0C  38 03 00 01 */	addi r0, r3, 1
/* 8053EC10  98 1E 09 16 */	stb r0, 0x916(r30)
/* 8053EC14  48 00 00 08 */	b lbl_8053EC1C
lbl_8053EC18:
/* 8053EC18  3B E0 00 00 */	li r31, 0
lbl_8053EC1C:
/* 8053EC1C  7F E3 FB 78 */	mr r3, r31
/* 8053EC20  39 61 00 30 */	addi r11, r1, 0x30
/* 8053EC24  4B B5 C2 FD */	bl func_8009AF20
/* 8053EC28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053EC2C  7C 08 03 A6 */	mtlr r0
/* 8053EC30  38 21 00 30 */	addi r1, r1, 0x30
/* 8053EC34  4E 80 00 20 */	blr 
