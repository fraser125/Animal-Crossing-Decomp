lbl_804EBF54:
/* 804EBF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBF58  7C 08 02 A6 */	mflr r0
/* 804EBF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBF60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EBF64  7C 7F 1B 78 */	mr r31, r3
/* 804EBF68  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EBF6C  4B E8 66 C9 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EBF70  38 00 C0 00 */	li r0, -16384
/* 804EBF74  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EBF78  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 804EBF7C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EBF80  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804EBF84  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EBF88  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 804EBF8C  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 804EBF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EBF98  7C 08 03 A6 */	mtlr r0
/* 804EBF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBFA0  4E 80 00 20 */	blr 
