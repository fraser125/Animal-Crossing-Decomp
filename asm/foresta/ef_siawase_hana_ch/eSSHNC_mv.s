lbl_8061CEC4:
/* 8061CEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061CEC8  7C 08 02 A6 */	mflr r0
/* 8061CECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061CED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061CED4  93 C1 00 08 */	stw r30, 8(r1)
/* 8061CED8  7C 7E 1B 78 */	mr r30, r3
/* 8061CEDC  A8 03 00 00 */	lha r0, 0(r3)
/* 8061CEE0  20 00 00 5C */	subfic r0, r0, 0x5c
/* 8061CEE4  7C 1F 07 34 */	extsh r31, r0
/* 8061CEE8  2C 1F 00 3A */	cmpwi r31, 0x3a
/* 8061CEEC  41 80 00 14 */	blt lbl_8061CF00
/* 8061CEF0  3C 60 80 65 */	lis r3, lit_401@ha /* 0x8064CB54@ha */
/* 8061CEF4  C0 03 CB 54 */	lfs f0, lit_401@l(r3)  /* 0x8064CB54@l */
/* 8061CEF8  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8061CEFC  48 00 00 44 */	b lbl_8061CF40
lbl_8061CF00:
/* 8061CF00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061CF04  3C 80 80 65 */	lis r4, lit_400@ha /* 0x8064CB50@ha */
/* 8061CF08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061CF0C  3C A0 80 65 */	lis r5, lit_401@ha /* 0x8064CB54@ha */
/* 8061CF10  3C 63 00 02 */	addis r3, r3, 2
/* 8061CF14  38 C4 CB 50 */	addi r6, r4, lit_400@l /* 0x8064CB50@l */
/* 8061CF18  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061CF1C  7F E3 FB 78 */	mr r3, r31
/* 8061CF20  C0 45 CB 54 */	lfs f2, lit_401@l(r5)  /* 0x8064CB54@l */
/* 8061CF24  38 A0 00 3A */	li r5, 0x3a
/* 8061CF28  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061CF2C  38 80 00 28 */	li r4, 0x28
/* 8061CF30  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061CF34  7D 89 03 A6 */	mtctr r12
/* 8061CF38  4E 80 04 21 */	bctrl 
/* 8061CF3C  D0 3E 00 2C */	stfs f1, 0x2c(r30)
lbl_8061CF40:
/* 8061CF40  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8061CF44  38 9E 00 28 */	addi r4, r30, 0x28
/* 8061CF48  7C 65 1B 78 */	mr r5, r3
/* 8061CF4C  4B D9 DF F9 */	bl xyz_t_add
/* 8061CF50  38 7E 00 10 */	addi r3, r30, 0x10
/* 8061CF54  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8061CF58  7C 65 1B 78 */	mr r5, r3
/* 8061CF5C  4B D9 DF E9 */	bl xyz_t_add
/* 8061CF60  A8 9E 00 4E */	lha r4, 0x4e(r30)
/* 8061CF64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061CF68  A8 1E 00 50 */	lha r0, 0x50(r30)
/* 8061CF6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061CF70  3C C0 80 65 */	lis r6, lit_400@ha /* 0x8064CB50@ha */
/* 8061CF74  3C A0 80 65 */	lis r5, lit_414@ha /* 0x8064CB58@ha */
/* 8061CF78  7C 04 02 14 */	add r0, r4, r0
/* 8061CF7C  3C 83 00 02 */	addis r4, r3, 2
/* 8061CF80  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 8061CF84  39 06 CB 50 */	addi r8, r6, lit_400@l /* 0x8064CB50@l */
/* 8061CF88  38 E5 CB 58 */	addi r7, r5, lit_414@l /* 0x8064CB58@l */
/* 8061CF8C  7F E3 FB 78 */	mr r3, r31
/* 8061CF90  80 C4 60 9C */	lwz r6, 0x609c(r4)
/* 8061CF94  38 80 00 28 */	li r4, 0x28
/* 8061CF98  C0 28 00 00 */	lfs f1, 0(r8)
/* 8061CF9C  38 A0 00 3A */	li r5, 0x3a
/* 8061CFA0  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061CFA4  C0 47 00 00 */	lfs f2, 0(r7)
/* 8061CFA8  7D 89 03 A6 */	mtctr r12
/* 8061CFAC  4E 80 04 21 */	bctrl 
/* 8061CFB0  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 8061CFB4  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 8061CFB8  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 8061CFBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061CFC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061CFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061CFC8  7C 08 03 A6 */	mtlr r0
/* 8061CFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8061CFD0  4E 80 00 20 */	blr 
