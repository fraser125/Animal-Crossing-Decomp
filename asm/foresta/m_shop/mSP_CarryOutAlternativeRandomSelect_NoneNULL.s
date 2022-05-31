lbl_803EB4DC:
/* 803EB4DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EB4E0  7C 08 02 A6 */	mflr r0
/* 803EB4E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EB4E8  39 61 00 30 */	addi r11, r1, 0x30
/* 803EB4EC  4B CA F9 E5 */	bl func_8009AED0
/* 803EB4F0  7C 7C 1B 78 */	mr r28, r3
/* 803EB4F4  7C 9D 23 78 */	mr r29, r4
/* 803EB4F8  7C BE 2B 78 */	mr r30, r5
/* 803EB4FC  7C DF 33 78 */	mr r31, r6
/* 803EB500  4B C7 17 F5 */	bl fqrand
/* 803EB504  3C 60 80 64 */	lis r3, lit_495@ha /* 0x80643188@ha */
/* 803EB508  C0 03 31 88 */	lfs f0, lit_495@l(r3)  /* 0x80643188@l */
/* 803EB50C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EB510  FC 00 00 1E */	fctiwz f0, f0
/* 803EB514  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803EB518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB51C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803EB520  41 82 00 30 */	beq lbl_803EB550
/* 803EB524  7F 88 E3 78 */	mr r8, r28
/* 803EB528  7F A9 EB 78 */	mr r9, r29
/* 803EB52C  38 81 00 08 */	addi r4, r1, 8
/* 803EB530  38 60 00 00 */	li r3, 0
/* 803EB534  38 A0 00 01 */	li r5, 1
/* 803EB538  38 C0 00 00 */	li r6, 0
/* 803EB53C  38 E0 00 00 */	li r7, 0
/* 803EB540  39 40 00 00 */	li r10, 0
/* 803EB544  4B FF CE 99 */	bl mSP_SelectRandomItem_New
/* 803EB548  A0 61 00 08 */	lhz r3, 8(r1)
/* 803EB54C  48 00 00 2C */	b lbl_803EB578
lbl_803EB550:
/* 803EB550  7F C8 F3 78 */	mr r8, r30
/* 803EB554  7F E9 FB 78 */	mr r9, r31
/* 803EB558  38 81 00 08 */	addi r4, r1, 8
/* 803EB55C  38 60 00 00 */	li r3, 0
/* 803EB560  38 A0 00 01 */	li r5, 1
/* 803EB564  38 C0 00 00 */	li r6, 0
/* 803EB568  38 E0 00 00 */	li r7, 0
/* 803EB56C  39 40 00 00 */	li r10, 0
/* 803EB570  4B FF CE 6D */	bl mSP_SelectRandomItem_New
/* 803EB574  A0 61 00 08 */	lhz r3, 8(r1)
lbl_803EB578:
/* 803EB578  39 61 00 30 */	addi r11, r1, 0x30
/* 803EB57C  4B CA F9 A1 */	bl func_8009AF1C
/* 803EB580  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EB584  7C 08 03 A6 */	mtlr r0
/* 803EB588  38 21 00 30 */	addi r1, r1, 0x30
/* 803EB58C  4E 80 00 20 */	blr 
