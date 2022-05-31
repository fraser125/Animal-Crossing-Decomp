lbl_8050BFBC:
/* 8050BFBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050BFC0  7C 08 02 A6 */	mflr r0
/* 8050BFC4  7C 87 23 78 */	mr r7, r4
/* 8050BFC8  38 C0 00 00 */	li r6, 0
/* 8050BFCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050BFD0  38 81 00 08 */	addi r4, r1, 8
/* 8050BFD4  39 00 00 00 */	li r8, 0
/* 8050BFD8  39 20 00 00 */	li r9, 0
/* 8050BFDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050BFE0  7C 7F 1B 78 */	mr r31, r3
/* 8050BFE4  39 40 00 00 */	li r10, 0
/* 8050BFE8  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8050BFEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050BFF0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050BFF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050BFF8  3C 63 00 02 */	addis r3, r3, 2
/* 8050BFFC  90 A1 00 08 */	stw r5, 8(r1)
/* 8050C000  38 A0 00 01 */	li r5, 1
/* 8050C004  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 8050C008  38 60 00 5E */	li r3, 0x5e
/* 8050C00C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050C010  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050C014  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050C018  81 8B 00 00 */	lwz r12, 0(r11)
/* 8050C01C  7D 89 03 A6 */	mtctr r12
/* 8050C020  4E 80 04 21 */	bctrl 
/* 8050C024  38 60 FF FF */	li r3, -1
/* 8050C028  4B E7 99 11 */	bl mCkRh_CalcCanLookGokiCount
/* 8050C02C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8050C030  38 60 00 5B */	li r3, 0x5b
/* 8050C034  48 12 1F 75 */	bl sAdo_OngenTrgStart
/* 8050C038  3C 60 80 65 */	lis r3, lit_436@ha /* 0x80648DF0@ha */
/* 8050C03C  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050C040  38 A3 8D F0 */	addi r5, r3, lit_436@l /* 0x80648DF0@l */
/* 8050C044  C0 24 8D F8 */	lfs f1, lit_438@l(r4)  /* 0x80648DF8@l */
/* 8050C048  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050C04C  3C 60 80 65 */	lis r3, lit_682@ha /* 0x80648E4C@ha */
/* 8050C050  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 8050C054  C0 03 8E 4C */	lfs f0, lit_682@l(r3)  /* 0x80648E4C@l */
/* 8050C058  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 8050C05C  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 8050C060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050C064  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050C068  7C 08 03 A6 */	mtlr r0
/* 8050C06C  38 21 00 20 */	addi r1, r1, 0x20
/* 8050C070  4E 80 00 20 */	blr 
