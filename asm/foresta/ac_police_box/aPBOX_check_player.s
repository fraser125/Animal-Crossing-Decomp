lbl_805B7524:
/* 805B7524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7528  7C 08 02 A6 */	mflr r0
/* 805B752C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B7534  7C 7F 1B 78 */	mr r31, r3
/* 805B7538  7C 83 23 78 */	mr r3, r4
/* 805B753C  4B E2 21 05 */	bl get_player_actor_withoutCheck
/* 805B7540  28 03 00 00 */	cmplwi r3, 0
/* 805B7544  38 C0 00 01 */	li r6, 1
/* 805B7548  40 82 00 0C */	bne lbl_805B7554
/* 805B754C  38 60 00 00 */	li r3, 0
/* 805B7550  48 00 00 70 */	b lbl_805B75C0
lbl_805B7554:
/* 805B7554  3C A0 80 65 */	lis r5, lit_499@ha /* 0x8064AA04@ha */
/* 805B7558  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064AA08@ha */
/* 805B755C  C0 65 AA 04 */	lfs f3, lit_499@l(r5)  /* 0x8064AA04@l */
/* 805B7560  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805B7564  C0 44 AA 08 */	lfs f2, lit_500@l(r4)  /* 0x8064AA08@l */
/* 805B7568  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805B756C  EC 63 08 2A */	fadds f3, f3, f1
/* 805B7570  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 805B7574  EC 42 00 2A */	fadds f2, f2, f0
/* 805B7578  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805B757C  EC 21 18 28 */	fsubs f1, f1, f3
/* 805B7580  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805B7584  EC 00 10 28 */	fsubs f0, f0, f2
/* 805B7588  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B758C  EC 21 00 72 */	fmuls f1, f1, f1
/* 805B7590  28 00 80 00 */	cmplwi r0, 0x8000
/* 805B7594  EC 00 00 32 */	fmuls f0, f0, f0
/* 805B7598  EC 21 00 2A */	fadds f1, f1, f0
/* 805B759C  40 81 00 20 */	ble lbl_805B75BC
/* 805B75A0  28 00 C0 00 */	cmplwi r0, 0xc000
/* 805B75A4  40 80 00 18 */	bge lbl_805B75BC
/* 805B75A8  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064AA0C@ha */
/* 805B75AC  C0 03 AA 0C */	lfs f0, lit_501@l(r3)  /* 0x8064AA0C@l */
/* 805B75B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B75B4  40 80 00 08 */	bge lbl_805B75BC
/* 805B75B8  38 C0 00 02 */	li r6, 2
lbl_805B75BC:
/* 805B75BC  7C C3 33 78 */	mr r3, r6
lbl_805B75C0:
/* 805B75C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B75C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B75C8  7C 08 03 A6 */	mtlr r0
/* 805B75CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805B75D0  4E 80 00 20 */	blr 
