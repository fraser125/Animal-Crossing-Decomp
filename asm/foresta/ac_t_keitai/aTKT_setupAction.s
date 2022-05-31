lbl_804A9074:
/* 804A9074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9078  7C 08 02 A6 */	mflr r0
/* 804A907C  3C A0 80 69 */	lis r5, process@ha /* 0x8068ED3C@ha */
/* 804A9080  7C 69 1B 78 */	mr r9, r3
/* 804A9084  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9088  38 65 ED 3C */	addi r3, r5, process@l /* 0x8068ED3C@l */
/* 804A908C  54 80 10 3A */	slwi r0, r4, 2
/* 804A9090  3C A0 80 64 */	lis r5, lit_469@ha /* 0x80645DE8@ha */
/* 804A9094  7D 03 00 2E */	lwzx r8, r3, r0
/* 804A9098  3C E0 80 69 */	lis r7, data_8068ECB0@ha /* 0x8068ECB0@ha */
/* 804A909C  38 07 EC B0 */	addi r0, r7, data_8068ECB0@l /* 0x8068ECB0@l */
/* 804A90A0  38 C5 5D E8 */	addi r6, r5, lit_469@l /* 0x80645DE8@l */
/* 804A90A4  91 09 01 CC */	stw r8, 0x1cc(r9)
/* 804A90A8  1C E4 00 0C */	mulli r7, r4, 0xc
/* 804A90AC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80645DEC@ha */
/* 804A90B0  C0 86 00 00 */	lfs f4, 0(r6)
/* 804A90B4  90 89 01 D0 */	stw r4, 0x1d0(r9)
/* 804A90B8  38 C0 00 00 */	li r6, 0
/* 804A90BC  38 A3 5D EC */	addi r5, r3, lit_470@l /* 0x80645DEC@l */
/* 804A90C0  90 89 01 C0 */	stw r4, 0x1c0(r9)
/* 804A90C4  7D 00 3A 14 */	add r8, r0, r7
/* 804A90C8  C0 A5 00 00 */	lfs f5, 0(r5)
/* 804A90CC  38 69 01 D4 */	addi r3, r9, 0x1d4
/* 804A90D0  C0 28 00 04 */	lfs f1, 4(r8)
/* 804A90D4  38 E0 00 00 */	li r7, 0
/* 804A90D8  80 89 01 EC */	lwz r4, 0x1ec(r9)
/* 804A90DC  FC 60 08 90 */	fmr f3, f1
/* 804A90E0  80 A8 00 00 */	lwz r5, 0(r8)
/* 804A90E4  C0 48 00 08 */	lfs f2, 8(r8)
/* 804A90E8  4B EC 7B ED */	bl cKF_SkeletonInfo_R_init
/* 804A90EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A90F0  7C 08 03 A6 */	mtlr r0
/* 804A90F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A90F8  4E 80 00 20 */	blr 
