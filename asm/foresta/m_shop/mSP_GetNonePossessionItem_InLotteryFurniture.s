lbl_803EB314:
/* 803EB314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB318  7C 08 02 A6 */	mflr r0
/* 803EB31C  7C 65 1B 79 */	or. r5, r3, r3
/* 803EB320  3C 60 80 CE */	lis r3, mSP_ftr_list@ha /* 0x80CE5A9C@ha */
/* 803EB324  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB328  38 63 5A 9C */	addi r3, r3, mSP_ftr_list@l /* 0x80CE5A9C@l */
/* 803EB32C  38 80 00 00 */	li r4, 0
/* 803EB330  38 00 00 00 */	li r0, 0
/* 803EB334  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803EB338  41 80 00 10 */	blt lbl_803EB348
/* 803EB33C  2C 05 00 04 */	cmpwi r5, 4
/* 803EB340  40 80 00 08 */	bge lbl_803EB348
/* 803EB344  38 00 00 01 */	li r0, 1
lbl_803EB348:
/* 803EB348  2C 00 00 00 */	cmpwi r0, 0
/* 803EB34C  41 82 00 1C */	beq lbl_803EB368
/* 803EB350  1C C5 24 40 */	mulli r6, r5, 0x2440
/* 803EB354  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EB358  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 803EB35C  7C A0 32 14 */	add r5, r0, r6
/* 803EB360  38 A5 11 28 */	addi r5, r5, 0x1128
/* 803EB364  48 00 00 18 */	b lbl_803EB37C
lbl_803EB368:
/* 803EB368  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EB36C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803EB370  3C A5 00 02 */	addis r5, r5, 2
/* 803EB374  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 803EB378  38 A5 11 08 */	addi r5, r5, 0x1108
lbl_803EB37C:
/* 803EB37C  4B FF FE A5 */	bl mSP_GetNonePossessionItem_InList
/* 803EB380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB384  7C 08 03 A6 */	mtlr r0
/* 803EB388  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB38C  4E 80 00 20 */	blr 
