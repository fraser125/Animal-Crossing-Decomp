lbl_8058BCF0:
/* 8058BCF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058BCF4  7C 08 02 A6 */	mflr r0
/* 8058BCF8  3C 80 80 65 */	lis r4, lit_610@ha /* 0x80649BA8@ha */
/* 8058BCFC  38 A0 00 03 */	li r5, 3
/* 8058BD00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058BD04  38 C0 00 03 */	li r6, 3
/* 8058BD08  C0 24 9B A8 */	lfs f1, lit_610@l(r4)  /* 0x80649BA8@l */
/* 8058BD0C  38 80 00 04 */	li r4, 4
/* 8058BD10  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8058BD14  38 E0 00 00 */	li r7, 0
/* 8058BD18  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 8058BD1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8058BD20  FC 40 10 1E */	fctiwz f2, f2
/* 8058BD24  FC 00 00 1E */	fctiwz f0, f0
/* 8058BD28  D8 41 00 08 */	stfd f2, 8(r1)
/* 8058BD2C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8058BD30  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8058BD34  81 21 00 14 */	lwz r9, 0x14(r1)
/* 8058BD38  4B FF F9 15 */	bl aTKN0_set_request_act
/* 8058BD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058BD40  7C 08 03 A6 */	mtlr r0
/* 8058BD44  38 21 00 20 */	addi r1, r1, 0x20
/* 8058BD48  4E 80 00 20 */	blr 
