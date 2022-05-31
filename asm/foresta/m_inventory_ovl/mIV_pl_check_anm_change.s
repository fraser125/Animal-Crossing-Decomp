lbl_805E1E54:
/* 805E1E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E1E58  7C 08 02 A6 */	mflr r0
/* 805E1E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E1E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E1E64  93 C1 00 08 */	stw r30, 8(r1)
/* 805E1E68  7C 7E 1B 78 */	mr r30, r3
/* 805E1E6C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E1E70  A8 1F 00 08 */	lha r0, 8(r31)
/* 805E1E74  A8 7F 00 04 */	lha r3, 4(r31)
/* 805E1E78  7C 00 18 00 */	cmpw r0, r3
/* 805E1E7C  41 82 00 88 */	beq lbl_805E1F04
/* 805E1E80  2C 00 00 03 */	cmpwi r0, 3
/* 805E1E84  40 82 00 10 */	bne lbl_805E1E94
/* 805E1E88  3C 60 80 65 */	lis r3, lit_801@ha /* 0x8064B428@ha */
/* 805E1E8C  C0 23 B4 28 */	lfs f1, lit_801@l(r3)  /* 0x8064B428@l */
/* 805E1E90  48 00 00 64 */	b lbl_805E1EF4
lbl_805E1E94:
/* 805E1E94  2C 00 00 02 */	cmpwi r0, 2
/* 805E1E98  40 82 00 10 */	bne lbl_805E1EA8
/* 805E1E9C  3C 60 80 65 */	lis r3, lit_802@ha /* 0x8064B42C@ha */
/* 805E1EA0  C0 23 B4 2C */	lfs f1, lit_802@l(r3)  /* 0x8064B42C@l */
/* 805E1EA4  48 00 00 50 */	b lbl_805E1EF4
lbl_805E1EA8:
/* 805E1EA8  2C 00 00 01 */	cmpwi r0, 1
/* 805E1EAC  40 82 00 10 */	bne lbl_805E1EBC
/* 805E1EB0  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064B430@ha */
/* 805E1EB4  C0 23 B4 30 */	lfs f1, lit_803@l(r3)  /* 0x8064B430@l */
/* 805E1EB8  48 00 00 3C */	b lbl_805E1EF4
lbl_805E1EBC:
/* 805E1EBC  2C 03 00 02 */	cmpwi r3, 2
/* 805E1EC0  40 82 00 10 */	bne lbl_805E1ED0
/* 805E1EC4  3C 60 80 65 */	lis r3, lit_802@ha /* 0x8064B42C@ha */
/* 805E1EC8  C0 23 B4 2C */	lfs f1, lit_802@l(r3)  /* 0x8064B42C@l */
/* 805E1ECC  48 00 00 28 */	b lbl_805E1EF4
lbl_805E1ED0:
/* 805E1ED0  2C 03 00 03 */	cmpwi r3, 3
/* 805E1ED4  40 82 00 10 */	bne lbl_805E1EE4
/* 805E1ED8  3C 60 80 65 */	lis r3, lit_802@ha /* 0x8064B42C@ha */
/* 805E1EDC  C0 23 B4 2C */	lfs f1, lit_802@l(r3)  /* 0x8064B42C@l */
/* 805E1EE0  48 00 00 14 */	b lbl_805E1EF4
lbl_805E1EE4:
/* 805E1EE4  4B FF F4 E1 */	bl mIV_get_player_item_anime_id
/* 805E1EE8  3C 80 80 65 */	lis r4, lit_804@ha /* 0x8064B434@ha */
/* 805E1EEC  B0 7F 00 06 */	sth r3, 6(r31)
/* 805E1EF0  C0 24 B4 34 */	lfs f1, lit_804@l(r4)  /* 0x8064B434@l */
lbl_805E1EF4:
/* 805E1EF4  A8 1F 00 08 */	lha r0, 8(r31)
/* 805E1EF8  7F C3 F3 78 */	mr r3, r30
/* 805E1EFC  B0 1F 00 04 */	sth r0, 4(r31)
/* 805E1F00  4B FF F9 BD */	bl mIV_pl_load_player_anime
lbl_805E1F04:
/* 805E1F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E1F08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E1F0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E1F10  7C 08 03 A6 */	mtlr r0
/* 805E1F14  38 21 00 10 */	addi r1, r1, 0x10
/* 805E1F18  4E 80 00 20 */	blr 
