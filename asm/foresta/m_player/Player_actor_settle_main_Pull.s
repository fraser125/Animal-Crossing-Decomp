lbl_804EAA40:
/* 804EAA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EAA44  7C 08 02 A6 */	mflr r0
/* 804EAA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EAA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EAA50  7C 7F 1B 78 */	mr r31, r3
/* 804EAA54  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EAA58  4B E8 7B DD */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EAA5C  C0 1F 0D 1C */	lfs f0, 0xd1c(r31)
/* 804EAA60  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804EAA64  C0 1F 0D 24 */	lfs f0, 0xd24(r31)
/* 804EAA68  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804EAA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EAA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EAA74  7C 08 03 A6 */	mtlr r0
/* 804EAA78  38 21 00 10 */	addi r1, r1, 0x10
/* 804EAA7C  4E 80 00 20 */	blr 
