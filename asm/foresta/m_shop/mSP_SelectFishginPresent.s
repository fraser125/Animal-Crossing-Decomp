lbl_803EB590:
/* 803EB590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB594  7C 08 02 A6 */	mflr r0
/* 803EB598  3C 80 80 3F */	lis r4, mSP_GetNonePossessionItem_InEventFurniture@ha /* 0x803EB390@ha */
/* 803EB59C  3C C0 80 3F */	lis r6, mSP_GetNonePossessionItem_InLotteryFurniture@ha /* 0x803EB314@ha */
/* 803EB5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB5A4  7C 65 1B 78 */	mr r5, r3
/* 803EB5A8  38 66 B3 14 */	addi r3, r6, mSP_GetNonePossessionItem_InLotteryFurniture@l /* 0x803EB314@l */
/* 803EB5AC  38 84 B3 90 */	addi r4, r4, mSP_GetNonePossessionItem_InEventFurniture@l /* 0x803EB390@l */
/* 803EB5B0  4B FF FE 5D */	bl mSP_CarryOutAlternativeRandomSelect
/* 803EB5B4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803EB5B8  41 82 00 08 */	beq lbl_803EB5C0
/* 803EB5BC  48 00 00 18 */	b lbl_803EB5D4
lbl_803EB5C0:
/* 803EB5C0  38 60 00 00 */	li r3, 0
/* 803EB5C4  38 80 00 05 */	li r4, 5
/* 803EB5C8  38 A0 00 00 */	li r5, 0
/* 803EB5CC  38 C0 00 03 */	li r6, 3
/* 803EB5D0  4B FF FF 0D */	bl mSP_CarryOutAlternativeRandomSelect_NoneNULL
lbl_803EB5D4:
/* 803EB5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB5D8  7C 08 03 A6 */	mtlr r0
/* 803EB5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB5E0  4E 80 00 20 */	blr 
