lbl_80577858:
/* 80577858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057785C  7C 08 02 A6 */	mflr r0
/* 80577860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80577864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80577868  7C 7F 1B 78 */	mr r31, r3
/* 8057786C  38 60 00 00 */	li r3, 0
/* 80577870  88 1F 00 05 */	lbz r0, 5(r31)
/* 80577874  28 00 00 04 */	cmplwi r0, 4
/* 80577878  41 81 00 40 */	bgt lbl_805778B8
/* 8057787C  4B AE 54 79 */	bl fqrand
/* 80577880  3C 60 80 65 */	lis r3, lit_722@ha /* 0x806499D4@ha */
/* 80577884  88 1F 00 05 */	lbz r0, 5(r31)
/* 80577888  38 83 99 D4 */	addi r4, r3, lit_722@l /* 0x806499D4@l */
/* 8057788C  3C 60 80 6C */	lis r3, hit_rate_magazine@ha /* 0x806C01F0@ha */
/* 80577890  C0 04 00 00 */	lfs f0, 0(r4)
/* 80577894  54 00 10 3A */	slwi r0, r0, 2
/* 80577898  38 63 01 F0 */	addi r3, r3, hit_rate_magazine@l /* 0x806C01F0@l */
/* 8057789C  EC 20 00 72 */	fmuls f1, f0, f1
/* 805778A0  7C 03 04 2E */	lfsx f0, r3, r0
/* 805778A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805778A8  40 80 00 0C */	bge lbl_805778B4
/* 805778AC  38 60 00 03 */	li r3, 3
/* 805778B0  48 00 00 08 */	b lbl_805778B8
lbl_805778B4:
/* 805778B4  38 60 00 07 */	li r3, 7
lbl_805778B8:
/* 805778B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805778BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805778C0  7C 08 03 A6 */	mtlr r0
/* 805778C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805778C8  4E 80 00 20 */	blr 
