lbl_8060EF50:
/* 8060EF50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060EF54  7C 08 02 A6 */	mflr r0
/* 8060EF58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060EF5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060EF60  7C 7F 1B 78 */	mr r31, r3
/* 8060EF64  7C 83 23 78 */	mr r3, r4
/* 8060EF68  4B DC A6 D9 */	bl get_player_actor_withoutCheck
/* 8060EF6C  3C 80 80 65 */	lis r4, data_8064C234@ha /* 0x8064C234@ha */
/* 8060EF70  28 03 00 00 */	cmplwi r3, 0
/* 8060EF74  38 A4 C2 34 */	addi r5, r4, data_8064C234@l /* 0x8064C234@l */
/* 8060EF78  80 85 00 00 */	lwz r4, 0(r5)
/* 8060EF7C  80 05 00 04 */	lwz r0, 4(r5)
/* 8060EF80  90 9F 00 00 */	stw r4, 0(r31)
/* 8060EF84  90 1F 00 04 */	stw r0, 4(r31)
/* 8060EF88  80 05 00 08 */	lwz r0, 8(r5)
/* 8060EF8C  90 1F 00 08 */	stw r0, 8(r31)
/* 8060EF90  41 82 01 04 */	beq lbl_8060F094
/* 8060EF94  3C 80 80 65 */	lis r4, lit_378@ha /* 0x8064C240@ha */
/* 8060EF98  81 63 00 28 */	lwz r11, 0x28(r3)
/* 8060EF9C  39 04 C2 40 */	addi r8, r4, lit_378@l /* 0x8064C240@l */
/* 8060EFA0  81 43 00 2C */	lwz r10, 0x2c(r3)
/* 8060EFA4  81 23 00 30 */	lwz r9, 0x30(r3)
/* 8060EFA8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 8060EFAC  80 E8 00 00 */	lwz r7, 0(r8)
/* 8060EFB0  38 61 00 0C */	addi r3, r1, 0xc
/* 8060EFB4  80 C8 00 04 */	lwz r6, 4(r8)
/* 8060EFB8  38 81 00 08 */	addi r4, r1, 8
/* 8060EFBC  80 08 00 08 */	lwz r0, 8(r8)
/* 8060EFC0  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 8060EFC4  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8060EFC8  91 41 00 20 */	stw r10, 0x20(r1)
/* 8060EFCC  91 21 00 24 */	stw r9, 0x24(r1)
/* 8060EFD0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8060EFD4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8060EFD8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060EFDC  4B D9 74 25 */	bl mFI_BlockKind2BkNum
/* 8060EFE0  2C 03 00 00 */	cmpwi r3, 0
/* 8060EFE4  41 82 00 B0 */	beq lbl_8060F094
/* 8060EFE8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8060EFEC  38 81 00 18 */	addi r4, r1, 0x18
/* 8060EFF0  80 C1 00 08 */	lwz r6, 8(r1)
/* 8060EFF4  38 61 00 10 */	addi r3, r1, 0x10
/* 8060EFF8  4B D9 6B 81 */	bl mFI_BkNum2WposXZ
/* 8060EFFC  2C 03 00 00 */	cmpwi r3, 0
/* 8060F000  41 82 00 94 */	beq lbl_8060F094
/* 8060F004  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C24C@ha */
/* 8060F008  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8060F00C  38 A4 C2 4C */	addi r5, r4, lit_385@l /* 0x8064C24C@l */
/* 8060F010  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8060F014  C0 45 00 00 */	lfs f2, 0(r5)
/* 8060F018  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064C250@ha */
/* 8060F01C  C0 64 C2 50 */	lfs f3, lit_386@l(r4)  /* 0x8064C250@l */
/* 8060F020  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C254@ha */
/* 8060F024  EC 80 10 2A */	fadds f4, f0, f2
/* 8060F028  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8060F02C  EC 41 10 2A */	fadds f2, f1, f2
/* 8060F030  C0 23 C2 54 */	lfs f1, lit_387@l(r3)  /* 0x8064C254@l */
/* 8060F034  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8060F038  EC 04 00 2A */	fadds f0, f4, f0
/* 8060F03C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8060F040  EC 01 00 32 */	fmuls f0, f1, f0
/* 8060F044  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8060F048  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8060F04C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8060F050  80 81 00 08 */	lwz r4, 8(r1)
/* 8060F054  4B D9 70 F1 */	bl mFI_BkNum2BaseHeight
/* 8060F058  3C 60 80 65 */	lis r3, lit_388@ha /* 0x8064C258@ha */
/* 8060F05C  3C 80 80 65 */	lis r4, lit_387@ha /* 0x8064C254@ha */
/* 8060F060  38 A3 C2 58 */	addi r5, r3, lit_388@l /* 0x8064C258@l */
/* 8060F064  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8060F068  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060F06C  3C 60 80 65 */	lis r3, lit_389@ha /* 0x8064C25C@ha */
/* 8060F070  C0 64 C2 54 */	lfs f3, lit_387@l(r4)  /* 0x8064C254@l */
/* 8060F074  EC 20 08 2A */	fadds f1, f0, f1
/* 8060F078  C0 03 C2 5C */	lfs f0, lit_389@l(r3)  /* 0x8064C25C@l */
/* 8060F07C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8060F080  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8060F084  EC 21 10 2A */	fadds f1, f1, f2
/* 8060F088  EC 23 00 72 */	fmuls f1, f3, f1
/* 8060F08C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8060F090  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8060F094:
/* 8060F094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060F098  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060F09C  7C 08 03 A6 */	mtlr r0
/* 8060F0A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8060F0A4  4E 80 00 20 */	blr 
