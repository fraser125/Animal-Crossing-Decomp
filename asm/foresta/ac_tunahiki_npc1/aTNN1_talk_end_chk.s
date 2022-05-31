lbl_8058F48C:
/* 8058F48C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058F490  7C 08 02 A6 */	mflr r0
/* 8058F494  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058F498  39 61 00 20 */	addi r11, r1, 0x20
/* 8058F49C  4B B0 BA 35 */	bl func_8009AED0
/* 8058F4A0  7C 7E 1B 78 */	mr r30, r3
/* 8058F4A4  7C 9C 23 78 */	mr r28, r4
/* 8058F4A8  3B E0 00 00 */	li r31, 0
/* 8058F4AC  38 60 00 0E */	li r3, 0xe
/* 8058F4B0  38 80 00 09 */	li r4, 9
/* 8058F4B4  4B E0 E9 19 */	bl mEv_get_save_area
/* 8058F4B8  81 9E 09 98 */	lwz r12, 0x998(r30)
/* 8058F4BC  7C 7D 1B 78 */	mr r29, r3
/* 8058F4C0  7F C3 F3 78 */	mr r3, r30
/* 8058F4C4  7F 84 E3 78 */	mr r4, r28
/* 8058F4C8  7D 89 03 A6 */	mtctr r12
/* 8058F4CC  4E 80 04 21 */	bctrl 
/* 8058F4D0  7F C4 F3 78 */	mr r4, r30
/* 8058F4D4  38 60 00 08 */	li r3, 8
/* 8058F4D8  4B E0 AD 8D */	bl mDemo_Check
/* 8058F4DC  2C 03 00 00 */	cmpwi r3, 0
/* 8058F4E0  40 82 00 4C */	bne lbl_8058F52C
/* 8058F4E4  7F C4 F3 78 */	mr r4, r30
/* 8058F4E8  38 60 00 07 */	li r3, 7
/* 8058F4EC  4B E0 AD 79 */	bl mDemo_Check
/* 8058F4F0  2C 03 00 00 */	cmpwi r3, 0
/* 8058F4F4  40 82 00 38 */	bne lbl_8058F52C
/* 8058F4F8  88 BE 09 A6 */	lbz r5, 0x9a6(r30)
/* 8058F4FC  7F C3 F3 78 */	mr r3, r30
/* 8058F500  7F 84 E3 78 */	mr r4, r28
/* 8058F504  48 00 08 DD */	bl aTNN1_setup_think_proc
/* 8058F508  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8058F50C  38 80 00 20 */	li r4, 0x20
/* 8058F510  A0 BD 00 12 */	lhz r5, 0x12(r29)
/* 8058F514  3B E0 00 01 */	li r31, 1
/* 8058F518  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058F51C  38 03 2F A1 */	addi r0, r3, 0x2fa1
/* 8058F520  7C 80 00 30 */	slw r0, r4, r0
/* 8058F524  7C A0 00 78 */	andc r0, r5, r0
/* 8058F528  B0 1D 00 12 */	sth r0, 0x12(r29)
lbl_8058F52C:
/* 8058F52C  A0 9D 00 16 */	lhz r4, 0x16(r29)
/* 8058F530  3C 00 43 30 */	lis r0, 0x4330
/* 8058F534  3C 60 80 65 */	lis r3, lit_532@ha /* 0x80649C0C@ha */
/* 8058F538  3C A0 80 65 */	lis r5, lit_530@ha /* 0x80649C04@ha */
/* 8058F53C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8058F540  39 61 00 20 */	addi r11, r1, 0x20
/* 8058F544  C8 23 9C 0C */	lfd f1, lit_532@l(r3)  /* 0x80649C0C@l */
/* 8058F548  7F E3 FB 78 */	mr r3, r31
/* 8058F54C  90 01 00 08 */	stw r0, 8(r1)
/* 8058F550  C0 45 9C 04 */	lfs f2, lit_530@l(r5)  /* 0x80649C04@l */
/* 8058F554  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058F558  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058F55C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058F560  D0 1E 01 B8 */	stfs f0, 0x1b8(r30)
/* 8058F564  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8058F568  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8058F56C  4B B0 B9 B1 */	bl func_8009AF1C
/* 8058F570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058F574  7C 08 03 A6 */	mtlr r0
/* 8058F578  38 21 00 20 */	addi r1, r1, 0x20
/* 8058F57C  4E 80 00 20 */	blr 
