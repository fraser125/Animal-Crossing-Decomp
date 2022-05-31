lbl_8045A1EC:
/* 8045A1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A1F0  7C 08 02 A6 */	mflr r0
/* 8045A1F4  3C 80 80 64 */	lis r4, lit_447@ha /* 0x8064458C@ha */
/* 8045A1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A1FC  C0 04 45 8C */	lfs f0, lit_447@l(r4)  /* 0x8064458C@l */
/* 8045A200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A204  7C 7F 1B 78 */	mr r31, r3
/* 8045A208  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 8045A20C  4B FF FF 9D */	bl aMI_GetThisSceneCullIndex
/* 8045A210  90 7F 01 78 */	stw r3, 0x178(r31)
/* 8045A214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045A21C  7C 08 03 A6 */	mtlr r0
/* 8045A220  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A224  4E 80 00 20 */	blr 
