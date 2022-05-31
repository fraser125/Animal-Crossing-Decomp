lbl_804FE680:
/* 804FE680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FE684  7C 08 02 A6 */	mflr r0
/* 804FE688  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FE68C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FE690  4B B9 C8 45 */	bl func_8009AED4
/* 804FE694  7C 7D 1B 78 */	mr r29, r3
/* 804FE698  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804FE69C  3C A0 80 64 */	lis r5, lit_1076@ha /* 0x80646A18@ha */
/* 804FE6A0  3C 80 80 65 */	lis r4, lit_8464@ha /* 0x80648498@ha */
/* 804FE6A4  3C 60 80 65 */	lis r3, lit_8465@ha /* 0x8064849C@ha */
/* 804FE6A8  C0 3D 0D 34 */	lfs f1, 0xd34(r29)
/* 804FE6AC  C0 46 65 68 */	lfs f2, lit_604@l(r6)  /* 0x80646568@l */
/* 804FE6B0  3B FD 0D 1C */	addi r31, r29, 0xd1c
/* 804FE6B4  C0 65 6A 18 */	lfs f3, lit_1076@l(r5)  /* 0x80646A18@l */
/* 804FE6B8  3B DD 0D 28 */	addi r30, r29, 0xd28
/* 804FE6BC  C0 84 84 98 */	lfs f4, lit_8464@l(r4)  /* 0x80648498@l */
/* 804FE6C0  C0 A3 84 9C */	lfs f5, lit_8465@l(r3)  /* 0x8064849C@l */
/* 804FE6C4  4B EB CF 39 */	bl get_percent_forAccelBrake
/* 804FE6C8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804FE6CC  7F A3 EB 78 */	mr r3, r29
/* 804FE6D0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804FE6D4  38 80 00 00 */	li r4, 0
/* 804FE6D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804FE6DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804FE6E0  EC 02 00 2A */	fadds f0, f2, f0
/* 804FE6E4  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 804FE6E8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804FE6EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FE6F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804FE6F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804FE6F8  EC 02 00 2A */	fadds f0, f2, f0
/* 804FE6FC  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 804FE700  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FE704  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804FE708  EC 00 10 28 */	fsubs f0, f0, f2
/* 804FE70C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804FE710  EC 02 00 2A */	fadds f0, f2, f0
/* 804FE714  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 804FE718  4B FD 73 A5 */	bl Player_actor_Movement_Base_Stop
/* 804FE71C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FE720  4B B9 C8 01 */	bl func_8009AF20
/* 804FE724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FE728  7C 08 03 A6 */	mtlr r0
/* 804FE72C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FE730  4E 80 00 20 */	blr 
