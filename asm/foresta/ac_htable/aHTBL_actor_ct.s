lbl_805B12DC:
/* 805B12DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B12E0  7C 08 02 A6 */	mflr r0
/* 805B12E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B12E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B12EC  7C 7F 1B 78 */	mr r31, r3
/* 805B12F0  A0 83 00 06 */	lhz r4, 6(r3)
/* 805B12F4  38 04 A7 BA */	addi r0, r4, -22598
/* 805B12F8  90 03 02 B8 */	stw r0, 0x2b8(r3)
/* 805B12FC  48 00 00 9D */	bl aHTBL_set_bgOffset
/* 805B1300  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 805B1304  2C 00 00 02 */	cmpwi r0, 2
/* 805B1308  40 82 00 28 */	bne lbl_805B1330
/* 805B130C  7F E3 FB 78 */	mr r3, r31
/* 805B1310  4B FF FE 39 */	bl aHTBL_SetFork
/* 805B1314  7F E3 FB 78 */	mr r3, r31
/* 805B1318  4B FF FE C9 */	bl aHTBL_SetClip
/* 805B131C  3C 60 80 65 */	lis r3, lit_497@ha /* 0x8064A7C8@ha */
/* 805B1320  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805B1324  C0 03 A7 C8 */	lfs f0, lit_497@l(r3)  /* 0x8064A7C8@l */
/* 805B1328  EC 01 00 2A */	fadds f0, f1, f0
/* 805B132C  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_805B1330:
/* 805B1330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B1334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B1338  7C 08 03 A6 */	mtlr r0
/* 805B133C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B1340  4E 80 00 20 */	blr 
