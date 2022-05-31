lbl_805081B8:
/* 805081B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805081BC  7C 08 02 A6 */	mflr r0
/* 805081C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805081C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805081C8  7C 7F 1B 78 */	mr r31, r3
/* 805081CC  38 7F 01 74 */	addi r3, r31, 0x174
/* 805081D0  4B E6 A4 65 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 805081D4  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805081D8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 805081DC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 805081E0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805081E4  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 805081E8  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 805081EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805081F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805081F4  7C 08 03 A6 */	mtlr r0
/* 805081F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805081FC  4E 80 00 20 */	blr 
