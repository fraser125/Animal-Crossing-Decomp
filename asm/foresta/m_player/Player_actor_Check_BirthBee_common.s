lbl_804DCBA8:
/* 804DCBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DCBAC  7C 08 02 A6 */	mflr r0
/* 804DCBB0  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 804DCBB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DCBB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DCBBC  7C FF 3B 78 */	mr r31, r7
/* 804DCBC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DCBC4  7C 7E 1B 78 */	mr r30, r3
/* 804DCBC8  38 68 85 38 */	addi r3, r8, common_data@l /* 0x81138538@l */
/* 804DCBCC  3C 63 00 02 */	addis r3, r3, 2
/* 804DCBD0  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804DCBD4  28 03 00 00 */	cmplwi r3, 0
/* 804DCBD8  41 82 00 C0 */	beq lbl_804DCC98
/* 804DCBDC  81 83 00 38 */	lwz r12, 0x38(r3)
/* 804DCBE0  28 0C 00 00 */	cmplwi r12, 0
/* 804DCBE4  41 82 00 B4 */	beq lbl_804DCC98
/* 804DCBE8  2C 05 00 00 */	cmpwi r5, 0
/* 804DCBEC  41 80 00 AC */	blt lbl_804DCC98
/* 804DCBF0  2C 06 00 00 */	cmpwi r6, 0
/* 804DCBF4  41 80 00 A4 */	blt lbl_804DCC98
/* 804DCBF8  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804DCBFC  28 00 00 5E */	cmplwi r0, 0x5e
/* 804DCC00  41 82 00 14 */	beq lbl_804DCC14
/* 804DCC04  28 00 00 7A */	cmplwi r0, 0x7a
/* 804DCC08  41 82 00 0C */	beq lbl_804DCC14
/* 804DCC0C  28 00 00 81 */	cmplwi r0, 0x81
/* 804DCC10  40 82 00 88 */	bne lbl_804DCC98
lbl_804DCC14:
/* 804DCC14  7C 83 23 78 */	mr r3, r4
/* 804DCC18  7C A4 2B 78 */	mr r4, r5
/* 804DCC1C  7C C5 33 78 */	mr r5, r6
/* 804DCC20  38 C1 00 08 */	addi r6, r1, 8
/* 804DCC24  7D 89 03 A6 */	mtctr r12
/* 804DCC28  4E 80 04 21 */	bctrl 
/* 804DCC2C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DCC30  C0 41 00 08 */	lfs f2, 8(r1)
/* 804DCC34  C0 63 65 68 */	lfs f3, lit_604@l(r3)  /* 0x80646568@l */
/* 804DCC38  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804DCC3C  4C 41 13 82 */	cror 2, 1, 2
/* 804DCC40  40 82 00 58 */	bne lbl_804DCC98
/* 804DCC44  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 804DCC48  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 804DCC4C  4C 41 13 82 */	cror 2, 1, 2
/* 804DCC50  40 82 00 48 */	bne lbl_804DCC98
/* 804DCC54  28 1F 00 00 */	cmplwi r31, 0
/* 804DCC58  41 82 00 38 */	beq lbl_804DCC90
/* 804DCC5C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804DCC60  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804DCC64  EC 42 08 28 */	fsubs f2, f2, f1
/* 804DCC68  EC 24 00 28 */	fsubs f1, f4, f0
/* 804DCC6C  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 804DCC70  40 82 00 0C */	bne lbl_804DCC7C
/* 804DCC74  FC 03 08 00 */	fcmpu cr0, f3, f1
/* 804DCC78  41 82 00 10 */	beq lbl_804DCC88
lbl_804DCC7C:
/* 804DCC7C  4B F2 F3 85 */	bl atans_table
/* 804DCC80  B0 7F 00 00 */	sth r3, 0(r31)
/* 804DCC84  48 00 00 0C */	b lbl_804DCC90
lbl_804DCC88:
/* 804DCC88  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 804DCC8C  B0 1F 00 00 */	sth r0, 0(r31)
lbl_804DCC90:
/* 804DCC90  38 60 00 01 */	li r3, 1
/* 804DCC94  48 00 00 08 */	b lbl_804DCC9C
lbl_804DCC98:
/* 804DCC98  38 60 00 00 */	li r3, 0
lbl_804DCC9C:
/* 804DCC9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DCCA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DCCA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DCCA8  7C 08 03 A6 */	mtlr r0
/* 804DCCAC  38 21 00 20 */	addi r1, r1, 0x20
/* 804DCCB0  4E 80 00 20 */	blr 
