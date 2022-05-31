lbl_805BE410:
/* 805BE410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BE414  7C 08 02 A6 */	mflr r0
/* 805BE418  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BE41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BE420  7C 7F 1B 78 */	mr r31, r3
/* 805BE424  7C 83 23 78 */	mr r3, r4
/* 805BE428  4B E1 B2 19 */	bl get_player_actor_withoutCheck
/* 805BE42C  28 03 00 00 */	cmplwi r3, 0
/* 805BE430  41 82 00 64 */	beq lbl_805BE494
/* 805BE434  3C 80 80 65 */	lis r4, lit_508@ha /* 0x8064ABA0@ha */
/* 805BE438  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805BE43C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BE440  C0 24 AB A0 */	lfs f1, lit_508@l(r4)  /* 0x8064ABA0@l */
/* 805BE444  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805BE448  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805BE44C  28 00 60 00 */	cmplwi r0, 0x6000
/* 805BE450  EC 01 00 2A */	fadds f0, f1, f0
/* 805BE454  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805BE458  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805BE45C  EC 43 10 28 */	fsubs f2, f3, f2
/* 805BE460  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BE464  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805BE468  EC 00 00 32 */	fmuls f0, f0, f0
/* 805BE46C  EC 21 00 2A */	fadds f1, f1, f0
/* 805BE470  40 81 00 24 */	ble lbl_805BE494
/* 805BE474  28 00 A0 00 */	cmplwi r0, 0xa000
/* 805BE478  40 80 00 1C */	bge lbl_805BE494
/* 805BE47C  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064ABB0@ha */
/* 805BE480  C0 03 AB B0 */	lfs f0, lit_538@l(r3)  /* 0x8064ABB0@l */
/* 805BE484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BE488  40 80 00 0C */	bge lbl_805BE494
/* 805BE48C  38 60 00 01 */	li r3, 1
/* 805BE490  48 00 00 08 */	b lbl_805BE498
lbl_805BE494:
/* 805BE494  38 60 00 00 */	li r3, 0
lbl_805BE498:
/* 805BE498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BE49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BE4A0  7C 08 03 A6 */	mtlr r0
/* 805BE4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BE4A8  4E 80 00 20 */	blr 
