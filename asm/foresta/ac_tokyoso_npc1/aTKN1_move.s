lbl_8058D0EC:
/* 8058D0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D0F0  7C 08 02 A6 */	mflr r0
/* 8058D0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D0F8  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058D0FC  28 00 00 01 */	cmplwi r0, 1
/* 8058D100  40 82 00 10 */	bne lbl_8058D110
/* 8058D104  88 A3 09 AA */	lbz r5, 0x9aa(r3)
/* 8058D108  48 00 04 15 */	bl aTKN1_setup_think_proc
/* 8058D10C  48 00 00 4C */	b lbl_8058D158
lbl_8058D110:
/* 8058D110  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 8058D114  A8 03 09 A2 */	lha r0, 0x9a2(r3)
/* 8058D118  FC 00 00 1E */	fctiwz f0, f0
/* 8058D11C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058D120  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8058D124  7C A5 07 34 */	extsh r5, r5
/* 8058D128  7C 05 00 00 */	cmpw r5, r0
/* 8058D12C  40 82 00 24 */	bne lbl_8058D150
/* 8058D130  C0 03 09 08 */	lfs f0, 0x908(r3)
/* 8058D134  A8 03 09 A4 */	lha r0, 0x9a4(r3)
/* 8058D138  FC 00 00 1E */	fctiwz f0, f0
/* 8058D13C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058D140  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8058D144  7C A5 07 34 */	extsh r5, r5
/* 8058D148  7C 05 00 00 */	cmpw r5, r0
/* 8058D14C  41 82 00 0C */	beq lbl_8058D158
lbl_8058D150:
/* 8058D150  38 A0 00 01 */	li r5, 1
/* 8058D154  48 00 03 C9 */	bl aTKN1_setup_think_proc
lbl_8058D158:
/* 8058D158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D15C  7C 08 03 A6 */	mtlr r0
/* 8058D160  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D164  4E 80 00 20 */	blr 
