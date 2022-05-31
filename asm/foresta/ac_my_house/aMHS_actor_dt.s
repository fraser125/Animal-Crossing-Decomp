lbl_805B4E38:
/* 805B4E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B4E3C  7C 08 02 A6 */	mflr r0
/* 805B4E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B4E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B4E48  93 C1 00 08 */	stw r30, 8(r1)
/* 805B4E4C  7C 7E 1B 78 */	mr r30, r3
/* 805B4E50  A0 83 00 06 */	lhz r4, 6(r3)
/* 805B4E54  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B4E58  3B E4 A8 00 */	addi r31, r4, -22528
/* 805B4E5C  4B DB BC 95 */	bl cKF_SkeletonInfo_R_dt
/* 805B4E60  3C 80 80 6C */	lis r4, aMHS_posX_table@ha /* 0x806C5DCC@ha */
/* 805B4E64  3C 60 80 65 */	lis r3, data_8064A964@ha /* 0x8064A964@ha */
/* 805B4E68  57 E0 17 7A */	rlwinm r0, r31, 2, 0x1d, 0x1d
/* 805B4E6C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805B4E70  38 84 5D CC */	addi r4, r4, aMHS_posX_table@l /* 0x806C5DCC@l */
/* 805B4E74  C0 03 A9 64 */	lfs f0, data_8064A964@l(r3)  /* 0x8064A964@l */
/* 805B4E78  7C 24 04 2E */	lfsx f1, r4, r0
/* 805B4E7C  EC 22 08 28 */	fsubs f1, f2, f1
/* 805B4E80  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 805B4E84  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805B4E88  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B4E8C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 805B4E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B4E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B4E98  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B4E9C  7C 08 03 A6 */	mtlr r0
/* 805B4EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B4EA4  4E 80 00 20 */	blr 
