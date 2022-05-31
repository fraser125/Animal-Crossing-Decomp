lbl_80560BC4:
/* 80560BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560BC8  7C 08 02 A6 */	mflr r0
/* 80560BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560BD4  7C 7F 1B 78 */	mr r31, r3
/* 80560BD8  4B FF EC DD */	bl aNM2_set_stop_spd
/* 80560BDC  3C 60 80 65 */	lis r3, lit_799@ha /* 0x80649770@ha */
/* 80560BE0  38 00 00 00 */	li r0, 0
/* 80560BE4  C0 03 97 70 */	lfs f0, lit_799@l(r3)  /* 0x80649770@l */
/* 80560BE8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80560BEC  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 80560BF0  B0 1F 09 7A */	sth r0, 0x97a(r31)
/* 80560BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560BFC  7C 08 03 A6 */	mtlr r0
/* 80560C00  38 21 00 10 */	addi r1, r1, 0x10
/* 80560C04  4E 80 00 20 */	blr 
