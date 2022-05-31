lbl_805B7D60:
/* 805B7D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7D64  7C 08 02 A6 */	mflr r0
/* 805B7D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B7D70  93 C1 00 08 */	stw r30, 8(r1)
/* 805B7D74  7C 7E 1B 78 */	mr r30, r3
/* 805B7D78  7C 83 23 78 */	mr r3, r4
/* 805B7D7C  4B E2 18 C5 */	bl get_player_actor_withoutCheck
/* 805B7D80  28 03 00 00 */	cmplwi r3, 0
/* 805B7D84  3B E0 00 00 */	li r31, 0
/* 805B7D88  40 82 00 0C */	bne lbl_805B7D94
/* 805B7D8C  38 60 00 00 */	li r3, 0
/* 805B7D90  48 00 00 84 */	b lbl_805B7E14
lbl_805B7D94:
/* 805B7D94  3C A0 80 65 */	lis r5, lit_494@ha /* 0x8064AA40@ha */
/* 805B7D98  3C 80 80 65 */	lis r4, lit_495@ha /* 0x8064AA44@ha */
/* 805B7D9C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805B7DA0  C0 45 AA 40 */	lfs f2, lit_494@l(r5)  /* 0x8064AA40@l */
/* 805B7DA4  C0 24 AA 44 */	lfs f1, lit_495@l(r4)  /* 0x8064AA44@l */
/* 805B7DA8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B7DAC  EC 43 10 28 */	fsubs f2, f3, f2
/* 805B7DB0  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805B7DB4  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7DB8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805B7DBC  EC 43 10 28 */	fsubs f2, f3, f2
/* 805B7DC0  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805B7DC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B7DC8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B7DCC  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805B7DD0  28 00 40 00 */	cmplwi r0, 0x4000
/* 805B7DD4  EC 00 00 32 */	fmuls f0, f0, f0
/* 805B7DD8  EC 21 00 2A */	fadds f1, f1, f0
/* 805B7DDC  40 81 00 34 */	ble lbl_805B7E10
/* 805B7DE0  28 00 80 00 */	cmplwi r0, 0x8000
/* 805B7DE4  40 80 00 2C */	bge lbl_805B7E10
/* 805B7DE8  3C 60 80 65 */	lis r3, lit_496@ha /* 0x8064AA48@ha */
/* 805B7DEC  C0 03 AA 48 */	lfs f0, lit_496@l(r3)  /* 0x8064AA48@l */
/* 805B7DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B7DF4  40 80 00 1C */	bge lbl_805B7E10
/* 805B7DF8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805B7DFC  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805B7E00  4B DD E1 11 */	bl chkTrigger
/* 805B7E04  2C 03 00 00 */	cmpwi r3, 0
/* 805B7E08  41 82 00 08 */	beq lbl_805B7E10
/* 805B7E0C  3B E0 00 02 */	li r31, 2
lbl_805B7E10:
/* 805B7E10  7F E3 FB 78 */	mr r3, r31
lbl_805B7E14:
/* 805B7E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B7E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B7E1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B7E20  7C 08 03 A6 */	mtlr r0
/* 805B7E24  38 21 00 10 */	addi r1, r1, 0x10
/* 805B7E28  4E 80 00 20 */	blr 
