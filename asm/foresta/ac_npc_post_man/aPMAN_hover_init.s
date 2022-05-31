lbl_8056EA9C:
/* 8056EA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EAA0  7C 08 02 A6 */	mflr r0
/* 8056EAA4  3C C0 80 65 */	lis r6, data_8064987C@ha /* 0x8064987C@ha */
/* 8056EAA8  7C 65 1B 78 */	mr r5, r3
/* 8056EAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EAB0  3C 60 80 65 */	lis r3, lit_761@ha /* 0x806498C4@ha */
/* 8056EAB4  C0 26 98 7C */	lfs f1, data_8064987C@l(r6)  /* 0x8064987C@l */
/* 8056EAB8  38 C3 98 C4 */	addi r6, r3, lit_761@l /* 0x806498C4@l */
/* 8056EABC  C0 06 00 00 */	lfs f0, 0(r6)
/* 8056EAC0  3C 60 80 57 */	lis r3, aPMAN_eff_wings@ha /* 0x8056E218@ha */
/* 8056EAC4  D0 25 00 7C */	stfs f1, 0x7c(r5)
/* 8056EAC8  38 03 E2 18 */	addi r0, r3, aPMAN_eff_wings@l /* 0x8056E218@l */
/* 8056EACC  38 64 1C C0 */	addi r3, r4, 0x1cc0
/* 8056EAD0  D0 05 00 78 */	stfs f0, 0x78(r5)
/* 8056EAD4  7C 04 03 78 */	mr r4, r0
/* 8056EAD8  4B E4 77 31 */	bl mEnv_regist_nature
/* 8056EADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056EAE0  7C 08 03 A6 */	mtlr r0
/* 8056EAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056EAE8  4E 80 00 20 */	blr 
