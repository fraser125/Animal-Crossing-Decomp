lbl_8061EF20:
/* 8061EF20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061EF24  7C 08 02 A6 */	mflr r0
/* 8061EF28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061EF2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061EF30  7C 7F 1B 78 */	mr r31, r3
/* 8061EF34  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8061EF38  7C 65 1B 78 */	mr r5, r3
/* 8061EF3C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8061EF40  4B D9 C0 05 */	bl xyz_t_add
/* 8061EF44  38 7F 00 10 */	addi r3, r31, 0x10
/* 8061EF48  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8061EF4C  7C 65 1B 78 */	mr r5, r3
/* 8061EF50  4B D9 BF F5 */	bl xyz_t_add
/* 8061EF54  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064CC4C@ha */
/* 8061EF58  3C 80 80 65 */	lis r4, lit_421@ha /* 0x8064CC54@ha */
/* 8061EF5C  38 A3 CC 4C */	addi r5, r3, lit_420@l /* 0x8064CC4C@l */
/* 8061EF60  C8 24 CC 54 */	lfd f1, lit_421@l(r4)  /* 0x8064CC54@l */
/* 8061EF64  C8 45 00 00 */	lfd f2, 0(r5)
/* 8061EF68  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064CC5C@ha */
/* 8061EF6C  C8 03 CC 5C */	lfd f0, lit_422@l(r3)  /* 0x8064CC5C@l */
/* 8061EF70  FC C0 10 34 */	frsqrte f6, f2
/* 8061EF74  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 8061EF78  FD 00 10 34 */	frsqrte f8, f2
/* 8061EF7C  FD 20 10 34 */	frsqrte f9, f2
/* 8061EF80  FC 86 01 B2 */	fmul f4, f6, f6
/* 8061EF84  FC 68 02 32 */	fmul f3, f8, f8
/* 8061EF88  FC A2 01 32 */	fmul f5, f2, f4
/* 8061EF8C  FC 82 00 F2 */	fmul f4, f2, f3
/* 8061EF90  FC C1 01 B2 */	fmul f6, f1, f6
/* 8061EF94  FC A0 28 28 */	fsub f5, f0, f5
/* 8061EF98  FC 69 02 72 */	fmul f3, f9, f9
/* 8061EF9C  FD 46 01 72 */	fmul f10, f6, f5
/* 8061EFA0  FC A1 02 32 */	fmul f5, f1, f8
/* 8061EFA4  FC CA 02 B2 */	fmul f6, f10, f10
/* 8061EFA8  FC 80 20 28 */	fsub f4, f0, f4
/* 8061EFAC  FC 62 00 F2 */	fmul f3, f2, f3
/* 8061EFB0  FD 65 01 32 */	fmul f11, f5, f4
/* 8061EFB4  FC C2 01 B2 */	fmul f6, f2, f6
/* 8061EFB8  FC AB 02 F2 */	fmul f5, f11, f11
/* 8061EFBC  FC 81 02 72 */	fmul f4, f1, f9
/* 8061EFC0  FC 60 18 28 */	fsub f3, f0, f3
/* 8061EFC4  FD 01 02 B2 */	fmul f8, f1, f10
/* 8061EFC8  FD 84 00 F2 */	fmul f12, f4, f3
/* 8061EFCC  FC 80 30 28 */	fsub f4, f0, f6
/* 8061EFD0  FC A2 01 72 */	fmul f5, f2, f5
/* 8061EFD4  FD 28 01 32 */	fmul f9, f8, f4
/* 8061EFD8  FC 6C 03 32 */	fmul f3, f12, f12
/* 8061EFDC  FD 09 02 72 */	fmul f8, f9, f9
/* 8061EFE0  FC 62 00 F2 */	fmul f3, f2, f3
/* 8061EFE4  FC C1 02 F2 */	fmul f6, f1, f11
/* 8061EFE8  FC 80 28 28 */	fsub f4, f0, f5
/* 8061EFEC  FD 02 02 32 */	fmul f8, f2, f8
/* 8061EFF0  FD 46 01 32 */	fmul f10, f6, f4
/* 8061EFF4  FC 81 03 32 */	fmul f4, f1, f12
/* 8061EFF8  FC 60 18 28 */	fsub f3, f0, f3
/* 8061EFFC  FC C1 02 72 */	fmul f6, f1, f9
/* 8061F000  FD 24 00 F2 */	fmul f9, f4, f3
/* 8061F004  FC AA 02 B2 */	fmul f5, f10, f10
/* 8061F008  FC 60 40 28 */	fsub f3, f0, f8
/* 8061F00C  FC 82 01 72 */	fmul f4, f2, f5
/* 8061F010  FC A6 00 F2 */	fmul f5, f6, f3
/* 8061F014  FC 69 02 72 */	fmul f3, f9, f9
/* 8061F018  FC A2 01 72 */	fmul f5, f2, f5
/* 8061F01C  FC 80 20 28 */	fsub f4, f0, f4
/* 8061F020  FC 62 00 F2 */	fmul f3, f2, f3
/* 8061F024  FC C0 28 18 */	frsp f6, f5
/* 8061F028  FC A1 02 B2 */	fmul f5, f1, f10
/* 8061F02C  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8061F030  FC 21 02 72 */	fmul f1, f1, f9
/* 8061F034  FC 00 18 28 */	fsub f0, f0, f3
/* 8061F038  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 8061F03C  FC A5 01 32 */	fmul f5, f5, f4
/* 8061F040  FC 01 00 32 */	fmul f0, f1, f0
/* 8061F044  FC 62 01 72 */	fmul f3, f2, f5
/* 8061F048  EC 87 01 B2 */	fmuls f4, f7, f6
/* 8061F04C  FC 02 00 32 */	fmul f0, f2, f0
/* 8061F050  FC 60 18 18 */	frsp f3, f3
/* 8061F054  D0 9F 00 1C */	stfs f4, 0x1c(r31)
/* 8061F058  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8061F05C  FC 00 00 18 */	frsp f0, f0
/* 8061F060  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8061F064  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8061F068  D0 01 00 08 */	stfs f0, 8(r1)
/* 8061F06C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8061F070  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8061F074  C0 21 00 08 */	lfs f1, 8(r1)
/* 8061F078  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8061F07C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061F080  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8061F084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061F088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061F08C  7C 08 03 A6 */	mtlr r0
/* 8061F090  38 21 00 20 */	addi r1, r1, 0x20
/* 8061F094  4E 80 00 20 */	blr 
