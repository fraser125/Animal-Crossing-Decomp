lbl_804D59C8:
/* 804D59C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D59CC  7C 08 02 A6 */	mflr r0
/* 804D59D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D59D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D59D8  7C 7F 1B 78 */	mr r31, r3
/* 804D59DC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D59E0  80 9F 0F 30 */	lwz r4, 0xf30(r31)
/* 804D59E4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804D59E8  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 804D59EC  C0 64 00 30 */	lfs f3, 0x30(r4)
/* 804D59F0  EC 41 00 28 */	fsubs f2, f1, f0
/* 804D59F4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804D59F8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804D59FC  EC 23 08 28 */	fsubs f1, f3, f1
/* 804D5A00  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804D5A04  40 82 00 0C */	bne lbl_804D5A10
/* 804D5A08  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804D5A0C  41 82 00 9C */	beq lbl_804D5AA8
lbl_804D5A10:
/* 804D5A10  4B F3 65 F1 */	bl atans_table
/* 804D5A14  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804D5A18  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804D5A1C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804D5A20  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804D5A24  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804D5A28  C8 86 00 00 */	lfd f4, 0(r6)
/* 804D5A2C  FC 40 28 34 */	frsqrte f2, f5
/* 804D5A30  C8 65 00 00 */	lfd f3, 0(r5)
/* 804D5A34  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804D5A38  38 A0 09 C4 */	li r5, 0x9c4
/* 804D5A3C  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804D5A40  7C 64 1B 78 */	mr r4, r3
/* 804D5A44  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D5A48  38 7F 00 DE */	addi r3, r31, 0xde
/* 804D5A4C  38 C0 00 32 */	li r6, 0x32
/* 804D5A50  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D5A54  FC 25 00 72 */	fmul f1, f5, f1
/* 804D5A58  FC 23 08 28 */	fsub f1, f3, f1
/* 804D5A5C  FC 42 00 72 */	fmul f2, f2, f1
/* 804D5A60  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D5A64  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D5A68  FC 25 00 72 */	fmul f1, f5, f1
/* 804D5A6C  FC 23 08 28 */	fsub f1, f3, f1
/* 804D5A70  FC 42 00 72 */	fmul f2, f2, f1
/* 804D5A74  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D5A78  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D5A7C  FC 25 00 72 */	fmul f1, f5, f1
/* 804D5A80  FC 23 08 28 */	fsub f1, f3, f1
/* 804D5A84  FC 22 00 72 */	fmul f1, f2, f1
/* 804D5A88  FC 25 00 72 */	fmul f1, f5, f1
/* 804D5A8C  FC 20 08 18 */	frsp f1, f1
/* 804D5A90  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D5A94  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D5A98  EC 20 08 28 */	fsubs f1, f0, f1
/* 804D5A9C  4B EE 58 75 */	bl add_calc_short_angle2
/* 804D5AA0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804D5AA4  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_804D5AA8:
/* 804D5AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D5AAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D5AB0  7C 08 03 A6 */	mtlr r0
/* 804D5AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 804D5AB8  4E 80 00 20 */	blr 
