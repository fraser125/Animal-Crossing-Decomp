lbl_80489ABC:
/* 80489ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489AC0  7C 08 02 A6 */	mflr r0
/* 80489AC4  38 A0 00 00 */	li r5, 0
/* 80489AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489ACC  80 03 00 08 */	lwz r0, 8(r3)
/* 80489AD0  81 83 00 04 */	lwz r12, 4(r3)
/* 80489AD4  28 00 00 00 */	cmplwi r0, 0
/* 80489AD8  41 82 00 2C */	beq lbl_80489B04
/* 80489ADC  28 0C 00 00 */	cmplwi r12, 0
/* 80489AE0  41 82 00 18 */	beq lbl_80489AF8
/* 80489AE4  7C 03 03 78 */	mr r3, r0
/* 80489AE8  7D 89 03 A6 */	mtctr r12
/* 80489AEC  4E 80 04 21 */	bctrl 
/* 80489AF0  7C 65 1B 78 */	mr r5, r3
/* 80489AF4  48 00 00 10 */	b lbl_80489B04
lbl_80489AF8:
/* 80489AF8  7C 03 03 78 */	mr r3, r0
/* 80489AFC  4B FF FF A9 */	bl aQMgr_actor_check_fin_step
/* 80489B00  7C 65 1B 78 */	mr r5, r3
lbl_80489B04:
/* 80489B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489B08  7C A3 2B 78 */	mr r3, r5
/* 80489B0C  7C 08 03 A6 */	mtlr r0
/* 80489B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80489B14  4E 80 00 20 */	blr 
