lbl_804E0C38:
/* 804E0C38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E0C3C  7C 08 02 A6 */	mflr r0
/* 804E0C40  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E0C44  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804E0C48  FF E0 08 90 */	fmr f31, f1
/* 804E0C4C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 804E0C50  3B E3 0A 18 */	addi r31, r3, 0xa18
/* 804E0C54  7F E3 FB 78 */	mr r3, r31
/* 804E0C58  D3 FF 00 10 */	stfs f31, 0x10(r31)
/* 804E0C5C  4B E9 03 B9 */	bl cKF_SkeletonInfo_R_play
/* 804E0C60  D3 FF 00 10 */	stfs f31, 0x10(r31)
/* 804E0C64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E0C68  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804E0C6C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 804E0C70  7C 08 03 A6 */	mtlr r0
/* 804E0C74  38 21 00 20 */	addi r1, r1, 0x20
/* 804E0C78  4E 80 00 20 */	blr 
