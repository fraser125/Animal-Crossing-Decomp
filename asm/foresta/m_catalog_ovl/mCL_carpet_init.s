lbl_805C999C:
/* 805C999C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C99A0  7C 08 02 A6 */	mflr r0
/* 805C99A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C99A8  38 00 00 03 */	li r0, 3
/* 805C99AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C99B0  7C 9F 23 78 */	mr r31, r4
/* 805C99B4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 805C99B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805C99BC  7C 7E 1B 78 */	mr r30, r3
/* 805C99C0  38 84 DA 00 */	addi r4, r4, -9728
/* 805C99C4  B0 03 50 88 */	sth r0, 0x5088(r3)
/* 805C99C8  38 00 00 00 */	li r0, 0
/* 805C99CC  3C 60 80 65 */	lis r3, lit_554@ha /* 0x8064AEE0@ha */
/* 805C99D0  90 1E 50 80 */	stw r0, 0x5080(r30)
/* 805C99D4  38 A3 AE E0 */	addi r5, r3, lit_554@l /* 0x8064AEE0@l */
/* 805C99D8  3C 60 80 65 */	lis r3, lit_555@ha /* 0x8064AEE4@ha */
/* 805C99DC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C99E0  B0 9E 00 00 */	sth r4, 0(r30)
/* 805C99E4  1C 04 20 20 */	mulli r0, r4, 0x2020
/* 805C99E8  C0 03 AE E4 */	lfs f0, lit_555@l(r3)  /* 0x8064AEE4@l */
/* 805C99EC  D0 3E 50 94 */	stfs f1, 0x5094(r30)
/* 805C99F0  D0 1E 50 90 */	stfs f0, 0x5090(r30)
/* 805C99F4  90 1E 50 84 */	stw r0, 0x5084(r30)
/* 805C99F8  80 7E 08 5C */	lwz r3, 0x85c(r30)
/* 805C99FC  4B E1 D2 5D */	bl mRmTp_CopyFloorData
/* 805C9A00  7F E3 FB 78 */	mr r3, r31
/* 805C9A04  38 80 00 03 */	li r4, 3
/* 805C9A08  38 A0 00 00 */	li r5, 0
/* 805C9A0C  38 C0 00 00 */	li r6, 0
/* 805C9A10  4B E1 EE B1 */	bl mSP_SearchItemCategoryPriority
/* 805C9A14  2C 03 00 00 */	cmpwi r3, 0
/* 805C9A18  40 82 00 3C */	bne lbl_805C9A54
/* 805C9A1C  7F E3 FB 78 */	mr r3, r31
/* 805C9A20  38 80 00 03 */	li r4, 3
/* 805C9A24  38 A0 00 01 */	li r5, 1
/* 805C9A28  38 C0 00 00 */	li r6, 0
/* 805C9A2C  4B E1 EE 95 */	bl mSP_SearchItemCategoryPriority
/* 805C9A30  2C 03 00 00 */	cmpwi r3, 0
/* 805C9A34  40 82 00 20 */	bne lbl_805C9A54
/* 805C9A38  7F E3 FB 78 */	mr r3, r31
/* 805C9A3C  38 80 00 03 */	li r4, 3
/* 805C9A40  38 A0 00 02 */	li r5, 2
/* 805C9A44  38 C0 00 00 */	li r6, 0
/* 805C9A48  4B E1 EE 79 */	bl mSP_SearchItemCategoryPriority
/* 805C9A4C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9A50  41 82 00 14 */	beq lbl_805C9A64
lbl_805C9A54:
/* 805C9A54  7F E3 FB 78 */	mr r3, r31
/* 805C9A58  4B E1 EC 49 */	bl mSP_ItemNo2ItemPrice
/* 805C9A5C  90 7E 50 8C */	stw r3, 0x508c(r30)
/* 805C9A60  48 00 00 0C */	b lbl_805C9A6C
lbl_805C9A64:
/* 805C9A64  38 00 00 00 */	li r0, 0
/* 805C9A68  90 1E 50 8C */	stw r0, 0x508c(r30)
lbl_805C9A6C:
/* 805C9A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C9A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C9A74  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C9A78  7C 08 03 A6 */	mtlr r0
/* 805C9A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C9A80  4E 80 00 20 */	blr 
