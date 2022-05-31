lbl_804EF748:
/* 804EF748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF74C  7C 08 02 A6 */	mflr r0
/* 804EF750  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF758  7C 7F 1B 78 */	mr r31, r3
/* 804EF75C  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EF760  4B E8 2E D5 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EF764  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EF768  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804EF76C  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 804EF770  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 804EF774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF77C  7C 08 03 A6 */	mtlr r0
/* 804EF780  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF784  4E 80 00 20 */	blr 
