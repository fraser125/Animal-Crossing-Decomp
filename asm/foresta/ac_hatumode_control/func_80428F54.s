lbl_80428F54:
/* 80428F54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80428F58  7C 08 02 A6 */	mflr r0
/* 80428F5C  38 80 00 07 */	li r4, 7
/* 80428F60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80428F64  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80428F68  7C 7F 1B 78 */	mr r31, r3
/* 80428F6C  38 60 00 01 */	li r3, 1
/* 80428F70  4B F7 4E 5D */	bl mEv_get_save_area
/* 80428F74  28 03 00 00 */	cmplwi r3, 0
/* 80428F78  41 82 00 84 */	beq lbl_80428FFC
/* 80428F7C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80428F80  28 00 00 01 */	cmplwi r0, 1
/* 80428F84  40 82 00 78 */	bne lbl_80428FFC
/* 80428F88  A8 83 00 06 */	lha r4, 6(r3)
/* 80428F8C  3C 00 43 30 */	lis r0, 0x4330
/* 80428F90  3C C0 80 64 */	lis r6, data_8064400C@ha /* 0x8064400C@ha */
/* 80428F94  90 01 00 08 */	stw r0, 8(r1)
/* 80428F98  38 A4 00 14 */	addi r5, r4, 0x14
/* 80428F9C  C8 26 40 0C */	lfd f1, data_8064400C@l(r6)  /* 0x8064400C@l */
/* 80428FA0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80428FA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80428FA8  38 80 00 01 */	li r4, 1
/* 80428FAC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80428FB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80428FB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80428FB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80428FBC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80428FC0  A8 A3 00 08 */	lha r5, 8(r3)
/* 80428FC4  38 05 00 28 */	addi r0, r5, 0x28
/* 80428FC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80428FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428FD0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80428FD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80428FD8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80428FDC  A8 03 00 0A */	lha r0, 0xa(r3)
/* 80428FE0  7F E3 FB 78 */	mr r3, r31
/* 80428FE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80428FE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80428FEC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80428FF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80428FF4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80428FF8  48 00 04 85 */	bl aHTC_setup_move_proc
lbl_80428FFC:
/* 80428FFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80429000  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80429004  7C 08 03 A6 */	mtlr r0
/* 80429008  38 21 00 30 */	addi r1, r1, 0x30
/* 8042900C  4E 80 00 20 */	blr 
