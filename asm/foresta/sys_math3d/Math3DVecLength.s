lbl_80408E1C:
/* 80408E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80408E20  7C 08 02 A6 */	mflr r0
/* 80408E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408E28  4B FF FF D1 */	bl Math3DVecLengthSquare
/* 80408E2C  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80643704@ha */
/* 80408E30  C8 03 37 04 */	lfd f0, lit_557@l(r3)  /* 0x80643704@l */
/* 80408E34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80408E38  40 81 00 74 */	ble lbl_80408EAC
/* 80408E3C  FC 40 08 34 */	frsqrte f2, f1
/* 80408E40  3C 60 80 64 */	lis r3, lit_516@ha /* 0x806436F4@ha */
/* 80408E44  38 83 36 F4 */	addi r4, r3, lit_516@l /* 0x806436F4@l */
/* 80408E48  3C 60 80 64 */	lis r3, lit_517@ha /* 0x806436FC@ha */
/* 80408E4C  C8 84 00 00 */	lfd f4, 0(r4)
/* 80408E50  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408E54  C8 63 36 FC */	lfd f3, lit_517@l(r3)  /* 0x806436FC@l */
/* 80408E58  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408E5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80408E60  FC 03 00 28 */	fsub f0, f3, f0
/* 80408E64  FC 42 00 32 */	fmul f2, f2, f0
/* 80408E68  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408E6C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408E70  FC 01 00 32 */	fmul f0, f1, f0
/* 80408E74  FC 03 00 28 */	fsub f0, f3, f0
/* 80408E78  FC 42 00 32 */	fmul f2, f2, f0
/* 80408E7C  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408E80  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408E84  FC 01 00 32 */	fmul f0, f1, f0
/* 80408E88  FC 03 00 28 */	fsub f0, f3, f0
/* 80408E8C  FC 42 00 32 */	fmul f2, f2, f0
/* 80408E90  FC 02 00 B2 */	fmul f0, f2, f2
/* 80408E94  FC 44 00 B2 */	fmul f2, f4, f2
/* 80408E98  FC 01 00 32 */	fmul f0, f1, f0
/* 80408E9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80408EA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80408EA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80408EA8  48 00 00 2C */	b lbl_80408ED4
lbl_80408EAC:
/* 80408EAC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80408EB0  40 82 00 08 */	bne lbl_80408EB8
/* 80408EB4  48 00 00 20 */	b lbl_80408ED4
lbl_80408EB8:
/* 80408EB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80408EBC  41 82 00 10 */	beq lbl_80408ECC
/* 80408EC0  3C 60 80 22 */	lis r3, data_80218268@ha /* 0x80218268@ha */
/* 80408EC4  C0 03 82 68 */	lfs f0, data_80218268@l(r3)  /* 0x80218268@l */
/* 80408EC8  48 00 00 0C */	b lbl_80408ED4
lbl_80408ECC:
/* 80408ECC  3C 60 80 22 */	lis r3, __float_huge@ha /* 0x8021826C@ha */
/* 80408ED0  C0 03 82 6C */	lfs f0, __float_huge@l(r3)  /* 0x8021826C@l */
lbl_80408ED4:
/* 80408ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408ED8  FC 20 00 18 */	frsp f1, f0
/* 80408EDC  7C 08 03 A6 */	mtlr r0
/* 80408EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80408EE4  4E 80 00 20 */	blr 
