lbl_80459E0C:
/* 80459E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459E10  7C 08 02 A6 */	mflr r0
/* 80459E14  2C 05 00 07 */	cmpwi r5, 7
/* 80459E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459E20  93 C1 00 08 */	stw r30, 8(r1)
/* 80459E24  7D 5E 53 78 */	mr r30, r10
/* 80459E28  83 E8 05 90 */	lwz r31, 0x590(r8)
/* 80459E2C  40 82 00 24 */	bne lbl_80459E50
/* 80459E30  A8 7F 05 68 */	lha r3, 0x568(r31)
/* 80459E34  4B F6 0C BD */	bl sin_s
/* 80459E38  C0 5F 05 5C */	lfs f2, 0x55c(r31)
/* 80459E3C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80459E40  EC 22 00 72 */	fmuls f1, f2, f1
/* 80459E44  EC 00 08 2A */	fadds f0, f0, f1
/* 80459E48  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80459E4C  48 00 00 50 */	b lbl_80459E9C
lbl_80459E50:
/* 80459E50  2C 05 00 04 */	cmpwi r5, 4
/* 80459E54  40 82 00 24 */	bne lbl_80459E78
/* 80459E58  A8 7F 05 6A */	lha r3, 0x56a(r31)
/* 80459E5C  4B F6 0C 95 */	bl sin_s
/* 80459E60  C0 5F 05 60 */	lfs f2, 0x560(r31)
/* 80459E64  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80459E68  EC 22 00 72 */	fmuls f1, f2, f1
/* 80459E6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80459E70  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80459E74  48 00 00 28 */	b lbl_80459E9C
lbl_80459E78:
/* 80459E78  2C 05 00 09 */	cmpwi r5, 9
/* 80459E7C  40 82 00 20 */	bne lbl_80459E9C
/* 80459E80  A8 7F 05 6C */	lha r3, 0x56c(r31)
/* 80459E84  4B F6 0C 6D */	bl sin_s
/* 80459E88  C0 5F 05 64 */	lfs f2, 0x564(r31)
/* 80459E8C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80459E90  EC 22 00 72 */	fmuls f1, f2, f1
/* 80459E94  EC 00 08 2A */	fadds f0, f0, f1
/* 80459E98  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80459E9C:
/* 80459E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459EA0  38 60 00 01 */	li r3, 1
/* 80459EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459EA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80459EAC  7C 08 03 A6 */	mtlr r0
/* 80459EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80459EB4  4E 80 00 20 */	blr 
