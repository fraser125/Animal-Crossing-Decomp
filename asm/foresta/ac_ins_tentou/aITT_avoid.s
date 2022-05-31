lbl_8059FE30:
/* 8059FE30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059FE34  7C 08 02 A6 */	mflr r0
/* 8059FE38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059FE3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059FE40  7C 7F 1B 78 */	mr r31, r3
/* 8059FE44  4B FF FC 71 */	bl aITT_anime_proc
/* 8059FE48  3C 80 80 65 */	lis r4, lit_502@ha /* 0x8064A278@ha */
/* 8059FE4C  3C 60 80 65 */	lis r3, lit_503@ha /* 0x8064A27C@ha */
/* 8059FE50  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8059FE54  C0 24 A2 78 */	lfs f1, lit_502@l(r4)  /* 0x8064A278@l */
/* 8059FE58  C0 03 A2 7C */	lfs f0, lit_503@l(r3)  /* 0x8064A27C@l */
/* 8059FE5C  EC 42 00 72 */	fmuls f2, f2, f1
/* 8059FE60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059FE64  40 81 00 08 */	ble lbl_8059FE6C
/* 8059FE68  FC 40 00 90 */	fmr f2, f0
lbl_8059FE6C:
/* 8059FE6C  D0 5F 00 78 */	stfs f2, 0x78(r31)
/* 8059FE70  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059FE74  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8059FE78  40 80 00 20 */	bge lbl_8059FE98
/* 8059FE7C  2C 00 00 18 */	cmpwi r0, 0x18
/* 8059FE80  40 80 00 08 */	bge lbl_8059FE88
/* 8059FE84  48 00 00 14 */	b lbl_8059FE98
lbl_8059FE88:
/* 8059FE88  7F E3 FB 78 */	mr r3, r31
/* 8059FE8C  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059FE90  38 80 00 26 */	li r4, 0x26
/* 8059FE94  48 08 E0 B1 */	bl sAdo_OngenPos
lbl_8059FE98:
/* 8059FE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059FE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059FEA0  7C 08 03 A6 */	mtlr r0
/* 8059FEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059FEA8  4E 80 00 20 */	blr 
