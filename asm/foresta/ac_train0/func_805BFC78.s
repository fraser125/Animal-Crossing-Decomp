lbl_805BFC78:
/* 805BFC78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BFC7C  7C 08 02 A6 */	mflr r0
/* 805BFC80  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BFC84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BFC88  7C 9F 23 78 */	mr r31, r4
/* 805BFC8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BFC90  7C 7E 1B 78 */	mr r30, r3
/* 805BFC94  80 C3 02 C4 */	lwz r6, 0x2c4(r3)
/* 805BFC98  28 06 00 00 */	cmplwi r6, 0
/* 805BFC9C  40 82 00 70 */	bne lbl_805BFD0C
/* 805BFCA0  38 00 00 00 */	li r0, 0
/* 805BFCA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BFCA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BFCAC  90 01 00 08 */	stw r0, 8(r1)
/* 805BFCB0  3C 63 00 02 */	addis r3, r3, 2
/* 805BFCB4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D067@ha */
/* 805BFCB8  80 C3 60 4C */	lwz r6, 0x604c(r3)
/* 805BFCBC  7F E3 FB 78 */	mr r3, r31
/* 805BFCC0  38 84 D0 67 */	addi r4, r4, 0xD067 /* 0x0000D067@l */
/* 805BFCC4  38 A0 FF FF */	li r5, -1
/* 805BFCC8  81 86 00 00 */	lwz r12, 0(r6)
/* 805BFCCC  38 C0 FF FF */	li r6, -1
/* 805BFCD0  38 E0 FF FF */	li r7, -1
/* 805BFCD4  39 00 FF FF */	li r8, -1
/* 805BFCD8  39 20 FF FF */	li r9, -1
/* 805BFCDC  39 40 00 00 */	li r10, 0
/* 805BFCE0  7D 89 03 A6 */	mtctr r12
/* 805BFCE4  4E 80 04 21 */	bctrl 
/* 805BFCE8  2C 03 00 01 */	cmpwi r3, 1
/* 805BFCEC  40 82 00 60 */	bne lbl_805BFD4C
/* 805BFCF0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D067@ha */
/* 805BFCF4  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 805BFCF8  38 84 D0 67 */	addi r4, r4, 0xD067 /* 0x0000D067@l */
/* 805BFCFC  38 A0 00 04 */	li r5, 4
/* 805BFD00  4B DB 60 41 */	bl Actor_info_fgName_search
/* 805BFD04  90 7E 02 C4 */	stw r3, 0x2c4(r30)
/* 805BFD08  48 00 00 44 */	b lbl_805BFD4C
lbl_805BFD0C:
/* 805BFD0C  3C 60 80 65 */	lis r3, lit_458@ha /* 0x8064AC50@ha */
/* 805BFD10  3C 80 80 65 */	lis r4, lit_459@ha /* 0x8064AC54@ha */
/* 805BFD14  38 A3 AC 50 */	addi r5, r3, lit_458@l /* 0x8064AC50@l */
/* 805BFD18  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805BFD1C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805BFD20  3C 60 80 65 */	lis r3, lit_460@ha /* 0x8064AC58@ha */
/* 805BFD24  C0 44 AC 54 */	lfs f2, lit_459@l(r4)  /* 0x8064AC54@l */
/* 805BFD28  EC 01 00 2A */	fadds f0, f1, f0
/* 805BFD2C  C0 23 AC 58 */	lfs f1, lit_460@l(r3)  /* 0x8064AC58@l */
/* 805BFD30  D0 06 00 28 */	stfs f0, 0x28(r6)
/* 805BFD34  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 805BFD38  EC 02 00 2A */	fadds f0, f2, f0
/* 805BFD3C  D0 06 00 2C */	stfs f0, 0x2c(r6)
/* 805BFD40  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BFD44  EC 01 00 2A */	fadds f0, f1, f0
/* 805BFD48  D0 06 00 30 */	stfs f0, 0x30(r6)
lbl_805BFD4C:
/* 805BFD4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BFD50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BFD54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BFD58  7C 08 03 A6 */	mtlr r0
/* 805BFD5C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BFD60  4E 80 00 20 */	blr 
