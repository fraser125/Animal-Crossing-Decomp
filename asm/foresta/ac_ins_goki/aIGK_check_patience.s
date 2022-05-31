lbl_80599DCC:
/* 80599DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599DD0  7C 08 02 A6 */	mflr r0
/* 80599DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599DDC  3B E0 00 00 */	li r31, 0
/* 80599DE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80599DE4  7C 7E 1B 78 */	mr r30, r3
/* 80599DE8  4B FF FE 05 */	bl aIGK_check_tree_shaken
/* 80599DEC  2C 03 00 01 */	cmpwi r3, 1
/* 80599DF0  40 82 00 14 */	bne lbl_80599E04
/* 80599DF4  3C 60 80 65 */	lis r3, lit_489@ha /* 0x80649F64@ha */
/* 80599DF8  C0 03 9F 64 */	lfs f0, lit_489@l(r3)  /* 0x80649F64@l */
/* 80599DFC  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80599E00  48 00 00 8C */	b lbl_80599E8C
lbl_80599E04:
/* 80599E04  7F C3 F3 78 */	mr r3, r30
/* 80599E08  4B FF FE 69 */	bl aIGK_check_ball
/* 80599E0C  2C 03 00 01 */	cmpwi r3, 1
/* 80599E10  40 82 00 14 */	bne lbl_80599E24
/* 80599E14  3C 60 80 65 */	lis r3, lit_489@ha /* 0x80649F64@ha */
/* 80599E18  C0 03 9F 64 */	lfs f0, lit_489@l(r3)  /* 0x80649F64@l */
/* 80599E1C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80599E20  48 00 00 6C */	b lbl_80599E8C
lbl_80599E24:
/* 80599E24  7F C3 F3 78 */	mr r3, r30
/* 80599E28  4B FF FE 99 */	bl aIGK_check_player_net
/* 80599E2C  2C 03 00 01 */	cmpwi r3, 1
/* 80599E30  40 82 00 14 */	bne lbl_80599E44
/* 80599E34  3C 60 80 65 */	lis r3, lit_489@ha /* 0x80649F64@ha */
/* 80599E38  C0 03 9F 64 */	lfs f0, lit_489@l(r3)  /* 0x80649F64@l */
/* 80599E3C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80599E40  48 00 00 4C */	b lbl_80599E8C
lbl_80599E44:
/* 80599E44  7F C3 F3 78 */	mr r3, r30
/* 80599E48  4B FF FF 05 */	bl aIGK_check_player_scoop
/* 80599E4C  2C 03 00 01 */	cmpwi r3, 1
/* 80599E50  40 82 00 14 */	bne lbl_80599E64
/* 80599E54  3C 60 80 65 */	lis r3, lit_489@ha /* 0x80649F64@ha */
/* 80599E58  C0 03 9F 64 */	lfs f0, lit_489@l(r3)  /* 0x80649F64@l */
/* 80599E5C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80599E60  48 00 00 2C */	b lbl_80599E8C
lbl_80599E64:
/* 80599E64  80 1E 02 30 */	lwz r0, 0x230(r30)
/* 80599E68  2C 00 00 06 */	cmpwi r0, 6
/* 80599E6C  40 82 00 20 */	bne lbl_80599E8C
/* 80599E70  80 7E 02 40 */	lwz r3, 0x240(r30)
/* 80599E74  A0 03 00 00 */	lhz r0, 0(r3)
/* 80599E78  28 00 2F 03 */	cmplwi r0, 0x2f03
/* 80599E7C  41 82 00 10 */	beq lbl_80599E8C
/* 80599E80  3C 60 80 65 */	lis r3, lit_489@ha /* 0x80649F64@ha */
/* 80599E84  C0 03 9F 64 */	lfs f0, lit_489@l(r3)  /* 0x80649F64@l */
/* 80599E88  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
lbl_80599E8C:
/* 80599E8C  3C 60 80 65 */	lis r3, lit_490@ha /* 0x80649F68@ha */
/* 80599E90  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 80599E94  C0 03 9F 68 */	lfs f0, lit_490@l(r3)  /* 0x80649F68@l */
/* 80599E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80599E9C  4C 41 13 82 */	cror 2, 1, 2
/* 80599EA0  40 82 00 08 */	bne lbl_80599EA8
/* 80599EA4  3B E0 00 01 */	li r31, 1
lbl_80599EA8:
/* 80599EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599EAC  7F E3 FB 78 */	mr r3, r31
/* 80599EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599EB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80599EB8  7C 08 03 A6 */	mtlr r0
/* 80599EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80599EC0  4E 80 00 20 */	blr 
