lbl_805ABB1C:
/* 805ABB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ABB20  7C 08 02 A6 */	mflr r0
/* 805ABB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ABB28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ABB2C  7C 9F 23 79 */	or. r31, r4, r4
/* 805ABB30  93 C1 00 08 */	stw r30, 8(r1)
/* 805ABB34  7C 7E 1B 78 */	mr r30, r3
/* 805ABB38  40 82 00 50 */	bne lbl_805ABB88
/* 805ABB3C  3C 60 80 65 */	lis r3, data_8064A664@ha /* 0x8064A664@ha */
/* 805ABB40  3C A0 80 65 */	lis r5, lit_502@ha /* 0x8064A670@ha */
/* 805ABB44  C0 23 A6 64 */	lfs f1, data_8064A664@l(r3)  /* 0x8064A664@l */
/* 805ABB48  3C 80 80 65 */	lis r4, lit_503@ha /* 0x8064A674@ha */
/* 805ABB4C  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A668@ha */
/* 805ABB50  39 05 A6 70 */	addi r8, r5, lit_502@l /* 0x8064A670@l */
/* 805ABB54  38 E4 A6 74 */	addi r7, r4, lit_503@l /* 0x8064A674@l */
/* 805ABB58  FC 60 08 90 */	fmr f3, f1
/* 805ABB5C  38 C3 A6 68 */	addi r6, r3, lit_436@l /* 0x8064A668@l */
/* 805ABB60  3C 60 80 B7 */	lis r3, cKF_ba_r_obj_e_count02_cl@ha /* 0x80B688FC@ha */
/* 805ABB64  C0 87 00 00 */	lfs f4, 0(r7)
/* 805ABB68  38 A3 88 FC */	addi r5, r3, cKF_ba_r_obj_e_count02_cl@l /* 0x80B688FC@l */
/* 805ABB6C  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805ABB70  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805ABB74  38 7E 01 78 */	addi r3, r30, 0x178
/* 805ABB78  C0 48 00 00 */	lfs f2, 0(r8)
/* 805ABB7C  38 C0 00 00 */	li r6, 0
/* 805ABB80  38 E0 00 00 */	li r7, 0
/* 805ABB84  4B DC 51 51 */	bl cKF_SkeletonInfo_R_init
lbl_805ABB88:
/* 805ABB88  3C 60 80 6C */	lis r3, process@ha /* 0x806C495C@ha */
/* 805ABB8C  57 E0 10 3A */	slwi r0, r31, 2
/* 805ABB90  38 63 49 5C */	addi r3, r3, process@l /* 0x806C495C@l */
/* 805ABB94  7C 03 00 2E */	lwzx r0, r3, r0
/* 805ABB98  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805ABB9C  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805ABBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805ABBA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805ABBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ABBAC  7C 08 03 A6 */	mtlr r0
/* 805ABBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 805ABBB4  4E 80 00 20 */	blr 
