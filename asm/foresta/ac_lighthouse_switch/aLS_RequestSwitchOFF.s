lbl_8042C0F0:
/* 8042C0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C0F4  7C 08 02 A6 */	mflr r0
/* 8042C0F8  3C 80 80 8E */	lis r4, cKF_ba_r_obj_toudai_switch_off@ha /* 0x808E18D8@ha */
/* 8042C0FC  38 A0 00 00 */	li r5, 0
/* 8042C100  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C104  38 00 00 00 */	li r0, 0
/* 8042C108  38 84 18 D8 */	addi r4, r4, cKF_ba_r_obj_toudai_switch_off@l /* 0x808E18D8@l */
/* 8042C10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C110  3B E3 01 88 */	addi r31, r3, 0x188
/* 8042C114  B0 03 01 84 */	sth r0, 0x184(r3)
/* 8042C118  7F E3 FB 78 */	mr r3, r31
/* 8042C11C  4B F4 49 D9 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8042C120  3C 80 80 64 */	lis r4, lit_482@ha /* 0x806440AC@ha */
/* 8042C124  7F E3 FB 78 */	mr r3, r31
/* 8042C128  C0 04 40 AC */	lfs f0, lit_482@l(r4)  /* 0x806440AC@l */
/* 8042C12C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042C130  4B F4 4E E5 */	bl cKF_SkeletonInfo_R_play
/* 8042C134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C13C  7C 08 03 A6 */	mtlr r0
/* 8042C140  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C144  4E 80 00 20 */	blr 
