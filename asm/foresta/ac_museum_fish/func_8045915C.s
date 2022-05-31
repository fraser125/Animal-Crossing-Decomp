lbl_8045915C:
/* 8045915C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459160  7C 08 02 A6 */	mflr r0
/* 80459164  3C 80 80 CE */	lis r4, cKF_bs_r_obj_museum5_hasu@ha /* 0x80CE23C8@ha */
/* 80459168  3C A0 80 CE */	lis r5, cKF_ba_r_obj_museum5_hasu@ha /* 0x80CE1E88@ha */
/* 8045916C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459170  38 84 23 C8 */	addi r4, r4, cKF_bs_r_obj_museum5_hasu@l /* 0x80CE23C8@l */
/* 80459174  38 A5 1E 88 */	addi r5, r5, cKF_ba_r_obj_museum5_hasu@l /* 0x80CE1E88@l */
/* 80459178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045917C  7C 7F 1B 78 */	mr r31, r3
/* 80459180  38 DF 04 F0 */	addi r6, r31, 0x4f0
/* 80459184  38 FF 05 26 */	addi r7, r31, 0x526
/* 80459188  4B F1 79 0D */	bl cKF_SkeletonInfo_R_ct
/* 8045918C  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80459190  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80459194  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 80459198  3C A0 80 CE */	lis r5, cKF_ba_r_obj_museum5_hasu@ha /* 0x80CE1E88@ha */
/* 8045919C  C0 24 42 5C */	lfs f1, lit_471@l(r4)  /* 0x8064425C@l */
/* 804591A0  38 85 1E 88 */	addi r4, r5, cKF_ba_r_obj_museum5_hasu@l /* 0x80CE1E88@l */
/* 804591A4  7F E3 FB 78 */	mr r3, r31
/* 804591A8  38 A0 00 00 */	li r5, 0
/* 804591AC  4B F1 86 0D */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 804591B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804591B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804591B8  7C 08 03 A6 */	mtlr r0
/* 804591BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804591C0  4E 80 00 20 */	blr 
