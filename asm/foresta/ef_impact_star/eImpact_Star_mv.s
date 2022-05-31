lbl_80610EAC:
/* 80610EAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80610EB0  7C 08 02 A6 */	mflr r0
/* 80610EB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80610EB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80610EBC  7C 7F 1B 78 */	mr r31, r3
/* 80610EC0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80610EC4  7C 65 1B 78 */	mr r5, r3
/* 80610EC8  38 9F 00 28 */	addi r4, r31, 0x28
/* 80610ECC  4B DA A0 79 */	bl xyz_t_add
/* 80610ED0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80610ED4  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80610ED8  7C 65 1B 78 */	mr r5, r3
/* 80610EDC  4B DA A0 69 */	bl xyz_t_add
/* 80610EE0  3C 60 80 65 */	lis r3, lit_430@ha /* 0x8064C36C@ha */
/* 80610EE4  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064C374@ha */
/* 80610EE8  38 A3 C3 6C */	addi r5, r3, lit_430@l /* 0x8064C36C@l */
/* 80610EEC  C8 24 C3 74 */	lfd f1, lit_431@l(r4)  /* 0x8064C374@l */
/* 80610EF0  C8 45 00 00 */	lfd f2, 0(r5)
/* 80610EF4  3C 60 80 65 */	lis r3, lit_432@ha /* 0x8064C37C@ha */
/* 80610EF8  C8 03 C3 7C */	lfd f0, lit_432@l(r3)  /* 0x8064C37C@l */
/* 80610EFC  FC C0 10 34 */	frsqrte f6, f2
/* 80610F00  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 80610F04  FD 00 10 34 */	frsqrte f8, f2
/* 80610F08  FD 20 10 34 */	frsqrte f9, f2
/* 80610F0C  FC 86 01 B2 */	fmul f4, f6, f6
/* 80610F10  FC 68 02 32 */	fmul f3, f8, f8
/* 80610F14  FC A2 01 32 */	fmul f5, f2, f4
/* 80610F18  FC 82 00 F2 */	fmul f4, f2, f3
/* 80610F1C  FC C1 01 B2 */	fmul f6, f1, f6
/* 80610F20  FC A0 28 28 */	fsub f5, f0, f5
/* 80610F24  FC 69 02 72 */	fmul f3, f9, f9
/* 80610F28  FD 46 01 72 */	fmul f10, f6, f5
/* 80610F2C  FC A1 02 32 */	fmul f5, f1, f8
/* 80610F30  FC CA 02 B2 */	fmul f6, f10, f10
/* 80610F34  FC 80 20 28 */	fsub f4, f0, f4
/* 80610F38  FC 62 00 F2 */	fmul f3, f2, f3
/* 80610F3C  FD 65 01 32 */	fmul f11, f5, f4
/* 80610F40  FC C2 01 B2 */	fmul f6, f2, f6
/* 80610F44  FC AB 02 F2 */	fmul f5, f11, f11
/* 80610F48  FC 81 02 72 */	fmul f4, f1, f9
/* 80610F4C  FC 60 18 28 */	fsub f3, f0, f3
/* 80610F50  FD 01 02 B2 */	fmul f8, f1, f10
/* 80610F54  FD 84 00 F2 */	fmul f12, f4, f3
/* 80610F58  FC 80 30 28 */	fsub f4, f0, f6
/* 80610F5C  FC A2 01 72 */	fmul f5, f2, f5
/* 80610F60  FD 28 01 32 */	fmul f9, f8, f4
/* 80610F64  FC 6C 03 32 */	fmul f3, f12, f12
/* 80610F68  FD 09 02 72 */	fmul f8, f9, f9
/* 80610F6C  FC 62 00 F2 */	fmul f3, f2, f3
/* 80610F70  FC C1 02 F2 */	fmul f6, f1, f11
/* 80610F74  FC 80 28 28 */	fsub f4, f0, f5
/* 80610F78  FD 02 02 32 */	fmul f8, f2, f8
/* 80610F7C  FD 46 01 32 */	fmul f10, f6, f4
/* 80610F80  FC 81 03 32 */	fmul f4, f1, f12
/* 80610F84  FC 60 18 28 */	fsub f3, f0, f3
/* 80610F88  FC C1 02 72 */	fmul f6, f1, f9
/* 80610F8C  FD 24 00 F2 */	fmul f9, f4, f3
/* 80610F90  FC AA 02 B2 */	fmul f5, f10, f10
/* 80610F94  FC 60 40 28 */	fsub f3, f0, f8
/* 80610F98  FC 82 01 72 */	fmul f4, f2, f5
/* 80610F9C  FC A6 00 F2 */	fmul f5, f6, f3
/* 80610FA0  FC 69 02 72 */	fmul f3, f9, f9
/* 80610FA4  FC A2 01 72 */	fmul f5, f2, f5
/* 80610FA8  FC 80 20 28 */	fsub f4, f0, f4
/* 80610FAC  FC 62 00 F2 */	fmul f3, f2, f3
/* 80610FB0  FC C0 28 18 */	frsp f6, f5
/* 80610FB4  FC A1 02 B2 */	fmul f5, f1, f10
/* 80610FB8  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80610FBC  FC 21 02 72 */	fmul f1, f1, f9
/* 80610FC0  FC 00 18 28 */	fsub f0, f0, f3
/* 80610FC4  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 80610FC8  FC A5 01 32 */	fmul f5, f5, f4
/* 80610FCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80610FD0  FC 62 01 72 */	fmul f3, f2, f5
/* 80610FD4  EC 87 01 B2 */	fmuls f4, f7, f6
/* 80610FD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80610FDC  FC 60 18 18 */	frsp f3, f3
/* 80610FE0  D0 9F 00 1C */	stfs f4, 0x1c(r31)
/* 80610FE4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80610FE8  FC 00 00 18 */	frsp f0, f0
/* 80610FEC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80610FF0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80610FF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80610FF8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80610FFC  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80611000  C0 21 00 08 */	lfs f1, 8(r1)
/* 80611004  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80611008  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061100C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80611010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80611014  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80611018  7C 08 03 A6 */	mtlr r0
/* 8061101C  38 21 00 20 */	addi r1, r1, 0x20
/* 80611020  4E 80 00 20 */	blr 
