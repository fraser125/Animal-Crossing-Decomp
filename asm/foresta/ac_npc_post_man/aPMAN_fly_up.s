lbl_8056E7F4:
/* 8056E7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E7F8  7C 08 02 A6 */	mflr r0
/* 8056E7FC  3C A0 80 65 */	lis r5, lit_500@ha /* 0x80649880@ha */
/* 8056E800  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E804  C0 25 98 80 */	lfs f1, lit_500@l(r5)  /* 0x80649880@l */
/* 8056E808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056E80C  7C 9F 23 78 */	mr r31, r4
/* 8056E810  93 C1 00 08 */	stw r30, 8(r1)
/* 8056E814  7C 7E 1B 78 */	mr r30, r3
/* 8056E818  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8056E81C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 8056E820  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8056E824  4C 41 13 82 */	cror 2, 1, 2
/* 8056E828  40 82 00 68 */	bne lbl_8056E890
/* 8056E82C  4B E0 1C 5D */	bl cKF_FrameControl_passCheck_now
/* 8056E830  2C 03 00 01 */	cmpwi r3, 1
/* 8056E834  40 82 00 30 */	bne lbl_8056E864
/* 8056E838  3C 60 80 65 */	lis r3, lit_718@ha /* 0x80649898@ha */
/* 8056E83C  3C 80 80 65 */	lis r4, lit_719@ha /* 0x8064989C@ha */
/* 8056E840  38 A3 98 98 */	addi r5, r3, lit_718@l /* 0x80649898@l */
/* 8056E844  C0 24 98 9C */	lfs f1, lit_719@l(r4)  /* 0x8064989C@l */
/* 8056E848  C0 05 00 00 */	lfs f0, 0(r5)
/* 8056E84C  3C 60 80 65 */	lis r3, lit_720@ha /* 0x806498A0@ha */
/* 8056E850  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8056E854  C0 03 98 A0 */	lfs f0, lit_720@l(r3)  /* 0x806498A0@l */
/* 8056E858  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 8056E85C  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8056E860  48 00 00 30 */	b lbl_8056E890
lbl_8056E864:
/* 8056E864  3C 60 80 65 */	lis r3, data_8064987C@ha /* 0x8064987C@ha */
/* 8056E868  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8056E86C  C0 03 98 7C */	lfs f0, data_8064987C@l(r3)  /* 0x8064987C@l */
/* 8056E870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056E874  40 80 00 1C */	bge lbl_8056E890
/* 8056E878  3C 80 80 65 */	lis r4, lit_675@ha /* 0x80649894@ha */
/* 8056E87C  3C 60 80 65 */	lis r3, lit_721@ha /* 0x806498A4@ha */
/* 8056E880  C0 24 98 94 */	lfs f1, lit_675@l(r4)  /* 0x80649894@l */
/* 8056E884  C0 03 98 A4 */	lfs f0, lit_721@l(r3)  /* 0x806498A4@l */
/* 8056E888  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 8056E88C  D0 1E 00 78 */	stfs f0, 0x78(r30)
lbl_8056E890:
/* 8056E890  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 8056E894  2C 00 00 01 */	cmpwi r0, 1
/* 8056E898  40 82 00 20 */	bne lbl_8056E8B8
/* 8056E89C  3C 60 80 6C */	lis r3, next_act_idx@ha /* 0x806BEC80@ha */
/* 8056E8A0  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 8056E8A4  38 83 EC 80 */	addi r4, r3, next_act_idx@l /* 0x806BEC80@l */
/* 8056E8A8  7F C3 F3 78 */	mr r3, r30
/* 8056E8AC  7C A4 00 AE */	lbzx r5, r4, r0
/* 8056E8B0  7F E4 FB 78 */	mr r4, r31
/* 8056E8B4  48 00 04 1D */	bl aPMAN_setupAction
lbl_8056E8B8:
/* 8056E8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056E8C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056E8C4  7C 08 03 A6 */	mtlr r0
/* 8056E8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E8CC  4E 80 00 20 */	blr 
