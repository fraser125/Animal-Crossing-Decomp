lbl_8058D168:
/* 8058D168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058D16C  7C 08 02 A6 */	mflr r0
/* 8058D170  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058D174  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058D178  7C 9F 23 78 */	mr r31, r4
/* 8058D17C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058D180  7C 7E 1B 78 */	mr r30, r3
/* 8058D184  4B FF F5 39 */	bl aTKN1_local_redy_check
/* 8058D188  2C 03 00 00 */	cmpwi r3, 0
/* 8058D18C  40 82 00 74 */	bne lbl_8058D200
/* 8058D190  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8058D194  28 00 00 01 */	cmplwi r0, 1
/* 8058D198  40 82 00 18 */	bne lbl_8058D1B0
/* 8058D19C  88 BE 09 AA */	lbz r5, 0x9aa(r30)
/* 8058D1A0  7F C3 F3 78 */	mr r3, r30
/* 8058D1A4  7F E4 FB 78 */	mr r4, r31
/* 8058D1A8  48 00 03 75 */	bl aTKN1_setup_think_proc
/* 8058D1AC  48 00 00 54 */	b lbl_8058D200
lbl_8058D1B0:
/* 8058D1B0  C0 1E 09 04 */	lfs f0, 0x904(r30)
/* 8058D1B4  A8 1E 09 A2 */	lha r0, 0x9a2(r30)
/* 8058D1B8  FC 00 00 1E */	fctiwz f0, f0
/* 8058D1BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058D1C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8058D1C4  7C 63 07 34 */	extsh r3, r3
/* 8058D1C8  7C 03 00 00 */	cmpw r3, r0
/* 8058D1CC  40 82 00 24 */	bne lbl_8058D1F0
/* 8058D1D0  C0 1E 09 08 */	lfs f0, 0x908(r30)
/* 8058D1D4  A8 1E 09 A4 */	lha r0, 0x9a4(r30)
/* 8058D1D8  FC 00 00 1E */	fctiwz f0, f0
/* 8058D1DC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058D1E0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8058D1E4  7C 63 07 34 */	extsh r3, r3
/* 8058D1E8  7C 03 00 00 */	cmpw r3, r0
/* 8058D1EC  41 82 00 14 */	beq lbl_8058D200
lbl_8058D1F0:
/* 8058D1F0  88 BE 09 AA */	lbz r5, 0x9aa(r30)
/* 8058D1F4  7F C3 F3 78 */	mr r3, r30
/* 8058D1F8  7F E4 FB 78 */	mr r4, r31
/* 8058D1FC  48 00 03 21 */	bl aTKN1_setup_think_proc
lbl_8058D200:
/* 8058D200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058D204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058D208  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058D20C  7C 08 03 A6 */	mtlr r0
/* 8058D210  38 21 00 20 */	addi r1, r1, 0x20
/* 8058D214  4E 80 00 20 */	blr 
