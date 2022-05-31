lbl_8061CD80:
/* 8061CD80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061CD84  7C 08 02 A6 */	mflr r0
/* 8061CD88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061CD8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061CD90  7C 7F 1B 78 */	mr r31, r3
/* 8061CD94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8061CD98  4B A3 FF 5D */	bl fqrand
/* 8061CD9C  3C 60 80 65 */	lis r3, data_8064CB44@ha /* 0x8064CB44@ha */
/* 8061CDA0  38 00 00 5C */	li r0, 0x5c
/* 8061CDA4  38 83 CB 44 */	addi r4, r3, data_8064CB44@l /* 0x8064CB44@l */
/* 8061CDA8  3C C0 80 65 */	lis r6, lit_398@ha /* 0x8064CB48@ha */
/* 8061CDAC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8061CDB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061CDB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061CDB8  3C A0 80 65 */	lis r5, lit_400@ha /* 0x8064CB50@ha */
/* 8061CDBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061CDC0  38 E6 CB 48 */	addi r7, r6, lit_398@l /* 0x8064CB48@l */
/* 8061CDC4  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064CB4C@ha */
/* 8061CDC8  B0 1F 00 00 */	sth r0, 0(r31)
/* 8061CDCC  38 C4 CB 4C */	addi r6, r4, lit_399@l /* 0x8064CB4C@l */
/* 8061CDD0  3C 63 00 02 */	addis r3, r3, 2
/* 8061CDD4  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061CDD8  FC 00 00 1E */	fctiwz f0, f0
/* 8061CDDC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8061CDE0  C0 27 00 00 */	lfs f1, 0(r7)
/* 8061CDE4  81 84 00 0C */	lwz r12, 0xc(r4)
/* 8061CDE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061CDEC  C0 46 00 00 */	lfs f2, 0(r6)
/* 8061CDF0  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 8061CDF4  C0 65 CB 50 */	lfs f3, lit_400@l(r5)  /* 0x8064CB50@l */
/* 8061CDF8  7D 89 03 A6 */	mtctr r12
/* 8061CDFC  4E 80 04 21 */	bctrl 
/* 8061CE00  3C 60 80 65 */	lis r3, lit_400@ha /* 0x8064CB50@ha */
/* 8061CE04  3C 80 80 65 */	lis r4, lit_401@ha /* 0x8064CB54@ha */
/* 8061CE08  38 A3 CB 50 */	addi r5, r3, lit_400@l /* 0x8064CB50@l */
/* 8061CE0C  C0 04 CB 54 */	lfs f0, lit_401@l(r4)  /* 0x8064CB54@l */
/* 8061CE10  C0 25 00 00 */	lfs f1, 0(r5)
/* 8061CE14  57 C3 07 FE */	clrlwi r3, r30, 0x1f
/* 8061CE18  38 00 00 00 */	li r0, 0
/* 8061CE1C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8061CE20  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8061CE24  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 8061CE28  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8061CE2C  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8061CE30  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8061CE34  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 8061CE38  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8061CE3C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8061CE40  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8061CE44  40 81 00 10 */	ble lbl_8061CE54
/* 8061CE48  38 00 04 F3 */	li r0, 0x4f3
/* 8061CE4C  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 8061CE50  48 00 00 0C */	b lbl_8061CE5C
lbl_8061CE54:
/* 8061CE54  38 00 FB 0D */	li r0, -1267
/* 8061CE58  B0 1F 00 50 */	sth r0, 0x50(r31)
lbl_8061CE5C:
/* 8061CE5C  A8 9F 00 06 */	lha r4, 6(r31)
/* 8061CE60  7C 80 07 35 */	extsh. r0, r4
/* 8061CE64  41 82 00 48 */	beq lbl_8061CEAC
/* 8061CE68  A8 1F 00 00 */	lha r0, 0(r31)
/* 8061CE6C  54 83 08 3C */	slwi r3, r4, 1
/* 8061CE70  7C 9E 23 78 */	mr r30, r4
/* 8061CE74  7C 03 00 50 */	subf r0, r3, r0
/* 8061CE78  B0 1F 00 00 */	sth r0, 0(r31)
/* 8061CE7C  48 00 00 24 */	b lbl_8061CEA0
lbl_8061CE80:
/* 8061CE80  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8061CE84  38 9F 00 28 */	addi r4, r31, 0x28
/* 8061CE88  7C 65 1B 78 */	mr r5, r3
/* 8061CE8C  4B D9 E0 B9 */	bl xyz_t_add
/* 8061CE90  38 7F 00 10 */	addi r3, r31, 0x10
/* 8061CE94  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8061CE98  7C 65 1B 78 */	mr r5, r3
/* 8061CE9C  4B D9 E0 A9 */	bl xyz_t_add
lbl_8061CEA0:
/* 8061CEA0  2C 1E 00 00 */	cmpwi r30, 0
/* 8061CEA4  3B DE FF FF */	addi r30, r30, -1
/* 8061CEA8  40 82 FF D8 */	bne lbl_8061CE80
lbl_8061CEAC:
/* 8061CEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061CEB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061CEB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8061CEB8  7C 08 03 A6 */	mtlr r0
/* 8061CEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8061CEC0  4E 80 00 20 */	blr 
