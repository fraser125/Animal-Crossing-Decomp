lbl_8061CAA8:
/* 8061CAA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061CAAC  7C 08 02 A6 */	mflr r0
/* 8061CAB0  3C A0 80 65 */	lis r5, data_8064CB3C@ha /* 0x8064CB3C@ha */
/* 8061CAB4  7C 89 23 78 */	mr r9, r4
/* 8061CAB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061CABC  39 05 CB 3C */	addi r8, r5, data_8064CB3C@l /* 0x8064CB3C@l */
/* 8061CAC0  C0 08 00 00 */	lfs f0, 0(r8)
/* 8061CAC4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061CAC8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061CACC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8061CAD0  3D 65 00 02 */	addis r11, r5, 2
/* 8061CAD4  7C E8 3B 78 */	mr r8, r7
/* 8061CAD8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8061CADC  38 00 00 00 */	li r0, 0
/* 8061CAE0  38 81 00 10 */	addi r4, r1, 0x10
/* 8061CAE4  38 A0 00 00 */	li r5, 0
/* 8061CAE8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8061CAEC  38 E0 00 00 */	li r7, 0
/* 8061CAF0  39 40 00 00 */	li r10, 0
/* 8061CAF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8061CAF8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8061CAFC  83 C3 00 00 */	lwz r30, 0(r3)
/* 8061CB00  83 E3 00 04 */	lwz r31, 4(r3)
/* 8061CB04  81 83 00 08 */	lwz r12, 8(r3)
/* 8061CB08  38 60 00 0E */	li r3, 0xe
/* 8061CB0C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8061CB10  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8061CB14  91 81 00 18 */	stw r12, 0x18(r1)
/* 8061CB18  90 01 00 08 */	stw r0, 8(r1)
/* 8061CB1C  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061CB20  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061CB24  7D 89 03 A6 */	mtctr r12
/* 8061CB28  4E 80 04 21 */	bctrl 
/* 8061CB2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061CB30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061CB34  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8061CB38  7C 08 03 A6 */	mtlr r0
/* 8061CB3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8061CB40  4E 80 00 20 */	blr 
