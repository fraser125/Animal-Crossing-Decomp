lbl_80477878:
/* 80477878  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047787C  7C 08 02 A6 */	mflr r0
/* 80477880  7C A6 2B 78 */	mr r6, r5
/* 80477884  90 01 00 34 */	stw r0, 0x34(r1)
/* 80477888  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8047788C  28 00 00 05 */	cmplwi r0, 5
/* 80477890  40 82 00 60 */	bne lbl_804778F0
/* 80477894  80 E4 00 00 */	lwz r7, 0(r4)
/* 80477898  3C A0 80 64 */	lis r5, lit_885@ha /* 0x806449F4@ha */
/* 8047789C  80 04 00 08 */	lwz r0, 8(r4)
/* 804778A0  90 E1 00 08 */	stw r7, 8(r1)
/* 804778A4  80 84 00 04 */	lwz r4, 4(r4)
/* 804778A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804778AC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804778B0  C0 65 49 F4 */	lfs f3, lit_885@l(r5)  /* 0x806449F4@l */
/* 804778B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804778B8  EC 41 18 28 */	fsubs f2, f1, f3
/* 804778BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 804778C0  EC 00 18 28 */	fsubs f0, f0, f3
/* 804778C4  EC 22 18 24 */	fdivs f1, f2, f3
/* 804778C8  D0 41 00 08 */	stfs f2, 8(r1)
/* 804778CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804778D0  EC 00 18 24 */	fdivs f0, f0, f3
/* 804778D4  FC 20 08 1E */	fctiwz f1, f1
/* 804778D8  FC 00 00 1E */	fctiwz f0, f0
/* 804778DC  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 804778E0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804778E4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 804778E8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804778EC  48 00 00 34 */	b lbl_80477920
lbl_804778F0:
/* 804778F0  3C A0 80 64 */	lis r5, lit_885@ha /* 0x806449F4@ha */
/* 804778F4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804778F8  C0 45 49 F4 */	lfs f2, lit_885@l(r5)  /* 0x806449F4@l */
/* 804778FC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80477900  EC 21 10 24 */	fdivs f1, f1, f2
/* 80477904  EC 00 10 24 */	fdivs f0, f0, f2
/* 80477908  FC 20 08 1E */	fctiwz f1, f1
/* 8047790C  FC 00 00 1E */	fctiwz f0, f0
/* 80477910  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 80477914  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80477918  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8047791C  80 A1 00 1C */	lwz r5, 0x1c(r1)
lbl_80477920:
/* 80477920  4B FF FE DD */	bl func_804777FC
/* 80477924  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80477928  7C 08 03 A6 */	mtlr r0
/* 8047792C  38 21 00 30 */	addi r1, r1, 0x30
/* 80477930  4E 80 00 20 */	blr 