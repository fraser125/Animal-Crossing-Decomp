lbl_80424AA0:
/* 80424AA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424AA4  7C 08 02 A6 */	mflr r0
/* 80424AA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424AAC  7C 60 1B 78 */	mr r0, r3
/* 80424AB0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80424AB4  FF E0 08 90 */	fmr f31, f1
/* 80424AB8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80424ABC  7C BF 2B 78 */	mr r31, r5
/* 80424AC0  7F E3 FB 78 */	mr r3, r31
/* 80424AC4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80424AC8  7C 9E 23 78 */	mr r30, r4
/* 80424ACC  7C 04 03 78 */	mr r4, r0
/* 80424AD0  7F C5 F3 78 */	mr r5, r30
/* 80424AD4  4B F4 BF C1 */	bl cKF_SkeletonInfo_R_ct
/* 80424AD8  7F E3 FB 78 */	mr r3, r31
/* 80424ADC  7F C4 F3 78 */	mr r4, r30
/* 80424AE0  38 A0 00 00 */	li r5, 0
/* 80424AE4  4B F4 C0 11 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80424AE8  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 80424AEC  7F E3 FB 78 */	mr r3, r31
/* 80424AF0  4B F4 C5 25 */	bl cKF_SkeletonInfo_R_play
/* 80424AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80424AF8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80424AFC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80424B00  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80424B04  7C 08 03 A6 */	mtlr r0
/* 80424B08  38 21 00 20 */	addi r1, r1, 0x20
/* 80424B0C  4E 80 00 20 */	blr 
