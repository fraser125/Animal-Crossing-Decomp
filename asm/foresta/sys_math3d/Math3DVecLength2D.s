lbl_80408CA8:
/* 80408CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80408CAC  7C 08 02 A6 */	mflr r0
/* 80408CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408CB4  4B FF FF E5 */	bl Math3DVecLengthSquare2D
/* 80408CB8  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 80408CBC  C0 03 36 E8 */	lfs f0, lit_275@l(r3)  /* 0x806436E8@l */
/* 80408CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80408CC4  40 81 00 68 */	ble lbl_80408D2C
/* 80408CC8  FC 40 08 34 */	frsqrte f2, f1
/* 80408CCC  3C 60 80 64 */	lis r3, lit_516@ha /* 0x806436F4@ha */
/* 80408CD0  38 83 36 F4 */	addi r4, r3, lit_516@l /* 0x806436F4@l */
/* 80408CD4  3C 60 80 64 */	lis r3, lit_517@ha /* 0x806436FC@ha */
/* 80408CD8  C8 84 00 00 */	lfd f4, 0(r4)
/* 80408CDC  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408CE0  C8 63 36 FC */	lfd f3, lit_517@l(r3)  /* 0x806436FC@l */
/* 80408CE4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408CE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80408CEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80408CF0  FC 42 00 32 */	fmul f2, f2, f0
/* 80408CF4  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408CF8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408CFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80408D00  FC 03 00 28 */	fsub f0, f3, f0
/* 80408D04  FC 42 00 32 */	fmul f2, f2, f0
/* 80408D08  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408D0C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408D10  FC 01 00 32 */	fmul f0, f1, f0
/* 80408D14  FC 03 00 28 */	fsub f0, f3, f0
/* 80408D18  FC 02 00 32 */	fmul f0, f2, f0
/* 80408D1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80408D20  FC 00 00 18 */	frsp f0, f0
/* 80408D24  D0 01 00 08 */	stfs f0, 8(r1)
/* 80408D28  C0 21 00 08 */	lfs f1, 8(r1)
lbl_80408D2C:
/* 80408D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408D30  7C 08 03 A6 */	mtlr r0
/* 80408D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80408D38  4E 80 00 20 */	blr 
