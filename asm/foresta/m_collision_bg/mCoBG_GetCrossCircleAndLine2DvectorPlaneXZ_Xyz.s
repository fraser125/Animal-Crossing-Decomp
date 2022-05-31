lbl_8038AEFC:
/* 8038AEFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8038AF00  7C 08 02 A6 */	mflr r0
/* 8038AF04  3D 00 80 65 */	lis r8, cross0@ha /* 0x806509A4@ha */
/* 8038AF08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8038AF0C  39 28 09 A4 */	addi r9, r8, cross0@l /* 0x806509A4@l */
/* 8038AF10  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8038AF14  7C 9F 23 78 */	mr r31, r4
/* 8038AF18  38 81 00 20 */	addi r4, r1, 0x20
/* 8038AF1C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8038AF20  7C 7E 1B 78 */	mr r30, r3
/* 8038AF24  38 61 00 28 */	addi r3, r1, 0x28
/* 8038AF28  81 09 00 00 */	lwz r8, 0(r9)
/* 8038AF2C  80 09 00 04 */	lwz r0, 4(r9)
/* 8038AF30  91 1E 00 00 */	stw r8, 0(r30)
/* 8038AF34  90 1E 00 04 */	stw r0, 4(r30)
/* 8038AF38  80 09 00 08 */	lwz r0, 8(r9)
/* 8038AF3C  90 1E 00 08 */	stw r0, 8(r30)
/* 8038AF40  81 09 00 00 */	lwz r8, 0(r9)
/* 8038AF44  80 09 00 04 */	lwz r0, 4(r9)
/* 8038AF48  91 1F 00 00 */	stw r8, 0(r31)
/* 8038AF4C  90 1F 00 04 */	stw r0, 4(r31)
/* 8038AF50  80 09 00 08 */	lwz r0, 8(r9)
/* 8038AF54  90 1F 00 08 */	stw r0, 8(r31)
/* 8038AF58  C0 C5 00 00 */	lfs f6, 0(r5)
/* 8038AF5C  C0 A5 00 08 */	lfs f5, 8(r5)
/* 8038AF60  38 A1 00 18 */	addi r5, r1, 0x18
/* 8038AF64  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038AF68  C0 66 00 08 */	lfs f3, 8(r6)
/* 8038AF6C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8038AF70  C0 47 00 00 */	lfs f2, 0(r7)
/* 8038AF74  C0 07 00 08 */	lfs f0, 8(r7)
/* 8038AF78  38 E1 00 08 */	addi r7, r1, 8
/* 8038AF7C  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 8038AF80  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 8038AF84  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8038AF88  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8038AF8C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8038AF90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038AF94  4B FF FC CD */	bl mCoBG_GetCrossCircleAndLine2Dvector
/* 8038AF98  2C 03 00 00 */	cmpwi r3, 0
/* 8038AF9C  41 82 00 2C */	beq lbl_8038AFC8
/* 8038AFA0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8038AFA4  38 60 00 01 */	li r3, 1
/* 8038AFA8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038AFAC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8038AFB0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038AFB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8038AFB8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8038AFBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8038AFC0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8038AFC4  48 00 00 08 */	b lbl_8038AFCC
lbl_8038AFC8:
/* 8038AFC8  38 60 00 00 */	li r3, 0
lbl_8038AFCC:
/* 8038AFCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038AFD0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8038AFD4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8038AFD8  7C 08 03 A6 */	mtlr r0
/* 8038AFDC  38 21 00 40 */	addi r1, r1, 0x40
/* 8038AFE0  4E 80 00 20 */	blr 
