lbl_80424830:
/* 80424830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424834  7C 08 02 A6 */	mflr r0
/* 80424838  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042483C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80424840  7C 7F 1B 78 */	mr r31, r3
/* 80424844  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80424848  7C 9E 23 78 */	mr r30, r4
/* 8042484C  4B F9 56 55 */	bl mEnv_GetWindPowerF
/* 80424850  D0 3F 02 C8 */	stfs f1, 0x2c8(r31)
/* 80424854  3C 60 80 64 */	lis r3, lit_621@ha /* 0x80643ECC@ha */
/* 80424858  C0 23 3E CC */	lfs f1, lit_621@l(r3)  /* 0x80643ECC@l */
/* 8042485C  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 80424860  EC 01 00 32 */	fmuls f0, f1, f0
/* 80424864  EC 01 00 2A */	fadds f0, f1, f0
/* 80424868  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 8042486C  4B F9 56 11 */	bl mEnv_GetWindAngleS
/* 80424870  7C 63 07 34 */	extsh r3, r3
/* 80424874  3C 00 43 30 */	lis r0, 0x4330
/* 80424878  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8042487C  3C 80 80 64 */	lis r4, lit_560@ha /* 0x80643EBC@ha */
/* 80424880  90 61 00 0C */	stw r3, 0xc(r1)
/* 80424884  38 7F 01 78 */	addi r3, r31, 0x178
/* 80424888  C8 24 3E BC */	lfd f1, lit_560@l(r4)  /* 0x80643EBC@l */
/* 8042488C  90 01 00 08 */	stw r0, 8(r1)
/* 80424890  C8 01 00 08 */	lfd f0, 8(r1)
/* 80424894  EC 00 08 28 */	fsubs f0, f0, f1
/* 80424898  D0 1F 02 D0 */	stfs f0, 0x2d0(r31)
/* 8042489C  4B F4 C7 79 */	bl cKF_SkeletonInfo_R_play
/* 804248A0  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 804248A4  7F E3 FB 78 */	mr r3, r31
/* 804248A8  7F C4 F3 78 */	mr r4, r30
/* 804248AC  7D 89 03 A6 */	mtctr r12
/* 804248B0  4E 80 04 21 */	bctrl 
/* 804248B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804248B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804248BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804248C0  7C 08 03 A6 */	mtlr r0
/* 804248C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804248C8  4E 80 00 20 */	blr 
