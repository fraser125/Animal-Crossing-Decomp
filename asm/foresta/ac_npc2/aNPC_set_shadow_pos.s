lbl_8053E02C:
/* 8053E02C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053E030  7C 08 02 A6 */	mflr r0
/* 8053E034  3C 80 80 65 */	lis r4, lit_1598@ha /* 0x806493B8@ha */
/* 8053E038  39 00 00 03 */	li r8, 3
/* 8053E03C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053E040  38 C1 00 08 */	addi r6, r1, 8
/* 8053E044  C0 84 93 B8 */	lfs f4, lit_1598@l(r4)  /* 0x806493B8@l */
/* 8053E048  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053E04C  7C 7F 1B 78 */	mr r31, r3
/* 8053E050  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053E054  D0 81 00 08 */	stfs f4, 8(r1)
/* 8053E058  38 9F 00 28 */	addi r4, r31, 0x28
/* 8053E05C  C0 23 93 74 */	lfs f1, data_80649374@l(r3)  /* 0x80649374@l */
/* 8053E060  3C 60 80 65 */	lis r3, lit_1599@ha /* 0x806493BC@ha */
/* 8053E064  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8053E068  38 FF 01 A8 */	addi r7, r31, 0x1a8
/* 8053E06C  C0 43 93 BC */	lfs f2, lit_1599@l(r3)  /* 0x806493BC@l */
/* 8053E070  FC 60 08 90 */	fmr f3, f1
/* 8053E074  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8053E078  38 7F 07 6C */	addi r3, r31, 0x76c
/* 8053E07C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8053E080  A8 BF 00 DE */	lha r5, 0xde(r31)
/* 8053E084  4B E3 49 B1 */	bl cKF_SkeletonInfo_R_AnimationMove_CulcTransToWorld
/* 8053E088  38 1F 07 6C */	addi r0, r31, 0x76c
/* 8053E08C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8053E090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053E094  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053E098  7C 08 03 A6 */	mtlr r0
/* 8053E09C  38 21 00 20 */	addi r1, r1, 0x20
/* 8053E0A0  4E 80 00 20 */	blr 
