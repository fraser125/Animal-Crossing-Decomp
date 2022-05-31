lbl_8058EE2C:
/* 8058EE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EE30  7C 08 02 A6 */	mflr r0
/* 8058EE34  2C 05 00 01 */	cmpwi r5, 1
/* 8058EE38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EE3C  41 82 00 1C */	beq lbl_8058EE58
/* 8058EE40  40 80 00 1C */	bge lbl_8058EE5C
/* 8058EE44  2C 05 00 00 */	cmpwi r5, 0
/* 8058EE48  40 80 00 08 */	bge lbl_8058EE50
/* 8058EE4C  48 00 00 10 */	b lbl_8058EE5C
lbl_8058EE50:
/* 8058EE50  4B FF FE 85 */	bl aTNN0_think_init_proc
/* 8058EE54  48 00 00 08 */	b lbl_8058EE5C
lbl_8058EE58:
/* 8058EE58  4B FF FE 41 */	bl aTNN0_think_main_proc
lbl_8058EE5C:
/* 8058EE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EE60  7C 08 03 A6 */	mtlr r0
/* 8058EE64  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EE68  4E 80 00 20 */	blr 
