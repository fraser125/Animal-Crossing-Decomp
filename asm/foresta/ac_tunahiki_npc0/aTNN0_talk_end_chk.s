lbl_8058EAD0:
/* 8058EAD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058EAD4  7C 08 02 A6 */	mflr r0
/* 8058EAD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058EADC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058EAE0  4B B0 C3 F5 */	bl func_8009AED4
/* 8058EAE4  81 83 09 98 */	lwz r12, 0x998(r3)
/* 8058EAE8  7C 7F 1B 78 */	mr r31, r3
/* 8058EAEC  3B A0 00 00 */	li r29, 0
/* 8058EAF0  7C 9E 23 78 */	mr r30, r4
/* 8058EAF4  7D 89 03 A6 */	mtctr r12
/* 8058EAF8  4E 80 04 21 */	bctrl 
/* 8058EAFC  7F E4 FB 78 */	mr r4, r31
/* 8058EB00  38 60 00 08 */	li r3, 8
/* 8058EB04  4B E0 B7 61 */	bl mDemo_Check
/* 8058EB08  2C 03 00 00 */	cmpwi r3, 0
/* 8058EB0C  40 82 00 2C */	bne lbl_8058EB38
/* 8058EB10  7F E4 FB 78 */	mr r4, r31
/* 8058EB14  38 60 00 07 */	li r3, 7
/* 8058EB18  4B E0 B7 4D */	bl mDemo_Check
/* 8058EB1C  2C 03 00 00 */	cmpwi r3, 0
/* 8058EB20  40 82 00 18 */	bne lbl_8058EB38
/* 8058EB24  88 BF 09 A7 */	lbz r5, 0x9a7(r31)
/* 8058EB28  7F E3 FB 78 */	mr r3, r31
/* 8058EB2C  7F C4 F3 78 */	mr r4, r30
/* 8058EB30  48 00 02 61 */	bl aTNN0_setup_think_proc
/* 8058EB34  3B A0 00 01 */	li r29, 1
lbl_8058EB38:
/* 8058EB38  7F A3 EB 78 */	mr r3, r29
/* 8058EB3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058EB40  4B B0 C3 E1 */	bl func_8009AF20
/* 8058EB44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058EB48  7C 08 03 A6 */	mtlr r0
/* 8058EB4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058EB50  4E 80 00 20 */	blr 
