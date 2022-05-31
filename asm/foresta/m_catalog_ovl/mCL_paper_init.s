lbl_805C97C4:
/* 805C97C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C97C8  7C 08 02 A6 */	mflr r0
/* 805C97CC  38 A0 00 00 */	li r5, 0
/* 805C97D0  38 C0 00 00 */	li r6, 0
/* 805C97D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C97D8  38 00 00 01 */	li r0, 1
/* 805C97DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C97E0  7C 9F 23 78 */	mr r31, r4
/* 805C97E4  93 C1 00 08 */	stw r30, 8(r1)
/* 805C97E8  7C 7E 1B 78 */	mr r30, r3
/* 805C97EC  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 805C97F0  38 83 E0 00 */	addi r4, r3, -8192
/* 805C97F4  B0 1E 50 88 */	sth r0, 0x5088(r30)
/* 805C97F8  54 80 D0 0A */	slwi r0, r4, 0x1a
/* 805C97FC  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064AED8@ha */
/* 805C9800  54 84 0F FE */	srwi r4, r4, 0x1f
/* 805C9804  90 BE 50 80 */	stw r5, 0x5080(r30)
/* 805C9808  38 A3 AE D8 */	addi r5, r3, lit_543@l /* 0x8064AED8@l */
/* 805C980C  3C 60 80 65 */	lis r3, lit_544@ha /* 0x8064AEDC@ha */
/* 805C9810  7C 04 00 50 */	subf r0, r4, r0
/* 805C9814  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C9818  54 00 30 3E */	rotlwi r0, r0, 6
/* 805C981C  38 A0 00 00 */	li r5, 0
/* 805C9820  7C 00 22 14 */	add r0, r0, r4
/* 805C9824  38 83 AE DC */	addi r4, r3, lit_544@l /* 0x8064AEDC@l */
/* 805C9828  B0 1E 00 00 */	sth r0, 0(r30)
/* 805C982C  7F E3 FB 78 */	mr r3, r31
/* 805C9830  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C9834  38 80 00 01 */	li r4, 1
/* 805C9838  D0 3E 50 94 */	stfs f1, 0x5094(r30)
/* 805C983C  D0 1E 50 90 */	stfs f0, 0x5090(r30)
/* 805C9840  4B E1 F0 81 */	bl mSP_SearchItemCategoryPriority
/* 805C9844  2C 03 00 00 */	cmpwi r3, 0
/* 805C9848  40 82 00 3C */	bne lbl_805C9884
/* 805C984C  7F E3 FB 78 */	mr r3, r31
/* 805C9850  38 80 00 01 */	li r4, 1
/* 805C9854  38 A0 00 01 */	li r5, 1
/* 805C9858  38 C0 00 00 */	li r6, 0
/* 805C985C  4B E1 F0 65 */	bl mSP_SearchItemCategoryPriority
/* 805C9860  2C 03 00 00 */	cmpwi r3, 0
/* 805C9864  40 82 00 20 */	bne lbl_805C9884
/* 805C9868  7F E3 FB 78 */	mr r3, r31
/* 805C986C  38 80 00 01 */	li r4, 1
/* 805C9870  38 A0 00 02 */	li r5, 2
/* 805C9874  38 C0 00 00 */	li r6, 0
/* 805C9878  4B E1 F0 49 */	bl mSP_SearchItemCategoryPriority
/* 805C987C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9880  41 82 00 14 */	beq lbl_805C9894
lbl_805C9884:
/* 805C9884  7F E3 FB 78 */	mr r3, r31
/* 805C9888  4B E1 EE 19 */	bl mSP_ItemNo2ItemPrice
/* 805C988C  90 7E 50 8C */	stw r3, 0x508c(r30)
/* 805C9890  48 00 00 0C */	b lbl_805C989C
lbl_805C9894:
/* 805C9894  38 00 00 00 */	li r0, 0
/* 805C9898  90 1E 50 8C */	stw r0, 0x508c(r30)
lbl_805C989C:
/* 805C989C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C98A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C98A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C98A8  7C 08 03 A6 */	mtlr r0
/* 805C98AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C98B0  4E 80 00 20 */	blr 
