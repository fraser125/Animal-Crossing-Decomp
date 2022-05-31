lbl_804F9D38:
/* 804F9D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9D3C  7C 08 02 A6 */	mflr r0
/* 804F9D40  2C 05 00 00 */	cmpwi r5, 0
/* 804F9D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9D4C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F9D50  7C 9E 23 78 */	mr r30, r4
/* 804F9D54  41 82 00 8C */	beq lbl_804F9DE0
/* 804F9D58  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 804F9D5C  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804F9D60  2C 00 00 00 */	cmpwi r0, 0
/* 804F9D64  41 82 00 24 */	beq lbl_804F9D88
/* 804F9D68  A0 DF 00 0C */	lhz r6, 0xc(r31)
/* 804F9D6C  7F E7 FB 78 */	mr r7, r31
/* 804F9D70  A9 03 00 DE */	lha r8, 0xde(r3)
/* 804F9D74  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 804F9D78  38 80 00 01 */	li r4, 1
/* 804F9D7C  38 A0 00 0D */	li r5, 0xd
/* 804F9D80  4B EF 59 A9 */	bl mSM_open_submenu_new2
/* 804F9D84  48 00 00 5C */	b lbl_804F9DE0
lbl_804F9D88:
/* 804F9D88  4B FD B5 E5 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F9D8C  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 804F9D90  28 00 22 3B */	cmplwi r0, 0x223b
/* 804F9D94  40 82 00 28 */	bne lbl_804F9DBC
/* 804F9D98  38 60 00 03 */	li r3, 3
/* 804F9D9C  4B EE 49 C1 */	bl mPlib_Check_golden_item_get_demo_end
/* 804F9DA0  2C 03 00 00 */	cmpwi r3, 0
/* 804F9DA4  40 82 00 18 */	bne lbl_804F9DBC
/* 804F9DA8  7F C3 F3 78 */	mr r3, r30
/* 804F9DAC  38 80 00 03 */	li r4, 3
/* 804F9DB0  38 A0 00 22 */	li r5, 0x22
/* 804F9DB4  48 00 E6 E9 */	bl Player_actor_request_main_demo_get_golden_item_all
/* 804F9DB8  48 00 00 28 */	b lbl_804F9DE0
lbl_804F9DBC:
/* 804F9DBC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F9DC0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F9DC4  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F9DC8  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F9DCC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F9DD0  7F C3 F3 78 */	mr r3, r30
/* 804F9DD4  38 80 00 00 */	li r4, 0
/* 804F9DD8  38 A0 00 01 */	li r5, 1
/* 804F9DDC  4B FE BE 21 */	bl func_804E5BFC
lbl_804F9DE0:
/* 804F9DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9DE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F9DEC  7C 08 03 A6 */	mtlr r0
/* 804F9DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9DF4  4E 80 00 20 */	blr 
