lbl_805462C0:
/* 805462C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805462C4  7C 08 02 A6 */	mflr r0
/* 805462C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805462CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805462D0  7C 7F 1B 78 */	mr r31, r3
/* 805462D4  38 60 00 00 */	li r3, 0
/* 805462D8  88 1F 00 05 */	lbz r0, 5(r31)
/* 805462DC  28 00 00 04 */	cmplwi r0, 4
/* 805462E0  41 81 00 40 */	bgt lbl_80546320
/* 805462E4  4B B1 6A 11 */	bl fqrand
/* 805462E8  3C 60 80 65 */	lis r3, lit_736@ha /* 0x8064949C@ha */
/* 805462EC  88 1F 00 05 */	lbz r0, 5(r31)
/* 805462F0  38 83 94 9C */	addi r4, r3, lit_736@l /* 0x8064949C@l */
/* 805462F4  3C 60 80 6A */	lis r3, hit_rate_magazine@ha /* 0x806A4A18@ha */
/* 805462F8  C0 04 00 00 */	lfs f0, 0(r4)
/* 805462FC  54 00 10 3A */	slwi r0, r0, 2
/* 80546300  38 63 4A 18 */	addi r3, r3, hit_rate_magazine@l /* 0x806A4A18@l */
/* 80546304  EC 20 00 72 */	fmuls f1, f0, f1
/* 80546308  7C 03 04 2E */	lfsx f0, r3, r0
/* 8054630C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80546310  40 80 00 0C */	bge lbl_8054631C
/* 80546314  38 60 00 03 */	li r3, 3
/* 80546318  48 00 00 08 */	b lbl_80546320
lbl_8054631C:
/* 8054631C  38 60 00 07 */	li r3, 7
lbl_80546320:
/* 80546320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80546328  7C 08 03 A6 */	mtlr r0
/* 8054632C  38 21 00 10 */	addi r1, r1, 0x10
/* 80546330  4E 80 00 20 */	blr 
