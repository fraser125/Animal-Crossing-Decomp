lbl_805B683C:
/* 805B683C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6840  7C 08 02 A6 */	mflr r0
/* 805B6844  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B684C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B6850  7C 7E 1B 78 */	mr r30, r3
/* 805B6854  7C 83 23 78 */	mr r3, r4
/* 805B6858  4B E2 2D E9 */	bl get_player_actor_withoutCheck
/* 805B685C  28 03 00 00 */	cmplwi r3, 0
/* 805B6860  3B E0 00 00 */	li r31, 0
/* 805B6864  40 82 00 0C */	bne lbl_805B6870
/* 805B6868  38 60 00 00 */	li r3, 0
/* 805B686C  48 00 00 84 */	b lbl_805B68F0
lbl_805B6870:
/* 805B6870  3C A0 80 65 */	lis r5, lit_497@ha /* 0x8064A9D4@ha */
/* 805B6874  3C 80 80 65 */	lis r4, lit_498@ha /* 0x8064A9D8@ha */
/* 805B6878  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805B687C  C0 45 A9 D4 */	lfs f2, lit_497@l(r5)  /* 0x8064A9D4@l */
/* 805B6880  C0 24 A9 D8 */	lfs f1, lit_498@l(r4)  /* 0x8064A9D8@l */
/* 805B6884  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B6888  EC 43 10 28 */	fsubs f2, f3, f2
/* 805B688C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805B6890  EC 01 00 2A */	fadds f0, f1, f0
/* 805B6894  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805B6898  EC 43 10 28 */	fsubs f2, f3, f2
/* 805B689C  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805B68A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B68A4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B68A8  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805B68AC  28 00 40 00 */	cmplwi r0, 0x4000
/* 805B68B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 805B68B4  EC 21 00 2A */	fadds f1, f1, f0
/* 805B68B8  40 81 00 34 */	ble lbl_805B68EC
/* 805B68BC  28 00 80 00 */	cmplwi r0, 0x8000
/* 805B68C0  40 80 00 2C */	bge lbl_805B68EC
/* 805B68C4  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064A9DC@ha */
/* 805B68C8  C0 03 A9 DC */	lfs f0, lit_499@l(r3)  /* 0x8064A9DC@l */
/* 805B68CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B68D0  40 80 00 1C */	bge lbl_805B68EC
/* 805B68D4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805B68D8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805B68DC  4B DD F6 35 */	bl chkTrigger
/* 805B68E0  2C 03 00 00 */	cmpwi r3, 0
/* 805B68E4  41 82 00 08 */	beq lbl_805B68EC
/* 805B68E8  3B E0 00 02 */	li r31, 2
lbl_805B68EC:
/* 805B68EC  7F E3 FB 78 */	mr r3, r31
lbl_805B68F0:
/* 805B68F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B68F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B68F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B68FC  7C 08 03 A6 */	mtlr r0
/* 805B6900  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6904  4E 80 00 20 */	blr 
