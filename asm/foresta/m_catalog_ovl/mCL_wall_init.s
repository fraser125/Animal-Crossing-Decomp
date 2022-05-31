lbl_805C98B4:
/* 805C98B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C98B8  7C 08 02 A6 */	mflr r0
/* 805C98BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C98C0  38 00 00 02 */	li r0, 2
/* 805C98C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C98C8  7C 9F 23 78 */	mr r31, r4
/* 805C98CC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 805C98D0  93 C1 00 08 */	stw r30, 8(r1)
/* 805C98D4  7C 7E 1B 78 */	mr r30, r3
/* 805C98D8  38 84 D9 00 */	addi r4, r4, -9984
/* 805C98DC  B0 03 50 88 */	sth r0, 0x5088(r3)
/* 805C98E0  38 00 00 00 */	li r0, 0
/* 805C98E4  3C 60 80 65 */	lis r3, lit_554@ha /* 0x8064AEE0@ha */
/* 805C98E8  90 1E 50 80 */	stw r0, 0x5080(r30)
/* 805C98EC  38 A3 AE E0 */	addi r5, r3, lit_554@l /* 0x8064AEE0@l */
/* 805C98F0  3C 60 80 65 */	lis r3, lit_555@ha /* 0x8064AEE4@ha */
/* 805C98F4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C98F8  B0 9E 00 00 */	sth r4, 0(r30)
/* 805C98FC  1C 04 10 20 */	mulli r0, r4, 0x1020
/* 805C9900  C0 03 AE E4 */	lfs f0, lit_555@l(r3)  /* 0x8064AEE4@l */
/* 805C9904  D0 3E 50 94 */	stfs f1, 0x5094(r30)
/* 805C9908  D0 1E 50 90 */	stfs f0, 0x5090(r30)
/* 805C990C  90 1E 50 84 */	stw r0, 0x5084(r30)
/* 805C9910  80 7E 08 5C */	lwz r3, 0x85c(r30)
/* 805C9914  4B E1 D1 DD */	bl mRmTp_CopyWallData
/* 805C9918  7F E3 FB 78 */	mr r3, r31
/* 805C991C  38 80 00 04 */	li r4, 4
/* 805C9920  38 A0 00 00 */	li r5, 0
/* 805C9924  38 C0 00 00 */	li r6, 0
/* 805C9928  4B E1 EF 99 */	bl mSP_SearchItemCategoryPriority
/* 805C992C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9930  40 82 00 3C */	bne lbl_805C996C
/* 805C9934  7F E3 FB 78 */	mr r3, r31
/* 805C9938  38 80 00 04 */	li r4, 4
/* 805C993C  38 A0 00 01 */	li r5, 1
/* 805C9940  38 C0 00 00 */	li r6, 0
/* 805C9944  4B E1 EF 7D */	bl mSP_SearchItemCategoryPriority
/* 805C9948  2C 03 00 00 */	cmpwi r3, 0
/* 805C994C  40 82 00 20 */	bne lbl_805C996C
/* 805C9950  7F E3 FB 78 */	mr r3, r31
/* 805C9954  38 80 00 04 */	li r4, 4
/* 805C9958  38 A0 00 02 */	li r5, 2
/* 805C995C  38 C0 00 00 */	li r6, 0
/* 805C9960  4B E1 EF 61 */	bl mSP_SearchItemCategoryPriority
/* 805C9964  2C 03 00 00 */	cmpwi r3, 0
/* 805C9968  41 82 00 14 */	beq lbl_805C997C
lbl_805C996C:
/* 805C996C  7F E3 FB 78 */	mr r3, r31
/* 805C9970  4B E1 ED 31 */	bl mSP_ItemNo2ItemPrice
/* 805C9974  90 7E 50 8C */	stw r3, 0x508c(r30)
/* 805C9978  48 00 00 0C */	b lbl_805C9984
lbl_805C997C:
/* 805C997C  38 00 00 00 */	li r0, 0
/* 805C9980  90 1E 50 8C */	stw r0, 0x508c(r30)
lbl_805C9984:
/* 805C9984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C9988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C998C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C9990  7C 08 03 A6 */	mtlr r0
/* 805C9994  38 21 00 10 */	addi r1, r1, 0x10
/* 805C9998  4E 80 00 20 */	blr 
