lbl_80460E2C:
/* 80460E2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80460E30  7C 08 02 A6 */	mflr r0
/* 80460E34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80460E38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80460E3C  7C 7F 1B 78 */	mr r31, r3
/* 80460E40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80460E44  7C 9E 23 78 */	mr r30, r4
/* 80460E48  4B FF B8 31 */	bl get_now_mind_flag
/* 80460E4C  B0 7F 00 8E */	sth r3, 0x8e(r31)
/* 80460E50  7F E3 FB 78 */	mr r3, r31
/* 80460E54  7F C4 F3 78 */	mr r4, r30
/* 80460E58  81 9F 00 04 */	lwz r12, 4(r31)
/* 80460E5C  7D 89 03 A6 */	mtctr r12
/* 80460E60  4E 80 04 21 */	bctrl 
/* 80460E64  3C 60 80 46 */	lis r3, minsect_tonbo_rock_process@ha /* 0x80460250@ha */
/* 80460E68  80 9F 00 04 */	lwz r4, 4(r31)
/* 80460E6C  38 03 02 50 */	addi r0, r3, minsect_tonbo_rock_process@l /* 0x80460250@l */
/* 80460E70  7C 04 00 40 */	cmplw r4, r0
/* 80460E74  41 82 00 4C */	beq lbl_80460EC0
/* 80460E78  3C 60 80 46 */	lis r3, minsect_tonbo_rock_wait_process@ha /* 0x80460864@ha */
/* 80460E7C  38 03 08 64 */	addi r0, r3, minsect_tonbo_rock_wait_process@l /* 0x80460864@l */
/* 80460E80  7C 04 00 40 */	cmplw r4, r0
/* 80460E84  41 82 00 3C */	beq lbl_80460EC0
/* 80460E88  3C 60 80 46 */	lis r3, minsect_tonbo_fly_process@ha /* 0x80460C30@ha */
/* 80460E8C  38 03 0C 30 */	addi r0, r3, minsect_tonbo_fly_process@l /* 0x80460C30@l */
/* 80460E90  7C 04 00 40 */	cmplw r4, r0
/* 80460E94  41 82 00 2C */	beq lbl_80460EC0
/* 80460E98  A8 7F 00 76 */	lha r3, 0x76(r31)
/* 80460E9C  38 03 03 8E */	addi r0, r3, 0x38e
/* 80460EA0  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 80460EA4  A8 7F 00 76 */	lha r3, 0x76(r31)
/* 80460EA8  4B F5 9C 49 */	bl sin_s
/* 80460EAC  3C 60 80 64 */	lis r3, lit_1111@ha /* 0x8064470C@ha */
/* 80460EB0  C0 03 47 0C */	lfs f0, lit_1111@l(r3)  /* 0x8064470C@l */
/* 80460EB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80460EB8  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80460EBC  48 00 00 20 */	b lbl_80460EDC
lbl_80460EC0:
/* 80460EC0  3C 80 80 64 */	lis r4, lit_1584@ha /* 0x8064475C@ha */
/* 80460EC4  38 7F 00 58 */	addi r3, r31, 0x58
/* 80460EC8  C0 24 47 5C */	lfs f1, lit_1584@l(r4)  /* 0x8064475C@l */
/* 80460ECC  FC 40 08 90 */	fmr f2, f1
/* 80460ED0  4B F5 A4 09 */	bl add_calc0
/* 80460ED4  38 00 00 00 */	li r0, 0
/* 80460ED8  B0 1F 00 76 */	sth r0, 0x76(r31)
lbl_80460EDC:
/* 80460EDC  7F E3 FB 78 */	mr r3, r31
/* 80460EE0  4B FF B2 75 */	bl minsect_tree_ObjCheck
/* 80460EE4  3C 60 80 64 */	lis r3, lit_1585@ha /* 0x80644760@ha */
/* 80460EE8  3C 80 80 64 */	lis r4, lit_936@ha /* 0x806446C8@ha */
/* 80460EEC  38 A3 47 60 */	addi r5, r3, lit_1585@l /* 0x80644760@l */
/* 80460EF0  C0 44 46 C8 */	lfs f2, lit_936@l(r4)  /* 0x806446C8@l */
/* 80460EF4  C0 25 00 00 */	lfs f1, 0(r5)
/* 80460EF8  7F E3 FB 78 */	mr r3, r31
/* 80460EFC  4B FF AC 9D */	bl minsect_fly_BGCheck
/* 80460F00  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80460F04  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80460F08  41 82 00 10 */	beq lbl_80460F18
/* 80460F0C  3C 60 80 64 */	lis r3, lit_1585@ha /* 0x80644760@ha */
/* 80460F10  C0 03 47 60 */	lfs f0, lit_1585@l(r3)  /* 0x80644760@l */
/* 80460F14  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_80460F18:
/* 80460F18  A8 7F 00 8C */	lha r3, 0x8c(r31)
/* 80460F1C  70 60 00 9E */	andi. r0, r3, 0x9e
/* 80460F20  41 82 00 08 */	beq lbl_80460F28
/* 80460F24  B0 7F 00 72 */	sth r3, 0x72(r31)
lbl_80460F28:
/* 80460F28  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80460F2C  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 80460F30  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80460F34  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 80460F38  EC 01 00 2A */	fadds f0, f1, f0
/* 80460F3C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80460F40  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80460F44  80 1F 00 00 */	lwz r0, 0(r31)
/* 80460F48  FC 00 00 1E */	fctiwz f0, f0
/* 80460F4C  54 00 10 3A */	slwi r0, r0, 2
/* 80460F50  7C 63 00 2E */	lwzx r3, r3, r0
/* 80460F54  D8 01 00 08 */	stfd f0, 8(r1)
/* 80460F58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80460F5C  54 00 10 3A */	slwi r0, r0, 2
/* 80460F60  7C 03 00 2E */	lwzx r0, r3, r0
/* 80460F64  28 00 00 00 */	cmplwi r0, 0
/* 80460F68  40 82 00 10 */	bne lbl_80460F78
/* 80460F6C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80460F70  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 80460F74  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80460F78:
/* 80460F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80460F7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80460F80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80460F84  7C 08 03 A6 */	mtlr r0
/* 80460F88  38 21 00 20 */	addi r1, r1, 0x20
/* 80460F8C  4E 80 00 20 */	blr 
