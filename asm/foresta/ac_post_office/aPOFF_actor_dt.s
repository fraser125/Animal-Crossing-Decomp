lbl_805B7B3C:
/* 805B7B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7B40  7C 08 02 A6 */	mflr r0
/* 805B7B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B7B4C  7C 7F 1B 78 */	mr r31, r3
/* 805B7B50  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B7B54  4B DB 8F 9D */	bl cKF_SkeletonInfo_R_dt
/* 805B7B58  3C 80 80 65 */	lis r4, data_8064AA2C@ha /* 0x8064AA2C@ha */
/* 805B7B5C  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064AA30@ha */
/* 805B7B60  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805B7B64  C0 24 AA 2C */	lfs f1, data_8064AA2C@l(r4)  /* 0x8064AA2C@l */
/* 805B7B68  C0 03 AA 30 */	lfs f0, lit_438@l(r3)  /* 0x8064AA30@l */
/* 805B7B6C  EC 22 08 28 */	fsubs f1, f2, f1
/* 805B7B70  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 805B7B74  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805B7B78  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B7B7C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805B7B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B7B84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B7B88  7C 08 03 A6 */	mtlr r0
/* 805B7B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B7B90  4E 80 00 20 */	blr 
