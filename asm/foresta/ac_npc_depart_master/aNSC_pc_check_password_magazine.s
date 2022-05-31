lbl_8054DBD8:
/* 8054DBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DBDC  7C 08 02 A6 */	mflr r0
/* 8054DBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DBE8  7C 7F 1B 78 */	mr r31, r3
/* 8054DBEC  38 60 00 00 */	li r3, 0
/* 8054DBF0  88 1F 00 05 */	lbz r0, 5(r31)
/* 8054DBF4  28 00 00 04 */	cmplwi r0, 4
/* 8054DBF8  41 81 00 40 */	bgt lbl_8054DC38
/* 8054DBFC  4B B0 F0 F9 */	bl fqrand
/* 8054DC00  3C 60 80 65 */	lis r3, lit_747@ha /* 0x80649508@ha */
/* 8054DC04  88 1F 00 05 */	lbz r0, 5(r31)
/* 8054DC08  38 83 95 08 */	addi r4, r3, lit_747@l /* 0x80649508@l */
/* 8054DC0C  3C 60 80 6A */	lis r3, hit_rate_magazine@ha /* 0x806A5C2C@ha */
/* 8054DC10  C0 04 00 00 */	lfs f0, 0(r4)
/* 8054DC14  54 00 10 3A */	slwi r0, r0, 2
/* 8054DC18  38 63 5C 2C */	addi r3, r3, hit_rate_magazine@l /* 0x806A5C2C@l */
/* 8054DC1C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8054DC20  7C 03 04 2E */	lfsx f0, r3, r0
/* 8054DC24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054DC28  40 80 00 0C */	bge lbl_8054DC34
/* 8054DC2C  38 60 00 03 */	li r3, 3
/* 8054DC30  48 00 00 08 */	b lbl_8054DC38
lbl_8054DC34:
/* 8054DC34  38 60 00 07 */	li r3, 7
lbl_8054DC38:
/* 8054DC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DC3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DC40  7C 08 03 A6 */	mtlr r0
/* 8054DC44  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DC48  4E 80 00 20 */	blr 
