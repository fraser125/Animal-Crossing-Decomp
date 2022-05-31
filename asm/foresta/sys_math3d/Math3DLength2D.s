lbl_80408D64:
/* 80408D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80408D68  7C 08 02 A6 */	mflr r0
/* 80408D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408D70  4B FF FF CD */	bl Math3DLengthSquare2D
/* 80408D74  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 80408D78  C0 03 36 E8 */	lfs f0, lit_275@l(r3)  /* 0x806436E8@l */
/* 80408D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80408D80  40 81 00 68 */	ble lbl_80408DE8
/* 80408D84  FC 40 08 34 */	frsqrte f2, f1
/* 80408D88  3C 60 80 64 */	lis r3, lit_516@ha /* 0x806436F4@ha */
/* 80408D8C  38 83 36 F4 */	addi r4, r3, lit_516@l /* 0x806436F4@l */
/* 80408D90  3C 60 80 64 */	lis r3, lit_517@ha /* 0x806436FC@ha */
/* 80408D94  C8 84 00 00 */	lfd f4, 0(r4)
/* 80408D98  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408D9C  C8 63 36 FC */	lfd f3, lit_517@l(r3)  /* 0x806436FC@l */
/* 80408DA0  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408DA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80408DA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80408DAC  FC 42 00 32 */	fmul f2, f2, f0
/* 80408DB0  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408DB4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408DB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80408DBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80408DC0  FC 42 00 32 */	fmul f2, f2, f0
/* 80408DC4  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408DC8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408DCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80408DD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80408DD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80408DD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80408DDC  FC 00 00 18 */	frsp f0, f0
/* 80408DE0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80408DE4  C0 21 00 08 */	lfs f1, 8(r1)
lbl_80408DE8:
/* 80408DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408DEC  7C 08 03 A6 */	mtlr r0
/* 80408DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80408DF4  4E 80 00 20 */	blr 
