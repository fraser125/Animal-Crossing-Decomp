lbl_805A0EC4:
/* 805A0EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A0EC8  7C 08 02 A6 */	mflr r0
/* 805A0ECC  3C A0 80 65 */	lis r5, lit_585@ha /* 0x8064A304@ha */
/* 805A0ED0  C8 A5 A3 04 */	lfd f5, lit_585@l(r5)  /* 0x8064A304@l */
/* 805A0ED4  3C A0 80 65 */	lis r5, lit_587@ha /* 0x8064A314@ha */
/* 805A0ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A0EDC  FC 40 28 34 */	frsqrte f2, f5
/* 805A0EE0  C8 65 A3 14 */	lfd f3, lit_587@l(r5)  /* 0x8064A314@l */
/* 805A0EE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A0EE8  7C 7F 1B 78 */	mr r31, r3
/* 805A0EEC  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064A30C@ha */
/* 805A0EF0  38 A0 09 C4 */	li r5, 0x9c4
/* 805A0EF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A0EF8  38 C3 A3 0C */	addi r6, r3, lit_586@l /* 0x8064A30C@l */
/* 805A0EFC  C8 86 00 00 */	lfd f4, 0(r6)
/* 805A0F00  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A0F04  C0 03 A2 E0 */	lfs f0, lit_475@l(r3)  /* 0x8064A2E0@l */
/* 805A0F08  38 7F 00 DE */	addi r3, r31, 0xde
/* 805A0F0C  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0F10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A0F14  7C 9E 23 78 */	mr r30, r4
/* 805A0F18  38 C0 00 00 */	li r6, 0
/* 805A0F1C  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A0F20  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805A0F24  FC 23 08 28 */	fsub f1, f3, f1
/* 805A0F28  FC 42 00 72 */	fmul f2, f2, f1
/* 805A0F2C  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A0F30  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A0F34  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0F38  FC 23 08 28 */	fsub f1, f3, f1
/* 805A0F3C  FC 42 00 72 */	fmul f2, f2, f1
/* 805A0F40  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A0F44  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A0F48  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0F4C  FC 23 08 28 */	fsub f1, f3, f1
/* 805A0F50  FC 22 00 72 */	fmul f1, f2, f1
/* 805A0F54  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0F58  FC 20 08 18 */	frsp f1, f1
/* 805A0F5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A0F60  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A0F64  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A0F68  4B E1 A3 A9 */	bl add_calc_short_angle2
/* 805A0F6C  7F E3 FB 78 */	mr r3, r31
/* 805A0F70  4B FF F9 ED */	bl aITB_height_ctrl
/* 805A0F74  7F E3 FB 78 */	mr r3, r31
/* 805A0F78  4B FF FD C9 */	bl aITB_check_stop
/* 805A0F7C  2C 03 00 01 */	cmpwi r3, 1
/* 805A0F80  40 82 00 28 */	bne lbl_805A0FA8
/* 805A0F84  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 805A0F88  38 80 00 04 */	li r4, 4
/* 805A0F8C  2C 00 00 02 */	cmpwi r0, 2
/* 805A0F90  40 82 00 08 */	bne lbl_805A0F98
/* 805A0F94  38 80 00 08 */	li r4, 8
lbl_805A0F98:
/* 805A0F98  7F E3 FB 78 */	mr r3, r31
/* 805A0F9C  7F C5 F3 78 */	mr r5, r30
/* 805A0FA0  48 00 0B ED */	bl aITB_setupAction
/* 805A0FA4  48 00 00 10 */	b lbl_805A0FB4
lbl_805A0FA8:
/* 805A0FA8  7F E3 FB 78 */	mr r3, r31
/* 805A0FAC  7F C4 F3 78 */	mr r4, r30
/* 805A0FB0  4B FF FA F5 */	bl aITB_fly_ctrl
lbl_805A0FB4:
/* 805A0FB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A0FB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A0FBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A0FC0  7C 08 03 A6 */	mtlr r0
/* 805A0FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 805A0FC8  4E 80 00 20 */	blr 
