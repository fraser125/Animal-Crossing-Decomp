lbl_804EF03C:
/* 804EF03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF040  7C 08 02 A6 */	mflr r0
/* 804EF044  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF04C  7C 7F 1B 78 */	mr r31, r3
/* 804EF050  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EF054  4B E8 35 E1 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EF058  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804EF05C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EF060  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EF064  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EF068  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 804EF06C  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 804EF070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF078  7C 08 03 A6 */	mtlr r0
/* 804EF07C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF080  4E 80 00 20 */	blr 
