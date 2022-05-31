lbl_805B2770:
/* 805B2770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2774  7C 08 02 A6 */	mflr r0
/* 805B2778  3C A0 80 65 */	lis r5, lit_444@ha /* 0x8064A894@ha */
/* 805B277C  3C C0 80 65 */	lis r6, lit_445@ha /* 0x8064A898@ha */
/* 805B2780  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2784  38 E5 A8 94 */	addi r7, r5, lit_444@l /* 0x8064A894@l */
/* 805B2788  C0 27 00 00 */	lfs f1, 0(r7)
/* 805B278C  3C A0 80 65 */	lis r5, lit_446@ha /* 0x8064A89C@ha */
/* 805B2790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2794  7C 9F 23 78 */	mr r31, r4
/* 805B2798  C0 86 A8 98 */	lfs f4, lit_445@l(r6)  /* 0x8064A898@l */
/* 805B279C  FC 40 08 90 */	fmr f2, f1
/* 805B27A0  93 C1 00 08 */	stw r30, 8(r1)
/* 805B27A4  7C 7E 1B 78 */	mr r30, r3
/* 805B27A8  38 65 A8 9C */	addi r3, r5, lit_446@l /* 0x8064A89C@l */
/* 805B27AC  FC 60 08 90 */	fmr f3, f1
/* 805B27B0  3C A0 80 B8 */	lis r5, cKF_ba_r_obj_e_koinobori@ha /* 0x80B8723C@ha */
/* 805B27B4  C0 A3 00 00 */	lfs f5, 0(r3)
/* 805B27B8  38 A5 72 3C */	addi r5, r5, cKF_ba_r_obj_e_koinobori@l /* 0x80B8723C@l */
/* 805B27BC  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805B27C0  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B27C4  38 C0 00 01 */	li r6, 1
/* 805B27C8  38 E0 00 00 */	li r7, 0
/* 805B27CC  4B DB E5 09 */	bl cKF_SkeletonInfo_R_init
/* 805B27D0  3C 60 80 6C */	lis r3, process@ha /* 0x806C57E0@ha */
/* 805B27D4  57 E0 10 3A */	slwi r0, r31, 2
/* 805B27D8  38 63 57 E0 */	addi r3, r3, process@l /* 0x806C57E0@l */
/* 805B27DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805B27E0  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805B27E4  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805B27E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B27EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B27F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B27F4  7C 08 03 A6 */	mtlr r0
/* 805B27F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B27FC  4E 80 00 20 */	blr 
