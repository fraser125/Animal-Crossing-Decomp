lbl_8058B904:
/* 8058B904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058B908  7C 08 02 A6 */	mflr r0
/* 8058B90C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058B910  39 61 00 20 */	addi r11, r1, 0x20
/* 8058B914  4B B0 F5 C1 */	bl func_8009AED4
/* 8058B918  81 83 09 98 */	lwz r12, 0x998(r3)
/* 8058B91C  7C 7F 1B 78 */	mr r31, r3
/* 8058B920  3B A0 00 00 */	li r29, 0
/* 8058B924  7C 9E 23 78 */	mr r30, r4
/* 8058B928  7D 89 03 A6 */	mtctr r12
/* 8058B92C  4E 80 04 21 */	bctrl 
/* 8058B930  7F E4 FB 78 */	mr r4, r31
/* 8058B934  38 60 00 08 */	li r3, 8
/* 8058B938  4B E0 E9 2D */	bl mDemo_Check
/* 8058B93C  2C 03 00 00 */	cmpwi r3, 0
/* 8058B940  40 82 00 2C */	bne lbl_8058B96C
/* 8058B944  7F E4 FB 78 */	mr r4, r31
/* 8058B948  38 60 00 07 */	li r3, 7
/* 8058B94C  4B E0 E9 19 */	bl mDemo_Check
/* 8058B950  2C 03 00 00 */	cmpwi r3, 0
/* 8058B954  40 82 00 18 */	bne lbl_8058B96C
/* 8058B958  A8 BF 09 A4 */	lha r5, 0x9a4(r31)
/* 8058B95C  7F E3 FB 78 */	mr r3, r31
/* 8058B960  7F C4 F3 78 */	mr r4, r30
/* 8058B964  48 00 06 3D */	bl aTKN0_setup_think_proc
/* 8058B968  3B A0 00 01 */	li r29, 1
lbl_8058B96C:
/* 8058B96C  7F A3 EB 78 */	mr r3, r29
/* 8058B970  39 61 00 20 */	addi r11, r1, 0x20
/* 8058B974  4B B0 F5 AD */	bl func_8009AF20
/* 8058B978  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058B97C  7C 08 03 A6 */	mtlr r0
/* 8058B980  38 21 00 20 */	addi r1, r1, 0x20
/* 8058B984  4E 80 00 20 */	blr 
