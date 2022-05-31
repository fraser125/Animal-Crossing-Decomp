lbl_804AB0A8:
/* 804AB0A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AB0AC  7C 08 02 A6 */	mflr r0
/* 804AB0B0  3C 80 80 64 */	lis r4, data_80645E4C@ha /* 0x80645E4C@ha */
/* 804AB0B4  38 A0 00 03 */	li r5, 3
/* 804AB0B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AB0BC  38 C0 00 03 */	li r6, 3
/* 804AB0C0  C0 04 5E 4C */	lfs f0, data_80645E4C@l(r4)  /* 0x80645E4C@l */
/* 804AB0C4  38 80 00 04 */	li r4, 4
/* 804AB0C8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 804AB0CC  38 E0 00 00 */	li r7, 0
/* 804AB0D0  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 804AB0D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AB0D8  FC 40 10 1E */	fctiwz f2, f2
/* 804AB0DC  FC 00 00 1E */	fctiwz f0, f0
/* 804AB0E0  D8 41 00 08 */	stfd f2, 8(r1)
/* 804AB0E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AB0E8  81 01 00 0C */	lwz r8, 0xc(r1)
/* 804AB0EC  81 21 00 14 */	lwz r9, 0x14(r1)
/* 804AB0F0  4B FF FE 69 */	bl func_804AAF58
/* 804AB0F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AB0F8  7C 08 03 A6 */	mtlr r0
/* 804AB0FC  38 21 00 20 */	addi r1, r1, 0x20
/* 804AB100  4E 80 00 20 */	blr 
