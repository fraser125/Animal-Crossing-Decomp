lbl_805B6618:
/* 805B6618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B661C  7C 08 02 A6 */	mflr r0
/* 805B6620  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B6628  7C 7F 1B 78 */	mr r31, r3
/* 805B662C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B6630  4B DB A4 C1 */	bl cKF_SkeletonInfo_R_dt
/* 805B6634  3C 80 80 65 */	lis r4, data_8064A9B4@ha /* 0x8064A9B4@ha */
/* 805B6638  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064A9B8@ha */
/* 805B663C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805B6640  C0 24 A9 B4 */	lfs f1, data_8064A9B4@l(r4)  /* 0x8064A9B4@l */
/* 805B6644  C0 03 A9 B8 */	lfs f0, lit_438@l(r3)  /* 0x8064A9B8@l */
/* 805B6648  EC 22 08 28 */	fsubs f1, f2, f1
/* 805B664C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 805B6650  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805B6654  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B6658  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805B665C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B6664  7C 08 03 A6 */	mtlr r0
/* 805B6668  38 21 00 10 */	addi r1, r1, 0x10
/* 805B666C  4E 80 00 20 */	blr 
