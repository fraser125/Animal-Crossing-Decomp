lbl_803822D0:
/* 803822D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803822D4  7C 08 02 A6 */	mflr r0
/* 803822D8  3C 80 80 64 */	lis r4, lit_826@ha /* 0x8064145C@ha */
/* 803822DC  38 63 1C 0C */	addi r3, r3, 0x1c0c
/* 803822E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803822E4  C0 24 14 5C */	lfs f1, lit_826@l(r4)  /* 0x8064145C@l */
/* 803822E8  4B FF CE 9D */	bl Camera2_AddCullTimer
/* 803822EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803822F0  7C 08 03 A6 */	mtlr r0
/* 803822F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803822F8  4E 80 00 20 */	blr 
