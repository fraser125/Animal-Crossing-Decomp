lbl_8056F848:
/* 8056F848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F84C  7C 08 02 A6 */	mflr r0
/* 8056F850  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F858  7C 9F 23 78 */	mr r31, r4
/* 8056F85C  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8056F860  28 00 00 FF */	cmplwi r0, 0xff
/* 8056F864  40 82 01 14 */	bne lbl_8056F978
/* 8056F868  3C 80 80 65 */	lis r4, lit_675@ha /* 0x806498D8@ha */
/* 8056F86C  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8056F870  C0 04 98 D8 */	lfs f0, lit_675@l(r4)  /* 0x806498D8@l */
/* 8056F874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056F878  40 80 00 44 */	bge lbl_8056F8BC
/* 8056F87C  3C 80 80 65 */	lis r4, lit_676@ha /* 0x806498DC@ha */
/* 8056F880  C0 04 98 DC */	lfs f0, lit_676@l(r4)  /* 0x806498DC@l */
/* 8056F884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056F888  4C 40 13 82 */	cror 2, 0, 2
/* 8056F88C  40 82 00 0C */	bne lbl_8056F898
/* 8056F890  38 00 FF FF */	li r0, -1
/* 8056F894  48 00 00 64 */	b lbl_8056F8F8
lbl_8056F898:
/* 8056F898  3C 80 80 65 */	lis r4, lit_677@ha /* 0x806498E0@ha */
/* 8056F89C  C0 04 98 E0 */	lfs f0, lit_677@l(r4)  /* 0x806498E0@l */
/* 8056F8A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056F8A4  4C 40 13 82 */	cror 2, 0, 2
/* 8056F8A8  40 82 00 0C */	bne lbl_8056F8B4
/* 8056F8AC  38 00 00 03 */	li r0, 3
/* 8056F8B0  48 00 00 48 */	b lbl_8056F8F8
lbl_8056F8B4:
/* 8056F8B4  38 00 00 02 */	li r0, 2
/* 8056F8B8  48 00 00 40 */	b lbl_8056F8F8
lbl_8056F8BC:
/* 8056F8BC  3C 80 80 65 */	lis r4, lit_678@ha /* 0x806498E4@ha */
/* 8056F8C0  C0 04 98 E4 */	lfs f0, lit_678@l(r4)  /* 0x806498E4@l */
/* 8056F8C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056F8C8  4C 41 13 82 */	cror 2, 1, 2
/* 8056F8CC  40 82 00 0C */	bne lbl_8056F8D8
/* 8056F8D0  38 00 FF FF */	li r0, -1
/* 8056F8D4  48 00 00 24 */	b lbl_8056F8F8
lbl_8056F8D8:
/* 8056F8D8  3C 80 80 65 */	lis r4, lit_679@ha /* 0x806498E8@ha */
/* 8056F8DC  C0 04 98 E8 */	lfs f0, lit_679@l(r4)  /* 0x806498E8@l */
/* 8056F8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056F8E4  4C 41 13 82 */	cror 2, 1, 2
/* 8056F8E8  40 82 00 0C */	bne lbl_8056F8F4
/* 8056F8EC  38 00 00 01 */	li r0, 1
/* 8056F8F0  48 00 00 08 */	b lbl_8056F8F8
lbl_8056F8F4:
/* 8056F8F4  38 00 00 00 */	li r0, 0
lbl_8056F8F8:
/* 8056F8F8  2C 00 FF FF */	cmpwi r0, -1
/* 8056F8FC  40 82 00 4C */	bne lbl_8056F948
/* 8056F900  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056F904  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056F908  3C 84 00 02 */	addis r4, r4, 2
/* 8056F90C  80 84 60 AC */	lwz r4, 0x60ac(r4)
/* 8056F910  28 04 00 00 */	cmplwi r4, 0
/* 8056F914  41 82 00 64 */	beq lbl_8056F978
/* 8056F918  80 04 00 04 */	lwz r0, 4(r4)
/* 8056F91C  2C 00 00 01 */	cmpwi r0, 1
/* 8056F920  40 82 00 58 */	bne lbl_8056F978
/* 8056F924  80 84 00 00 */	lwz r4, 0(r4)
/* 8056F928  28 04 00 00 */	cmplwi r4, 0
/* 8056F92C  41 82 00 4C */	beq lbl_8056F978
/* 8056F930  38 00 00 00 */	li r0, 0
/* 8056F934  90 04 01 88 */	stw r0, 0x188(r4)
/* 8056F938  4B E0 4B 09 */	bl Actor_delete
/* 8056F93C  38 00 00 00 */	li r0, 0
/* 8056F940  98 1F 1F 51 */	stb r0, 0x1f51(r31)
/* 8056F944  48 00 00 34 */	b lbl_8056F978
lbl_8056F948:
/* 8056F948  3C A0 80 6C */	lis r5, moveX_646@ha /* 0x806BEDEC@ha */
/* 8056F94C  3C 80 80 6C */	lis r4, moveZ_647@ha /* 0x806BEDF4@ha */
/* 8056F950  38 C5 ED EC */	addi r6, r5, moveX_646@l /* 0x806BEDEC@l */
/* 8056F954  54 00 08 3C */	slwi r0, r0, 1
/* 8056F958  38 A4 ED F4 */	addi r5, r4, moveZ_647@l /* 0x806BEDF4@l */
/* 8056F95C  7D 06 02 AE */	lhax r8, r6, r0
/* 8056F960  7D 25 02 AE */	lhax r9, r5, r0
/* 8056F964  38 80 00 04 */	li r4, 4
/* 8056F968  38 A0 00 02 */	li r5, 2
/* 8056F96C  38 C0 00 03 */	li r6, 3
/* 8056F970  38 E0 00 00 */	li r7, 0
/* 8056F974  4B FF F6 75 */	bl func_8056EFE8
lbl_8056F978:
/* 8056F978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F97C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F980  7C 08 03 A6 */	mtlr r0
/* 8056F984  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F988  4E 80 00 20 */	blr 
