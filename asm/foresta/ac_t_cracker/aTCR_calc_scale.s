lbl_804A812C:
/* 804A812C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8130  7C 08 02 A6 */	mflr r0
/* 804A8134  3C C0 80 69 */	lis r6, aim@ha /* 0x8068EAEC@ha */
/* 804A8138  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A813C  54 80 10 3A */	slwi r0, r4, 2
/* 804A8140  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A8144  7C 7F 1B 78 */	mr r31, r3
/* 804A8148  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 804A814C  3C 60 80 64 */	lis r3, data_80645DBC@ha /* 0x80645DBC@ha */
/* 804A8150  38 A3 5D BC */	addi r5, r3, data_80645DBC@l /* 0x80645DBC@l */
/* 804A8154  38 66 EA EC */	addi r3, r6, aim@l /* 0x8068EAEC@l */
/* 804A8158  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A815C  7C 23 04 2E */	lfsx f1, r3, r0
/* 804A8160  38 61 00 08 */	addi r3, r1, 8
/* 804A8164  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A8168  4B F1 2B 01 */	bl chase_f
/* 804A816C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A8170  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804A8174  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A8178  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804A817C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A8180  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804A8184  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A8188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A818C  7C 08 03 A6 */	mtlr r0
/* 804A8190  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8194  4E 80 00 20 */	blr 
