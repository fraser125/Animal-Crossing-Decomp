lbl_80380EE8:
/* 80380EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380EEC  7C 08 02 A6 */	mflr r0
/* 80380EF0  3C 80 80 64 */	lis r4, lit_474@ha /* 0x80641354@ha */
/* 80380EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80380EF8  C0 04 13 54 */	lfs f0, lit_474@l(r4)  /* 0x80641354@l */
/* 80380EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80380F00  7C 7F 1B 78 */	mr r31, r3
/* 80380F04  80 03 1C 50 */	lwz r0, 0x1c50(r3)
/* 80380F08  90 03 1C 00 */	stw r0, 0x1c00(r3)
/* 80380F0C  D0 03 1C 04 */	stfs f0, 0x1c04(r3)
/* 80380F10  4B FF DB 85 */	bl Camera2_setup_main_Base
/* 80380F14  38 00 00 00 */	li r0, 0
/* 80380F18  90 1F 1B F4 */	stw r0, 0x1bf4(r31)
/* 80380F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80380F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80380F24  7C 08 03 A6 */	mtlr r0
/* 80380F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80380F2C  4E 80 00 20 */	blr 
