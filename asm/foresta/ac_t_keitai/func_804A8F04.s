lbl_804A8F04:
/* 804A8F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8F08  7C 08 02 A6 */	mflr r0
/* 804A8F0C  38 A0 00 00 */	li r5, 0
/* 804A8F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A8F18  7C 7F 1B 78 */	mr r31, r3
/* 804A8F1C  3C 60 80 C1 */	lis r3, cKF_bs_r_tol_keitai_1@ha /* 0x80C13AE4@ha */
/* 804A8F20  93 C1 00 08 */	stw r30, 8(r1)
/* 804A8F24  7C 9E 23 78 */	mr r30, r4
/* 804A8F28  38 83 3A E4 */	addi r4, r3, cKF_bs_r_tol_keitai_1@l /* 0x80C13AE4@l */
/* 804A8F2C  38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 804A8F30  38 DF 02 44 */	addi r6, r31, 0x244
/* 804A8F34  38 FF 02 5C */	addi r7, r31, 0x25c
/* 804A8F38  4B EC 7B 5D */	bl cKF_SkeletonInfo_R_ct
/* 804A8F3C  A8 1F 00 26 */	lha r0, 0x26(r31)
/* 804A8F40  7F E3 FB 78 */	mr r3, r31
/* 804A8F44  38 80 00 01 */	li r4, 1
/* 804A8F48  1C A0 00 5C */	mulli r5, r0, 0x5c
/* 804A8F4C  38 05 01 14 */	addi r0, r5, 0x114
/* 804A8F50  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804A8F54  90 1F 02 74 */	stw r0, 0x274(r31)
/* 804A8F58  48 00 01 1D */	bl aTKT_setupAction
/* 804A8F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A8F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A8F68  7C 08 03 A6 */	mtlr r0
/* 804A8F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8F70  4E 80 00 20 */	blr 
