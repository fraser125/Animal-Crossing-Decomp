lbl_8049E718:
/* 8049E718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049E71C  7C 08 02 A6 */	mflr r0
/* 8049E720  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049E724  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E728  4B BF C7 A9 */	bl func_8009AED0
/* 8049E72C  7C A0 07 34 */	extsh r0, r5
/* 8049E730  3B A3 01 88 */	addi r29, r3, 0x188
/* 8049E734  2C 00 00 02 */	cmpwi r0, 2
/* 8049E738  40 82 00 38 */	bne lbl_8049E770
/* 8049E73C  7C 9E 07 34 */	extsh r30, r4
/* 8049E740  3B 80 00 00 */	li r28, 0
/* 8049E744  3B E0 00 00 */	li r31, 0
lbl_8049E748:
/* 8049E748  7C 7D F8 2E */	lwzx r3, r29, r31
/* 8049E74C  28 03 00 00 */	cmplwi r3, 0
/* 8049E750  41 82 00 0C */	beq lbl_8049E75C
/* 8049E754  7F C4 F3 78 */	mr r4, r30
/* 8049E758  4B F4 83 99 */	bl mRmTp_CopyWallData
lbl_8049E75C:
/* 8049E75C  3B 9C 00 01 */	addi r28, r28, 1
/* 8049E760  3B FF 00 04 */	addi r31, r31, 4
/* 8049E764  2C 1C 00 02 */	cmpwi r28, 2
/* 8049E768  41 80 FF E0 */	blt lbl_8049E748
/* 8049E76C  48 00 00 1C */	b lbl_8049E788
lbl_8049E770:
/* 8049E770  54 00 10 3A */	slwi r0, r0, 2
/* 8049E774  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8049E778  28 03 00 00 */	cmplwi r3, 0
/* 8049E77C  41 82 00 0C */	beq lbl_8049E788
/* 8049E780  7C 84 07 34 */	extsh r4, r4
/* 8049E784  4B F4 83 6D */	bl mRmTp_CopyWallData
lbl_8049E788:
/* 8049E788  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E78C  4B BF C7 91 */	bl func_8009AF1C
/* 8049E790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049E794  7C 08 03 A6 */	mtlr r0
/* 8049E798  38 21 00 20 */	addi r1, r1, 0x20
/* 8049E79C  4E 80 00 20 */	blr 
