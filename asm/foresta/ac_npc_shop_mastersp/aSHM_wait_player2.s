lbl_8057DCAC:
/* 8057DCAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8057DCB0  7C 08 02 A6 */	mflr r0
/* 8057DCB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8057DCB8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8057DCBC  7C 9F 23 78 */	mr r31, r4
/* 8057DCC0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8057DCC4  7C 7E 1B 78 */	mr r30, r3
/* 8057DCC8  7F E3 FB 78 */	mr r3, r31
/* 8057DCCC  4B E5 B9 A5 */	bl mPlib_get_player_actor_main_index
/* 8057DCD0  2C 03 00 56 */	cmpwi r3, 0x56
/* 8057DCD4  41 82 00 68 */	beq lbl_8057DD3C
/* 8057DCD8  A8 7E 09 C8 */	lha r3, 0x9c8(r30)
/* 8057DCDC  3C 00 43 30 */	lis r0, 0x4330
/* 8057DCE0  3C A0 80 65 */	lis r5, lit_529@ha /* 0x80649A0C@ha */
/* 8057DCE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8057DCE8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8057DCEC  C8 25 9A 0C */	lfd f1, lit_529@l(r5)  /* 0x80649A0C@l */
/* 8057DCF0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8057DCF4  7F E3 FB 78 */	mr r3, r31
/* 8057DCF8  38 81 00 08 */	addi r4, r1, 8
/* 8057DCFC  38 A0 80 00 */	li r5, -32768
/* 8057DD00  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8057DD04  90 01 00 20 */	stw r0, 0x20(r1)
/* 8057DD08  EC 00 08 28 */	fsubs f0, f0, f1
/* 8057DD0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8057DD10  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8057DD14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8057DD18  A8 DE 09 CA */	lha r6, 0x9ca(r30)
/* 8057DD1C  38 06 00 4E */	addi r0, r6, 0x4e
/* 8057DD20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8057DD24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057DD28  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8057DD2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8057DD30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057DD34  4B E5 CA ED */	bl mPlib_request_main_rotate_octagon_type1
/* 8057DD38  48 00 00 14 */	b lbl_8057DD4C
lbl_8057DD3C:
/* 8057DD3C  7F C3 F3 78 */	mr r3, r30
/* 8057DD40  7F E4 FB 78 */	mr r4, r31
/* 8057DD44  38 A0 00 13 */	li r5, 0x13
/* 8057DD48  48 00 04 F9 */	bl aSHM_setup_think_proc
lbl_8057DD4C:
/* 8057DD4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057DD50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8057DD54  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8057DD58  7C 08 03 A6 */	mtlr r0
/* 8057DD5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8057DD60  4E 80 00 20 */	blr 
