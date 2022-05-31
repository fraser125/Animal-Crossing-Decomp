lbl_805979D4:
/* 805979D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805979D8  7C 08 02 A6 */	mflr r0
/* 805979DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805979E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805979E4  3B E0 00 00 */	li r31, 0
/* 805979E8  93 C1 00 08 */	stw r30, 8(r1)
/* 805979EC  7C 7E 1B 78 */	mr r30, r3
/* 805979F0  A8 03 02 68 */	lha r0, 0x268(r3)
/* 805979F4  2C 00 FF FF */	cmpwi r0, -1
/* 805979F8  40 82 00 A0 */	bne lbl_80597A98
/* 805979FC  A8 1E 02 6A */	lha r0, 0x26a(r30)
/* 80597A00  2C 00 FF FF */	cmpwi r0, -1
/* 80597A04  40 82 00 94 */	bne lbl_80597A98
/* 80597A08  4B FF FD FD */	bl aIDG_check_ball
/* 80597A0C  2C 03 00 01 */	cmpwi r3, 1
/* 80597A10  40 82 00 14 */	bne lbl_80597A24
/* 80597A14  3C 60 80 65 */	lis r3, lit_509@ha /* 0x80649E84@ha */
/* 80597A18  C0 03 9E 84 */	lfs f0, lit_509@l(r3)  /* 0x80649E84@l */
/* 80597A1C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80597A20  48 00 00 60 */	b lbl_80597A80
lbl_80597A24:
/* 80597A24  7F C3 F3 78 */	mr r3, r30
/* 80597A28  4B FF FE 2D */	bl aIDG_check_player_net
/* 80597A2C  2C 03 00 01 */	cmpwi r3, 1
/* 80597A30  40 82 00 14 */	bne lbl_80597A44
/* 80597A34  3C 60 80 65 */	lis r3, lit_509@ha /* 0x80649E84@ha */
/* 80597A38  C0 03 9E 84 */	lfs f0, lit_509@l(r3)  /* 0x80649E84@l */
/* 80597A3C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80597A40  48 00 00 40 */	b lbl_80597A80
lbl_80597A44:
/* 80597A44  7F C3 F3 78 */	mr r3, r30
/* 80597A48  4B FF FE 8D */	bl aIDG_check_player_scoop
/* 80597A4C  2C 03 00 01 */	cmpwi r3, 1
/* 80597A50  40 82 00 14 */	bne lbl_80597A64
/* 80597A54  3C 60 80 65 */	lis r3, lit_509@ha /* 0x80649E84@ha */
/* 80597A58  C0 03 9E 84 */	lfs f0, lit_509@l(r3)  /* 0x80649E84@l */
/* 80597A5C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80597A60  48 00 00 20 */	b lbl_80597A80
lbl_80597A64:
/* 80597A64  7F C3 F3 78 */	mr r3, r30
/* 80597A68  4B FF FE ED */	bl aIDG_check_player_axe
/* 80597A6C  2C 03 00 01 */	cmpwi r3, 1
/* 80597A70  40 82 00 10 */	bne lbl_80597A80
/* 80597A74  3C 60 80 65 */	lis r3, lit_509@ha /* 0x80649E84@ha */
/* 80597A78  C0 03 9E 84 */	lfs f0, lit_509@l(r3)  /* 0x80649E84@l */
/* 80597A7C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
lbl_80597A80:
/* 80597A80  3C 60 80 65 */	lis r3, lit_510@ha /* 0x80649E88@ha */
/* 80597A84  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 80597A88  C0 03 9E 88 */	lfs f0, lit_510@l(r3)  /* 0x80649E88@l */
/* 80597A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80597A90  40 81 00 08 */	ble lbl_80597A98
/* 80597A94  3B E0 00 01 */	li r31, 1
lbl_80597A98:
/* 80597A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597A9C  7F E3 FB 78 */	mr r3, r31
/* 80597AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597AA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80597AA8  7C 08 03 A6 */	mtlr r0
/* 80597AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80597AB0  4E 80 00 20 */	blr 
