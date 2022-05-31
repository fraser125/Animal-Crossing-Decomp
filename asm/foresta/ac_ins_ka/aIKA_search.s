lbl_8059C448:
/* 8059C448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C44C  7C 08 02 A6 */	mflr r0
/* 8059C450  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8059C454  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C458  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8059C45C  3C A5 00 02 */	addis r5, r5, 2
/* 8059C460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C464  7C 7F 1B 78 */	mr r31, r3
/* 8059C468  93 C1 00 08 */	stw r30, 8(r1)
/* 8059C46C  7C 9E 23 78 */	mr r30, r4
/* 8059C470  80 05 60 AC */	lwz r0, 0x60ac(r5)
/* 8059C474  28 00 00 00 */	cmplwi r0, 0
/* 8059C478  40 82 00 10 */	bne lbl_8059C488
/* 8059C47C  80 05 60 B0 */	lwz r0, 0x60b0(r5)
/* 8059C480  28 00 00 00 */	cmplwi r0, 0
/* 8059C484  41 82 00 18 */	beq lbl_8059C49C
lbl_8059C488:
/* 8059C488  7F E3 FB 78 */	mr r3, r31
/* 8059C48C  7F C5 F3 78 */	mr r5, r30
/* 8059C490  38 80 00 00 */	li r4, 0
/* 8059C494  48 00 03 2D */	bl aIKA_setupAction
/* 8059C498  48 00 00 78 */	b lbl_8059C510
lbl_8059C49C:
/* 8059C49C  4B FF FE 01 */	bl aIKA_check_condition
/* 8059C4A0  2C 03 00 00 */	cmpwi r3, 0
/* 8059C4A4  40 82 00 18 */	bne lbl_8059C4BC
/* 8059C4A8  7F E3 FB 78 */	mr r3, r31
/* 8059C4AC  7F C5 F3 78 */	mr r5, r30
/* 8059C4B0  38 80 00 02 */	li r4, 2
/* 8059C4B4  48 00 03 0D */	bl aIKA_setupAction
/* 8059C4B8  48 00 00 58 */	b lbl_8059C510
lbl_8059C4BC:
/* 8059C4BC  3C 60 80 65 */	lis r3, lit_522@ha /* 0x8064A0E8@ha */
/* 8059C4C0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8059C4C4  C0 03 A0 E8 */	lfs f0, lit_522@l(r3)  /* 0x8064A0E8@l */
/* 8059C4C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059C4CC  4C 40 13 82 */	cror 2, 0, 2
/* 8059C4D0  40 82 00 18 */	bne lbl_8059C4E8
/* 8059C4D4  7F E3 FB 78 */	mr r3, r31
/* 8059C4D8  7F C5 F3 78 */	mr r5, r30
/* 8059C4DC  38 80 00 04 */	li r4, 4
/* 8059C4E0  48 00 02 E1 */	bl aIKA_setupAction
/* 8059C4E4  48 00 00 2C */	b lbl_8059C510
lbl_8059C4E8:
/* 8059C4E8  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064A0EC@ha */
/* 8059C4EC  7F E3 FB 78 */	mr r3, r31
/* 8059C4F0  C0 04 A0 EC */	lfs f0, lit_523@l(r4)  /* 0x8064A0EC@l */
/* 8059C4F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059C4F8  4C 40 13 82 */	cror 2, 0, 2
/* 8059C4FC  40 82 00 0C */	bne lbl_8059C508
/* 8059C500  38 80 01 00 */	li r4, 0x100
/* 8059C504  48 00 00 08 */	b lbl_8059C50C
lbl_8059C508:
/* 8059C508  38 80 02 00 */	li r4, 0x200
lbl_8059C50C:
/* 8059C50C  4B FF FE 01 */	bl aIKA_calc_angle_search_player
lbl_8059C510:
/* 8059C510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C518  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059C51C  7C 08 03 A6 */	mtlr r0
/* 8059C520  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C524  4E 80 00 20 */	blr 
