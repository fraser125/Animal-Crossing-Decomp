lbl_805A6E08:
/* 805A6E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6E0C  7C 08 02 A6 */	mflr r0
/* 805A6E10  3C 80 80 65 */	lis r4, lit_653@ha /* 0x8064A510@ha */
/* 805A6E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6E18  C0 04 A5 10 */	lfs f0, lit_653@l(r4)  /* 0x8064A510@l */
/* 805A6E1C  C0 43 00 74 */	lfs f2, 0x74(r3)
/* 805A6E20  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A6E24  40 81 00 08 */	ble lbl_805A6E2C
/* 805A6E28  FC 40 00 90 */	fmr f2, f0
lbl_805A6E2C:
/* 805A6E2C  3C 60 80 65 */	lis r3, lit_653@ha /* 0x8064A510@ha */
/* 805A6E30  3C 80 80 65 */	lis r4, lit_842@ha /* 0x8064A530@ha */
/* 805A6E34  C0 03 A5 10 */	lfs f0, lit_653@l(r3)  /* 0x8064A510@l */
/* 805A6E38  C0 24 A5 30 */	lfs f1, lit_842@l(r4)  /* 0x8064A530@l */
/* 805A6E3C  EC 02 00 24 */	fdivs f0, f2, f0
/* 805A6E40  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A6E44  4B AF 3F 61 */	bl func_8009ADA4
/* 805A6E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6E4C  7C 08 03 A6 */	mtlr r0
/* 805A6E50  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6E54  4E 80 00 20 */	blr 
