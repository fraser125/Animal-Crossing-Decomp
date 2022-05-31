lbl_8063915C:
/* 8063915C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80639160  7C 08 02 A6 */	mflr r0
/* 80639164  38 A0 00 00 */	li r5, 0
/* 80639168  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063916C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80639170  FF E0 08 90 */	fmr f31, f1
/* 80639174  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80639178  7C 7F 1B 78 */	mr r31, r3
/* 8063917C  4B D3 79 79 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80639180  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 80639184  7F E3 FB 78 */	mr r3, r31
/* 80639188  4B D3 7E 8D */	bl cKF_SkeletonInfo_R_play
/* 8063918C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80639190  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80639194  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80639198  7C 08 03 A6 */	mtlr r0
/* 8063919C  38 21 00 20 */	addi r1, r1, 0x20
/* 806391A0  4E 80 00 20 */	blr 
