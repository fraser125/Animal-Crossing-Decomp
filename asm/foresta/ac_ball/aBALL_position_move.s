lbl_80412304:
/* 80412304  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80412308  7C 08 02 A6 */	mflr r0
/* 8041230C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80412310  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80412314  7C 7F 1B 78 */	mr r31, r3
/* 80412318  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 8041231C  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 80412320  38 83 39 AC */	addi r4, r3, lit_472@l /* 0x806439AC@l */
/* 80412324  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80412328  38 61 00 08 */	addi r3, r1, 8
/* 8041232C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80412330  38 81 00 10 */	addi r4, r1, 0x10
/* 80412334  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80412338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041233C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80412340  90 01 00 18 */	stw r0, 0x18(r1)
/* 80412344  4B F7 D3 75 */	bl func_8038F6B8
/* 80412348  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 8041234C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80412350  40 82 00 10 */	bne lbl_80412360
/* 80412354  88 1F 00 9A */	lbz r0, 0x9a(r31)
/* 80412358  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8041235C  41 82 00 14 */	beq lbl_80412370
lbl_80412360:
/* 80412360  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 80412364  38 7F 00 74 */	addi r3, r31, 0x74
/* 80412368  C0 5F 01 F0 */	lfs f2, 0x1f0(r31)
/* 8041236C  4B FA 88 FD */	bl chase_f
lbl_80412370:
/* 80412370  A8 1F 02 08 */	lha r0, 0x208(r31)
/* 80412374  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80412378  40 82 00 48 */	bne lbl_804123C0
/* 8041237C  38 7F 00 68 */	addi r3, r31, 0x68
/* 80412380  38 9F 00 74 */	addi r4, r31, 0x74
/* 80412384  38 BF 00 36 */	addi r5, r31, 0x36
/* 80412388  4B FE 41 BD */	bl mRlib_spdF_Angle_to_spdXZ
/* 8041238C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80412390  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80412394  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80412398  4B FA 88 D1 */	bl chase_f
/* 8041239C  7F E3 FB 78 */	mr r3, r31
/* 804123A0  38 81 00 08 */	addi r4, r1, 8
/* 804123A4  4B FE 42 01 */	bl mRlib_position_move_for_sloop
/* 804123A8  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806439CC@ha */
/* 804123AC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804123B0  C0 03 39 CC */	lfs f0, lit_505@l(r3)  /* 0x806439CC@l */
/* 804123B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804123B8  40 80 00 08 */	bge lbl_804123C0
/* 804123BC  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_804123C0:
/* 804123C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804123C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804123C8  7C 08 03 A6 */	mtlr r0
/* 804123CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804123D0  4E 80 00 20 */	blr 
