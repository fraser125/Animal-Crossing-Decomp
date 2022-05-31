lbl_805CE93C:
/* 805CE93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CE940  7C 08 02 A6 */	mflr r0
/* 805CE944  3C 80 80 5D */	lis r4, mCO_cporiginal_ovl_move@ha /* 0x805CDC28@ha */
/* 805CE948  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CE94C  38 04 DC 28 */	addi r0, r4, mCO_cporiginal_ovl_move@l /* 0x805CDC28@l */
/* 805CE950  3C 80 80 5D */	lis r4, mCO_cporiginal_ovl_draw@ha /* 0x805CE8B8@ha */
/* 805CE954  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CE958  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805CE95C  38 04 E8 B8 */	addi r0, r4, mCO_cporiginal_ovl_draw@l /* 0x805CE8B8@l */
/* 805CE960  90 05 09 10 */	stw r0, 0x910(r5)
/* 805CE964  80 05 09 80 */	lwz r0, 0x980(r5)
/* 805CE968  28 00 00 00 */	cmplwi r0, 0
/* 805CE96C  41 82 00 24 */	beq lbl_805CE990
/* 805CE970  80 05 07 44 */	lwz r0, 0x744(r5)
/* 805CE974  2C 00 00 04 */	cmpwi r0, 4
/* 805CE978  41 82 00 18 */	beq lbl_805CE990
/* 805CE97C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805CE980  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805CE984  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805CE988  7D 89 03 A6 */	mtctr r12
/* 805CE98C  4E 80 04 21 */	bctrl 
lbl_805CE990:
/* 805CE990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CE994  7C 08 03 A6 */	mtlr r0
/* 805CE998  38 21 00 10 */	addi r1, r1, 0x10
/* 805CE99C  4E 80 00 20 */	blr 
