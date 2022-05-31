lbl_8048FCE8:
/* 8048FCE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048FCEC  7C 08 02 A6 */	mflr r0
/* 8048FCF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048FCF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8048FCF8  4B C0 B1 D9 */	bl func_8009AED0
/* 8048FCFC  3C 80 80 69 */	lis r4, rand_max_table@ha /* 0x8068B304@ha */
/* 8048FD00  3B A3 00 02 */	addi r29, r3, 2
/* 8048FD04  3B E4 B3 04 */	addi r31, r4, rand_max_table@l /* 0x8068B304@l */
/* 8048FD08  3B C0 00 00 */	li r30, 0
/* 8048FD0C  3B 80 00 00 */	li r28, 0
lbl_8048FD10:
/* 8048FD10  7C 3F E4 2E */	lfsx f1, r31, r28
/* 8048FD14  88 DD 00 00 */	lbz r6, 0(r29)
/* 8048FD18  FC 00 08 1E */	fctiwz f0, f1
/* 8048FD1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8048FD20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8048FD24  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8048FD28  7C 06 00 40 */	cmplw r6, r0
/* 8048FD2C  40 80 00 30 */	bge lbl_8048FD5C
/* 8048FD30  3C 60 80 64 */	lis r3, lit_1206@ha /* 0x80644C44@ha */
/* 8048FD34  3C 80 80 69 */	lis r4, base_str_no_1192@ha /* 0x8068B2F0@ha */
/* 8048FD38  C0 03 4C 44 */	lfs f0, lit_1206@l(r3)  /* 0x80644C44@l */
/* 8048FD3C  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FD40  38 84 B2 F0 */	addi r4, r4, base_str_no_1192@l /* 0x8068B2F0@l */
/* 8048FD44  EC 21 00 28 */	fsubs f1, f1, f0
/* 8048FD48  38 65 EB E0 */	addi r3, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FD4C  7C A4 E0 2E */	lwzx r5, r4, r28
/* 8048FD50  7F C4 F3 78 */	mr r4, r30
/* 8048FD54  4B FF FE F5 */	bl aQMgr_set_random_string
/* 8048FD58  48 00 00 24 */	b lbl_8048FD7C
lbl_8048FD5C:
/* 8048FD5C  3C 60 80 69 */	lis r3, base_str_no_1192@ha /* 0x8068B2F0@ha */
/* 8048FD60  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FD64  38 83 B2 F0 */	addi r4, r3, base_str_no_1192@l /* 0x8068B2F0@l */
/* 8048FD68  38 C0 FF FF */	li r6, -1
/* 8048FD6C  38 65 EB E0 */	addi r3, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FD70  7C A4 E0 2E */	lwzx r5, r4, r28
/* 8048FD74  7F C4 F3 78 */	mr r4, r30
/* 8048FD78  4B FF FE D1 */	bl aQMgr_set_random_string
lbl_8048FD7C:
/* 8048FD7C  3B DE 00 01 */	addi r30, r30, 1
/* 8048FD80  98 7D 00 00 */	stb r3, 0(r29)
/* 8048FD84  2C 1E 00 05 */	cmpwi r30, 5
/* 8048FD88  3B BD 00 01 */	addi r29, r29, 1
/* 8048FD8C  3B 9C 00 04 */	addi r28, r28, 4
/* 8048FD90  41 80 FF 80 */	blt lbl_8048FD10
/* 8048FD94  39 61 00 20 */	addi r11, r1, 0x20
/* 8048FD98  4B C0 B1 85 */	bl func_8009AF1C
/* 8048FD9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048FDA0  7C 08 03 A6 */	mtlr r0
/* 8048FDA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8048FDA8  4E 80 00 20 */	blr 
