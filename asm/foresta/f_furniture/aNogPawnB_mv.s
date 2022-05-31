lbl_80633F78:
/* 80633F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633F7C  7C 08 02 A6 */	mflr r0
/* 80633F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80633F88  3B E3 01 34 */	addi r31, r3, 0x134
/* 80633F8C  7F E3 FB 78 */	mr r3, r31
/* 80633F90  4B D3 D0 85 */	bl cKF_SkeletonInfo_R_play
/* 80633F94  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80633F98  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80633F9C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80633FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80633FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80633FA8  7C 08 03 A6 */	mtlr r0
/* 80633FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80633FB0  4E 80 00 20 */	blr 
