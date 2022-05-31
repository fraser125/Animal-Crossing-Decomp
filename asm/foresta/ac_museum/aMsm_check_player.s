lbl_805B46D0:
/* 805B46D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B46D4  7C 08 02 A6 */	mflr r0
/* 805B46D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B46DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B46E0  7C 7F 1B 78 */	mr r31, r3
/* 805B46E4  7C 83 23 78 */	mr r3, r4
/* 805B46E8  4B E2 4F 59 */	bl get_player_actor_withoutCheck
/* 805B46EC  28 03 00 00 */	cmplwi r3, 0
/* 805B46F0  38 A0 00 01 */	li r5, 1
/* 805B46F4  40 82 00 0C */	bne lbl_805B4700
/* 805B46F8  38 60 00 00 */	li r3, 0
/* 805B46FC  48 00 00 64 */	b lbl_805B4760
lbl_805B4700:
/* 805B4700  3C 80 80 65 */	lis r4, lit_498@ha /* 0x8064A948@ha */
/* 805B4704  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805B4708  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805B470C  C0 24 A9 48 */	lfs f1, lit_498@l(r4)  /* 0x8064A948@l */
/* 805B4710  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B4714  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805B4718  28 00 60 00 */	cmplwi r0, 0x6000
/* 805B471C  EC 61 00 2A */	fadds f3, f1, f0
/* 805B4720  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 805B4724  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805B4728  EC 21 10 28 */	fsubs f1, f1, f2
/* 805B472C  EC 00 18 28 */	fsubs f0, f0, f3
/* 805B4730  EC 21 00 72 */	fmuls f1, f1, f1
/* 805B4734  EC 00 00 32 */	fmuls f0, f0, f0
/* 805B4738  EC 21 00 2A */	fadds f1, f1, f0
/* 805B473C  40 81 00 20 */	ble lbl_805B475C
/* 805B4740  28 00 A0 00 */	cmplwi r0, 0xa000
/* 805B4744  40 80 00 18 */	bge lbl_805B475C
/* 805B4748  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064A94C@ha */
/* 805B474C  C0 03 A9 4C */	lfs f0, lit_499@l(r3)  /* 0x8064A94C@l */
/* 805B4750  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B4754  40 80 00 08 */	bge lbl_805B475C
/* 805B4758  38 A0 00 02 */	li r5, 2
lbl_805B475C:
/* 805B475C  7C A3 2B 78 */	mr r3, r5
lbl_805B4760:
/* 805B4760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B4764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B4768  7C 08 03 A6 */	mtlr r0
/* 805B476C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B4770  4E 80 00 20 */	blr 
