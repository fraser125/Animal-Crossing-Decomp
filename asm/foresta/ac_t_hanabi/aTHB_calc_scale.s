lbl_804A8774:
/* 804A8774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8778  7C 08 02 A6 */	mflr r0
/* 804A877C  3C C0 80 69 */	lis r6, aim@ha /* 0x8068EB74@ha */
/* 804A8780  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A8784  54 80 10 3A */	slwi r0, r4, 2
/* 804A8788  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A878C  7C 7F 1B 78 */	mr r31, r3
/* 804A8790  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 804A8794  3C 60 80 64 */	lis r3, data_80645DDC@ha /* 0x80645DDC@ha */
/* 804A8798  38 A3 5D DC */	addi r5, r3, data_80645DDC@l /* 0x80645DDC@l */
/* 804A879C  38 66 EB 74 */	addi r3, r6, aim@l /* 0x8068EB74@l */
/* 804A87A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A87A4  7C 23 04 2E */	lfsx f1, r3, r0
/* 804A87A8  38 61 00 08 */	addi r3, r1, 8
/* 804A87AC  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A87B0  4B F1 24 B9 */	bl chase_f
/* 804A87B4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A87B8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804A87BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A87C0  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804A87C4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A87C8  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804A87CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A87D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A87D4  7C 08 03 A6 */	mtlr r0
/* 804A87D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804A87DC  4E 80 00 20 */	blr 
