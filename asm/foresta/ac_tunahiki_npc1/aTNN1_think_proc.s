lbl_8058FE7C:
/* 8058FE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FE80  7C 08 02 A6 */	mflr r0
/* 8058FE84  2C 05 00 01 */	cmpwi r5, 1
/* 8058FE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FE8C  41 82 00 1C */	beq lbl_8058FEA8
/* 8058FE90  40 80 00 1C */	bge lbl_8058FEAC
/* 8058FE94  2C 05 00 00 */	cmpwi r5, 0
/* 8058FE98  40 80 00 08 */	bge lbl_8058FEA0
/* 8058FE9C  48 00 00 10 */	b lbl_8058FEAC
lbl_8058FEA0:
/* 8058FEA0  4B FF FC 05 */	bl aTNN1_think_init_proc
/* 8058FEA4  48 00 00 08 */	b lbl_8058FEAC
lbl_8058FEA8:
/* 8058FEA8  4B FF FB 89 */	bl aTNN1_think_main_proc
lbl_8058FEAC:
/* 8058FEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FEB0  7C 08 03 A6 */	mtlr r0
/* 8058FEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FEB8  4E 80 00 20 */	blr 
