lbl_8045DC9C:
/* 8045DC9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045DCA0  7C 08 02 A6 */	mflr r0
/* 8045DCA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045DCA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045DCAC  7C 7F 1B 78 */	mr r31, r3
/* 8045DCB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045DCB4  7C 9E 23 78 */	mr r30, r4
/* 8045DCB8  4B FF E9 C1 */	bl get_now_mind_flag
/* 8045DCBC  B0 7F 00 8E */	sth r3, 0x8e(r31)
/* 8045DCC0  7F E3 FB 78 */	mr r3, r31
/* 8045DCC4  7F C4 F3 78 */	mr r4, r30
/* 8045DCC8  81 9F 00 04 */	lwz r12, 4(r31)
/* 8045DCCC  7D 89 03 A6 */	mtctr r12
/* 8045DCD0  4E 80 04 21 */	bctrl 
/* 8045DCD4  3C 60 80 64 */	lis r3, lit_761@ha /* 0x8064465C@ha */
/* 8045DCD8  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045DCDC  38 A3 46 5C */	addi r5, r3, lit_761@l /* 0x8064465C@l */
/* 8045DCE0  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045DCE4  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8045DCE8  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045DCEC  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8045DCF0  FC 60 30 34 */	frsqrte f3, f6
/* 8045DCF4  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045DCF8  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8045DCFC  C8 85 00 00 */	lfd f4, 0(r5)
/* 8045DD00  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045DD04  C0 44 00 00 */	lfs f2, 0(r4)
/* 8045DD08  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DD0C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045DD10  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DD14  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DD18  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DD1C  FC 63 00 72 */	fmul f3, f3, f1
/* 8045DD20  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DD24  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DD28  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DD2C  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DD30  FC 63 00 72 */	fmul f3, f3, f1
/* 8045DD34  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DD38  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DD3C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DD40  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DD44  FC 23 00 72 */	fmul f1, f3, f1
/* 8045DD48  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DD4C  FC 20 08 18 */	frsp f1, f1
/* 8045DD50  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045DD54  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045DD58  EC 22 08 28 */	fsubs f1, f2, f1
/* 8045DD5C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8045DD60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045DD64  40 81 00 54 */	ble lbl_8045DDB8
/* 8045DD68  FC 20 10 34 */	frsqrte f1, f2
/* 8045DD6C  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DD70  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DD74  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DD78  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DD7C  FC 21 00 32 */	fmul f1, f1, f0
/* 8045DD80  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DD84  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DD88  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DD8C  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DD90  FC 21 00 32 */	fmul f1, f1, f0
/* 8045DD94  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DD98  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DD9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DDA0  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DDA4  FC 01 00 32 */	fmul f0, f1, f0
/* 8045DDA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DDAC  FC 00 00 18 */	frsp f0, f0
/* 8045DDB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045DDB4  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8045DDB8:
/* 8045DDB8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045DDBC  A8 9F 00 72 */	lha r4, 0x72(r31)
/* 8045DDC0  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8045DDC4  38 7F 00 6A */	addi r3, r31, 0x6a
/* 8045DDC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045DDCC  38 A0 00 E3 */	li r5, 0xe3
/* 8045DDD0  38 C0 00 2D */	li r6, 0x2d
/* 8045DDD4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8045DDD8  4B F5 D5 39 */	bl add_calc_short_angle2
/* 8045DDDC  7F E3 FB 78 */	mr r3, r31
/* 8045DDE0  4B FF CE 05 */	bl func_8045ABE4
/* 8045DDE4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8045DDE8  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8045DDEC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8045DDF0  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8045DDF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8045DDF8  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8045DDFC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8045DE00  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8045DE04  EC 01 00 2A */	fadds f0, f1, f0
/* 8045DE08  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8045DE0C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8045DE10  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045DE14  FC 00 00 1E */	fctiwz f0, f0
/* 8045DE18  54 00 10 3A */	slwi r0, r0, 2
/* 8045DE1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8045DE20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8045DE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045DE28  54 00 10 3A */	slwi r0, r0, 2
/* 8045DE2C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8045DE30  28 00 00 00 */	cmplwi r0, 0
/* 8045DE34  40 82 00 10 */	bne lbl_8045DE44
/* 8045DE38  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045DE3C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045DE40  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8045DE44:
/* 8045DE44  3C 60 80 46 */	lis r3, minsect_chou_flower_process@ha /* 0x8045D278@ha */
/* 8045DE48  80 9F 00 04 */	lwz r4, 4(r31)
/* 8045DE4C  38 03 D2 78 */	addi r0, r3, minsect_chou_flower_process@l /* 0x8045D278@l */
/* 8045DE50  7C 04 00 40 */	cmplw r4, r0
/* 8045DE54  41 82 00 0C */	beq lbl_8045DE60
/* 8045DE58  7F E3 FB 78 */	mr r3, r31
/* 8045DE5C  4B FF E2 F9 */	bl minsect_tree_ObjCheck
lbl_8045DE60:
/* 8045DE60  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 8045DE64  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8045DE68  38 A3 46 64 */	addi r5, r3, lit_762@l /* 0x80644664@l */
/* 8045DE6C  C0 44 45 D8 */	lfs f2, lit_502@l(r4)  /* 0x806445D8@l */
/* 8045DE70  C0 25 00 00 */	lfs f1, 0(r5)
/* 8045DE74  7F E3 FB 78 */	mr r3, r31
/* 8045DE78  4B FF DD 21 */	bl minsect_fly_BGCheck
/* 8045DE7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045DE80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045DE84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045DE88  7C 08 03 A6 */	mtlr r0
/* 8045DE8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8045DE90  4E 80 00 20 */	blr 
