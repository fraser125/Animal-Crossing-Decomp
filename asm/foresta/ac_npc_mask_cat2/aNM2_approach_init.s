lbl_80560B44:
/* 80560B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560B48  7C 08 02 A6 */	mflr r0
/* 80560B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560B54  7C 7F 1B 78 */	mr r31, r3
/* 80560B58  4B FF ED 31 */	bl aNM2_set_walk_spd
/* 80560B5C  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80649720@ha */
/* 80560B60  C0 03 97 20 */	lfs f0, lit_540@l(r3)  /* 0x80649720@l */
/* 80560B64  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 80560B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560B70  7C 08 03 A6 */	mtlr r0
/* 80560B74  38 21 00 10 */	addi r1, r1, 0x10
/* 80560B78  4E 80 00 20 */	blr 