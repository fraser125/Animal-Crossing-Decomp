lbl_805A8A58:
/* 805A8A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8A5C  7C 08 02 A6 */	mflr r0
/* 805A8A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8A68  7C 7F 1B 78 */	mr r31, r3
/* 805A8A6C  7C 83 23 78 */	mr r3, r4
/* 805A8A70  4B E3 0B D1 */	bl get_player_actor_withoutCheck
/* 805A8A74  28 03 00 00 */	cmplwi r3, 0
/* 805A8A78  38 A0 00 00 */	li r5, 0
/* 805A8A7C  40 82 00 0C */	bne lbl_805A8A88
/* 805A8A80  38 60 00 00 */	li r3, 0
/* 805A8A84  48 00 00 64 */	b lbl_805A8AE8
lbl_805A8A88:
/* 805A8A88  3C 80 80 65 */	lis r4, lit_580@ha /* 0x8064A554@ha */
/* 805A8A8C  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805A8A90  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805A8A94  C0 24 A5 54 */	lfs f1, lit_580@l(r4)  /* 0x8064A554@l */
/* 805A8A98  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805A8A9C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805A8AA0  28 00 60 00 */	cmplwi r0, 0x6000
/* 805A8AA4  EC 01 00 2A */	fadds f0, f1, f0
/* 805A8AA8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805A8AAC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805A8AB0  EC 43 10 28 */	fsubs f2, f3, f2
/* 805A8AB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 805A8AB8  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805A8ABC  EC 00 00 32 */	fmuls f0, f0, f0
/* 805A8AC0  EC 21 00 2A */	fadds f1, f1, f0
/* 805A8AC4  40 81 00 20 */	ble lbl_805A8AE4
/* 805A8AC8  28 00 A0 00 */	cmplwi r0, 0xa000
/* 805A8ACC  40 80 00 18 */	bge lbl_805A8AE4
/* 805A8AD0  3C 60 80 65 */	lis r3, lit_581@ha /* 0x8064A558@ha */
/* 805A8AD4  C0 03 A5 58 */	lfs f0, lit_581@l(r3)  /* 0x8064A558@l */
/* 805A8AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A8ADC  40 80 00 08 */	bge lbl_805A8AE4
/* 805A8AE0  38 A0 00 01 */	li r5, 1
lbl_805A8AE4:
/* 805A8AE4  7C A3 2B 78 */	mr r3, r5
lbl_805A8AE8:
/* 805A8AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8AEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8AF0  7C 08 03 A6 */	mtlr r0
/* 805A8AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8AF8  4E 80 00 20 */	blr 
