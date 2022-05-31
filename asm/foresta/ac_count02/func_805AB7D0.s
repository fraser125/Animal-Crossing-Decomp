lbl_805AB7D0:
/* 805AB7D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB7D4  7C 08 02 A6 */	mflr r0
/* 805AB7D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AB7DC  38 A0 00 00 */	li r5, 0
/* 805AB7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB7E4  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 805AB7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AB7EC  3F E6 00 02 */	addis r31, r6, 2
/* 805AB7F0  93 C1 00 08 */	stw r30, 8(r1)
/* 805AB7F4  7C 7E 1B 78 */	mr r30, r3
/* 805AB7F8  3C 60 80 B7 */	lis r3, cKF_bs_r_obj_e_count02_cl@ha /* 0x80B688B4@ha */
/* 805AB7FC  38 83 88 B4 */	addi r4, r3, cKF_bs_r_obj_e_count02_cl@l /* 0x80B688B4@l */
/* 805AB800  38 DE 01 EC */	addi r6, r30, 0x1ec
/* 805AB804  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AB808  38 FE 02 46 */	addi r7, r30, 0x246
/* 805AB80C  4B DC 52 89 */	bl cKF_SkeletonInfo_R_ct
/* 805AB810  88 1F 61 25 */	lbz r0, 0x6125(r31)
/* 805AB814  28 00 00 0C */	cmplwi r0, 0xc
/* 805AB818  40 82 00 38 */	bne lbl_805AB850
/* 805AB81C  88 1F 61 23 */	lbz r0, 0x6123(r31)
/* 805AB820  28 00 00 1F */	cmplwi r0, 0x1f
/* 805AB824  40 82 00 2C */	bne lbl_805AB850
/* 805AB828  88 1F 61 22 */	lbz r0, 0x6122(r31)
/* 805AB82C  28 00 00 17 */	cmplwi r0, 0x17
/* 805AB830  40 82 00 20 */	bne lbl_805AB850
/* 805AB834  88 1F 61 21 */	lbz r0, 0x6121(r31)
/* 805AB838  28 00 00 3B */	cmplwi r0, 0x3b
/* 805AB83C  40 82 00 14 */	bne lbl_805AB850
/* 805AB840  3C 60 80 65 */	lis r3, data_8064A664@ha /* 0x8064A664@ha */
/* 805AB844  C0 03 A6 64 */	lfs f0, data_8064A664@l(r3)  /* 0x8064A664@l */
/* 805AB848  D0 1E 02 D0 */	stfs f0, 0x2d0(r30)
/* 805AB84C  48 00 00 10 */	b lbl_805AB85C
lbl_805AB850:
/* 805AB850  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A668@ha */
/* 805AB854  C0 03 A6 68 */	lfs f0, lit_436@l(r3)  /* 0x8064A668@l */
/* 805AB858  D0 1E 02 D0 */	stfs f0, 0x2d0(r30)
lbl_805AB85C:
/* 805AB85C  7F C3 F3 78 */	mr r3, r30
/* 805AB860  38 80 00 00 */	li r4, 0
/* 805AB864  48 00 02 B9 */	bl aCOU_setup_action
/* 805AB868  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064A66C@ha */
/* 805AB86C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805AB870  38 83 A6 6C */	addi r4, r3, lit_437@l /* 0x8064A66C@l */
/* 805AB874  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AB878  C0 04 00 00 */	lfs f0, 0(r4)
/* 805AB87C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AB880  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 805AB884  4B DC 57 91 */	bl cKF_SkeletonInfo_R_play
/* 805AB888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AB890  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AB894  7C 08 03 A6 */	mtlr r0
/* 805AB898  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB89C  4E 80 00 20 */	blr 
