lbl_80468F00:
/* 80468F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80468F04  7C 08 02 A6 */	mflr r0
/* 80468F08  3C 80 80 64 */	lis r4, lit_3259@ha /* 0x80644830@ha */
/* 80468F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80468F10  C0 04 48 30 */	lfs f0, lit_3259@l(r4)  /* 0x80644830@l */
/* 80468F14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80468F18  7C 7F 1B 78 */	mr r31, r3
/* 80468F1C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80468F20  4B BF 3D D5 */	bl fqrand
/* 80468F24  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 80468F28  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 80468F2C  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 80468F30  C0 03 46 34 */	lfs f0, lit_586@l(r3)  /* 0x80644634@l */
/* 80468F34  EC 22 00 72 */	fmuls f1, f2, f1
/* 80468F38  FC 20 08 1E */	fctiwz f1, f1
/* 80468F3C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80468F40  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80468F44  38 03 00 32 */	addi r0, r3, 0x32
/* 80468F48  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80468F4C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80468F50  A8 1F 00 78 */	lha r0, 0x78(r31)
/* 80468F54  B0 1F 00 7E */	sth r0, 0x7e(r31)
/* 80468F58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80468F5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80468F60  7C 08 03 A6 */	mtlr r0
/* 80468F64  38 21 00 20 */	addi r1, r1, 0x20
/* 80468F68  4E 80 00 20 */	blr 