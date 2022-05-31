lbl_805CE8B8:
/* 805CE8B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CE8BC  7C 08 02 A6 */	mflr r0
/* 805CE8C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CE8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CE8C8  4B AC C6 0D */	bl func_8009AED4
/* 805CE8CC  7C 7D 1B 78 */	mr r29, r3
/* 805CE8D0  7C 9E 23 78 */	mr r30, r4
/* 805CE8D4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CE8D8  3B E5 07 14 */	addi r31, r5, 0x714
/* 805CE8DC  81 85 07 24 */	lwz r12, 0x724(r5)
/* 805CE8E0  7D 89 03 A6 */	mtctr r12
/* 805CE8E4  4E 80 04 21 */	bctrl 
/* 805CE8E8  7F A3 EB 78 */	mr r3, r29
/* 805CE8EC  7F C4 F3 78 */	mr r4, r30
/* 805CE8F0  7F E5 FB 78 */	mr r5, r31
/* 805CE8F4  4B FF FE 1D */	bl mCO_set_frame_dl
/* 805CE8F8  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805CE8FC  80 64 09 DC */	lwz r3, 0x9dc(r4)
/* 805CE900  A8 03 00 0C */	lha r0, 0xc(r3)
/* 805CE904  2C 00 00 00 */	cmpwi r0, 0
/* 805CE908  40 82 00 1C */	bne lbl_805CE924
/* 805CE90C  81 84 09 20 */	lwz r12, 0x920(r4)
/* 805CE910  7F A3 EB 78 */	mr r3, r29
/* 805CE914  7F C4 F3 78 */	mr r4, r30
/* 805CE918  38 A0 00 18 */	li r5, 0x18
/* 805CE91C  7D 89 03 A6 */	mtctr r12
/* 805CE920  4E 80 04 21 */	bctrl 
lbl_805CE924:
/* 805CE924  39 61 00 20 */	addi r11, r1, 0x20
/* 805CE928  4B AC C5 F9 */	bl func_8009AF20
/* 805CE92C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CE930  7C 08 03 A6 */	mtlr r0
/* 805CE934  38 21 00 20 */	addi r1, r1, 0x20
/* 805CE938  4E 80 00 20 */	blr 
