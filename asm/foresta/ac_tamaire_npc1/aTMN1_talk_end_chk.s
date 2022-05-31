lbl_8058A60C:
/* 8058A60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058A610  7C 08 02 A6 */	mflr r0
/* 8058A614  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058A618  39 61 00 20 */	addi r11, r1, 0x20
/* 8058A61C  4B B1 08 B9 */	bl func_8009AED4
/* 8058A620  81 83 09 98 */	lwz r12, 0x998(r3)
/* 8058A624  7C 7F 1B 78 */	mr r31, r3
/* 8058A628  3B A0 00 00 */	li r29, 0
/* 8058A62C  7C 9E 23 78 */	mr r30, r4
/* 8058A630  7D 89 03 A6 */	mtctr r12
/* 8058A634  4E 80 04 21 */	bctrl 
/* 8058A638  7F E4 FB 78 */	mr r4, r31
/* 8058A63C  38 60 00 08 */	li r3, 8
/* 8058A640  4B E0 FC 25 */	bl mDemo_Check
/* 8058A644  2C 03 00 00 */	cmpwi r3, 0
/* 8058A648  40 82 00 2C */	bne lbl_8058A674
/* 8058A64C  7F E4 FB 78 */	mr r4, r31
/* 8058A650  38 60 00 07 */	li r3, 7
/* 8058A654  4B E0 FC 11 */	bl mDemo_Check
/* 8058A658  2C 03 00 00 */	cmpwi r3, 0
/* 8058A65C  40 82 00 18 */	bne lbl_8058A674
/* 8058A660  88 BF 09 AB */	lbz r5, 0x9ab(r31)
/* 8058A664  7F E3 FB 78 */	mr r3, r31
/* 8058A668  7F C4 F3 78 */	mr r4, r30
/* 8058A66C  48 00 0B E1 */	bl aTMN1_setup_think_proc
/* 8058A670  3B A0 00 01 */	li r29, 1
lbl_8058A674:
/* 8058A674  7F A3 EB 78 */	mr r3, r29
/* 8058A678  39 61 00 20 */	addi r11, r1, 0x20
/* 8058A67C  4B B1 08 A5 */	bl func_8009AF20
/* 8058A680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058A684  7C 08 03 A6 */	mtlr r0
/* 8058A688  38 21 00 20 */	addi r1, r1, 0x20
/* 8058A68C  4E 80 00 20 */	blr 
