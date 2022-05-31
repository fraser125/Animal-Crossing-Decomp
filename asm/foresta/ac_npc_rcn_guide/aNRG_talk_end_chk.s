lbl_8056F5A0:
/* 8056F5A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056F5A4  7C 08 02 A6 */	mflr r0
/* 8056F5A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056F5AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056F5B0  4B B2 B9 25 */	bl func_8009AED4
/* 8056F5B4  81 83 09 A4 */	lwz r12, 0x9a4(r3)
/* 8056F5B8  7C 7F 1B 78 */	mr r31, r3
/* 8056F5BC  3B A0 00 00 */	li r29, 0
/* 8056F5C0  7C 9E 23 78 */	mr r30, r4
/* 8056F5C4  7D 89 03 A6 */	mtctr r12
/* 8056F5C8  4E 80 04 21 */	bctrl 
/* 8056F5CC  7F E4 FB 78 */	mr r4, r31
/* 8056F5D0  38 60 00 08 */	li r3, 8
/* 8056F5D4  4B E2 AC 91 */	bl mDemo_Check
/* 8056F5D8  2C 03 00 00 */	cmpwi r3, 0
/* 8056F5DC  40 82 00 2C */	bne lbl_8056F608
/* 8056F5E0  7F E4 FB 78 */	mr r4, r31
/* 8056F5E4  38 60 00 07 */	li r3, 7
/* 8056F5E8  4B E2 AC 7D */	bl mDemo_Check
/* 8056F5EC  2C 03 00 00 */	cmpwi r3, 0
/* 8056F5F0  40 82 00 18 */	bne lbl_8056F608
/* 8056F5F4  80 BF 09 98 */	lwz r5, 0x998(r31)
/* 8056F5F8  7F E3 FB 78 */	mr r3, r31
/* 8056F5FC  7F C4 F3 78 */	mr r4, r30
/* 8056F600  48 00 07 79 */	bl aNRG_setup_think_proc
/* 8056F604  3B A0 00 01 */	li r29, 1
lbl_8056F608:
/* 8056F608  7F A3 EB 78 */	mr r3, r29
/* 8056F60C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056F610  4B B2 B9 11 */	bl func_8009AF20
/* 8056F614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056F618  7C 08 03 A6 */	mtlr r0
/* 8056F61C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056F620  4E 80 00 20 */	blr 
