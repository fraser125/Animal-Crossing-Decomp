lbl_8062E650:
/* 8062E650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E654  7C 08 02 A6 */	mflr r0
/* 8062E658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E65C  4B FF FF 75 */	bl sAdo_Get_WalkLabel
/* 8062E660  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8062E664  38 03 BD FF */	addi r0, r3, -16897
/* 8062E668  28 00 00 08 */	cmplwi r0, 8
/* 8062E66C  41 81 00 5C */	bgt lbl_8062E6C8
/* 8062E670  3C 60 80 6D */	lis r3, lit_699@ha /* 0x806D4C10@ha */
/* 8062E674  54 00 10 3A */	slwi r0, r0, 2
/* 8062E678  38 63 4C 10 */	addi r3, r3, lit_699@l /* 0x806D4C10@l */
/* 8062E67C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8062E680  7C 09 03 A6 */	mtctr r0
/* 8062E684  4E 80 04 20 */	bctr 
lbl_8062E688:
/* 8062E688  38 60 00 0E */	li r3, 0xe
/* 8062E68C  48 00 00 40 */	b lbl_8062E6CC
lbl_8062E690:
/* 8062E690  38 60 00 13 */	li r3, 0x13
/* 8062E694  48 00 00 38 */	b lbl_8062E6CC
lbl_8062E698:
/* 8062E698  38 60 00 0F */	li r3, 0xf
/* 8062E69C  48 00 00 30 */	b lbl_8062E6CC
lbl_8062E6A0:
/* 8062E6A0  38 60 00 10 */	li r3, 0x10
/* 8062E6A4  48 00 00 28 */	b lbl_8062E6CC
lbl_8062E6A8:
/* 8062E6A8  38 60 00 11 */	li r3, 0x11
/* 8062E6AC  48 00 00 20 */	b lbl_8062E6CC
lbl_8062E6B0:
/* 8062E6B0  38 60 00 12 */	li r3, 0x12
/* 8062E6B4  48 00 00 18 */	b lbl_8062E6CC
lbl_8062E6B8:
/* 8062E6B8  38 60 01 56 */	li r3, 0x156
/* 8062E6BC  48 00 00 10 */	b lbl_8062E6CC
lbl_8062E6C0:
/* 8062E6C0  38 60 01 57 */	li r3, 0x157
/* 8062E6C4  48 00 00 08 */	b lbl_8062E6CC
lbl_8062E6C8:
/* 8062E6C8  38 60 00 0F */	li r3, 0xf
lbl_8062E6CC:
/* 8062E6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E6D0  7C 08 03 A6 */	mtlr r0
/* 8062E6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E6D8  4E 80 00 20 */	blr 
