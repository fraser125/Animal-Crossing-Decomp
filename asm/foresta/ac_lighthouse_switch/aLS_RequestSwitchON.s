lbl_8042C098:
/* 8042C098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C09C  7C 08 02 A6 */	mflr r0
/* 8042C0A0  3C 80 80 8E */	lis r4, cKF_ba_r_obj_toudai_switch@ha /* 0x808E1874@ha */
/* 8042C0A4  38 A0 00 00 */	li r5, 0
/* 8042C0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C0AC  38 00 00 01 */	li r0, 1
/* 8042C0B0  38 84 18 74 */	addi r4, r4, cKF_ba_r_obj_toudai_switch@l /* 0x808E1874@l */
/* 8042C0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C0B8  3B E3 01 88 */	addi r31, r3, 0x188
/* 8042C0BC  B0 03 01 84 */	sth r0, 0x184(r3)
/* 8042C0C0  7F E3 FB 78 */	mr r3, r31
/* 8042C0C4  4B F4 4A 31 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8042C0C8  3C 80 80 64 */	lis r4, lit_482@ha /* 0x806440AC@ha */
/* 8042C0CC  7F E3 FB 78 */	mr r3, r31
/* 8042C0D0  C0 04 40 AC */	lfs f0, lit_482@l(r4)  /* 0x806440AC@l */
/* 8042C0D4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042C0D8  4B F4 4F 3D */	bl cKF_SkeletonInfo_R_play
/* 8042C0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C0E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C0E4  7C 08 03 A6 */	mtlr r0
/* 8042C0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C0EC  4E 80 00 20 */	blr 
