lbl_804ECDAC:
/* 804ECDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ECDB0  7C 08 02 A6 */	mflr r0
/* 804ECDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ECDBC  7C 7F 1B 78 */	mr r31, r3
/* 804ECDC0  38 7F 01 74 */	addi r3, r31, 0x174
/* 804ECDC4  4B E8 58 71 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804ECDC8  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 804ECDCC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804ECDD0  38 00 00 00 */	li r0, 0
/* 804ECDD4  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804ECDD8  B0 9F 00 36 */	sth r4, 0x36(r31)
/* 804ECDDC  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 804ECDE0  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 804ECDE4  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 804ECDE8  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 804ECDEC  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 804ECDF0  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 804ECDF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ECDF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ECDFC  7C 08 03 A6 */	mtlr r0
/* 804ECE00  38 21 00 10 */	addi r1, r1, 0x10
/* 804ECE04  4E 80 00 20 */	blr 
