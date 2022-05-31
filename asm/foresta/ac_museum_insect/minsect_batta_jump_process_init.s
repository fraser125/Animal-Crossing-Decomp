lbl_80461D4C:
/* 80461D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80461D50  7C 08 02 A6 */	mflr r0
/* 80461D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80461D5C  7C 7F 1B 78 */	mr r31, r3
/* 80461D60  4B BF AF 95 */	bl fqrand
/* 80461D64  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80461D68  3C 80 80 64 */	lis r4, lit_465@ha /* 0x806445D4@ha */
/* 80461D6C  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80461D70  C0 04 45 D4 */	lfs f0, lit_465@l(r4)  /* 0x806445D4@l */
/* 80461D74  C0 45 00 00 */	lfs f2, 0(r5)
/* 80461D78  3C 60 80 46 */	lis r3, minsect_batta_jump_process@ha /* 0x80461DE0@ha */
/* 80461D7C  38 03 1D E0 */	addi r0, r3, minsect_batta_jump_process@l /* 0x80461DE0@l */
/* 80461D80  EC 22 08 2A */	fadds f1, f2, f1
/* 80461D84  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 80461D88  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80461D8C  90 1F 00 04 */	stw r0, 4(r31)
/* 80461D90  4B BF AF 65 */	bl fqrand
/* 80461D94  3C 60 80 64 */	lis r3, lit_1461@ha /* 0x80644744@ha */
/* 80461D98  C0 03 47 44 */	lfs f0, lit_1461@l(r3)  /* 0x80644744@l */
/* 80461D9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461DA0  41 81 00 1C */	bgt lbl_80461DBC
/* 80461DA4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80461DA8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80461DAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80461DB0  A8 03 16 98 */	lha r0, 0x1698(r3)
/* 80461DB4  2C 00 00 00 */	cmpwi r0, 0
/* 80461DB8  41 82 00 14 */	beq lbl_80461DCC
lbl_80461DBC:
/* 80461DBC  38 60 00 01 */	li r3, 1
/* 80461DC0  38 00 00 07 */	li r0, 7
/* 80461DC4  B0 7F 00 7A */	sth r3, 0x7a(r31)
/* 80461DC8  B0 1F 00 7C */	sth r0, 0x7c(r31)
lbl_80461DCC:
/* 80461DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80461DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80461DD4  7C 08 03 A6 */	mtlr r0
/* 80461DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80461DDC  4E 80 00 20 */	blr 
