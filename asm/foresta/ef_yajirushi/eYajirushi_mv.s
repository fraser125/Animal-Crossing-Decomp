lbl_806266B0:
/* 806266B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806266B4  7C 08 02 A6 */	mflr r0
/* 806266B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806266BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806266C0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 806266C4  38 80 00 04 */	li r4, 4
/* 806266C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806266CC  7C 7F 1B 78 */	mr r31, r3
/* 806266D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806266D4  3F C5 00 02 */	addis r30, r5, 2
/* 806266D8  38 A0 00 3C */	li r5, 0x3c
/* 806266DC  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 806266E0  81 86 00 10 */	lwz r12, 0x10(r6)
/* 806266E4  7D 89 03 A6 */	mtctr r12
/* 806266E8  4E 80 04 21 */	bctrl 
/* 806266EC  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 806266F0  28 00 00 00 */	cmplwi r0, 0
/* 806266F4  40 82 00 4C */	bne lbl_80626740
/* 806266F8  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 806266FC  3C A0 80 65 */	lis r5, data_8064D01C@ha /* 0x8064D01C@ha */
/* 80626700  A8 1F 00 00 */	lha r0, 0(r31)
/* 80626704  3C 80 80 65 */	lis r4, lit_397@ha /* 0x8064D020@ha */
/* 80626708  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8062670C  20 00 00 04 */	subfic r0, r0, 4
/* 80626710  C0 25 D0 1C */	lfs f1, data_8064D01C@l(r5)  /* 0x8064D01C@l */
/* 80626714  C0 44 D0 20 */	lfs f2, lit_397@l(r4)  /* 0x8064D020@l */
/* 80626718  7C 03 07 34 */	extsh r3, r0
/* 8062671C  38 80 00 00 */	li r4, 0
/* 80626720  38 A0 00 03 */	li r5, 3
/* 80626724  7D 89 03 A6 */	mtctr r12
/* 80626728  4E 80 04 21 */	bctrl 
/* 8062672C  FC 00 08 1E */	fctiwz f0, f1
/* 80626730  D8 01 00 08 */	stfd f0, 8(r1)
/* 80626734  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80626738  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8062673C  48 00 00 64 */	b lbl_806267A0
lbl_80626740:
/* 80626740  28 00 00 01 */	cmplwi r0, 1
/* 80626744  40 82 00 10 */	bne lbl_80626754
/* 80626748  38 00 00 FF */	li r0, 0xff
/* 8062674C  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80626750  48 00 00 50 */	b lbl_806267A0
lbl_80626754:
/* 80626754  28 00 00 02 */	cmplwi r0, 2
/* 80626758  40 82 00 48 */	bne lbl_806267A0
/* 8062675C  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 80626760  3C A0 80 65 */	lis r5, lit_397@ha /* 0x8064D020@ha */
/* 80626764  A8 1F 00 00 */	lha r0, 0(r31)
/* 80626768  3C 80 80 65 */	lis r4, data_8064D01C@ha /* 0x8064D01C@ha */
/* 8062676C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80626770  20 00 00 06 */	subfic r0, r0, 6
/* 80626774  C0 25 D0 20 */	lfs f1, lit_397@l(r5)  /* 0x8064D020@l */
/* 80626778  C0 44 D0 1C */	lfs f2, data_8064D01C@l(r4)  /* 0x8064D01C@l */
/* 8062677C  7C 03 07 34 */	extsh r3, r0
/* 80626780  38 80 00 00 */	li r4, 0
/* 80626784  38 A0 00 06 */	li r5, 6
/* 80626788  7D 89 03 A6 */	mtctr r12
/* 8062678C  4E 80 04 21 */	bctrl 
/* 80626790  FC 00 08 1E */	fctiwz f0, f1
/* 80626794  D8 01 00 08 */	stfd f0, 8(r1)
/* 80626798  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8062679C  B0 1F 00 4C */	sth r0, 0x4c(r31)
lbl_806267A0:
/* 806267A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806267A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806267A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806267AC  7C 08 03 A6 */	mtlr r0
/* 806267B0  38 21 00 20 */	addi r1, r1, 0x20
/* 806267B4  4E 80 00 20 */	blr 
