lbl_8050617C:
/* 8050617C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506180  7C 08 02 A6 */	mflr r0
/* 80506184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050618C  7C 7F 1B 78 */	mr r31, r3
/* 80506190  38 7F 01 74 */	addi r3, r31, 0x174
/* 80506194  4B E6 C4 A1 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 80506198  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 8050619C  7F E3 FB 78 */	mr r3, r31
/* 805061A0  38 04 C0 00 */	addi r0, r4, -16384
/* 805061A4  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805061A8  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805061AC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805061B0  4B FD 82 A1 */	bl Player_actor_Reset_bee_chase
/* 805061B4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 805061B8  7F E3 FB 78 */	mr r3, r31
/* 805061BC  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 805061C0  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 805061C4  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 805061C8  4B FD 94 71 */	bl Player_actor_sound_LANDING
/* 805061CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805061D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805061D4  7C 08 03 A6 */	mtlr r0
/* 805061D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805061DC  4E 80 00 20 */	blr 
