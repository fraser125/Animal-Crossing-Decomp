lbl_80553D98:
/* 80553D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553D9C  7C 08 02 A6 */	mflr r0
/* 80553DA0  3C A0 80 65 */	lis r5, lit_544@ha /* 0x8064954C@ha */
/* 80553DA4  3C C0 80 65 */	lis r6, lit_793@ha /* 0x806495A0@ha */
/* 80553DA8  38 E5 95 4C */	addi r7, r5, lit_544@l /* 0x8064954C@l */
/* 80553DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553DB0  C0 27 00 00 */	lfs f1, 0(r7)
/* 80553DB4  38 A0 00 15 */	li r5, 0x15
/* 80553DB8  C0 06 95 A0 */	lfs f0, lit_793@l(r6)  /* 0x806495A0@l */
/* 80553DBC  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80553DC0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80553DC4  48 00 0B 45 */	bl aNGD_setupAction
/* 80553DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553DCC  7C 08 03 A6 */	mtlr r0
/* 80553DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80553DD4  4E 80 00 20 */	blr 
