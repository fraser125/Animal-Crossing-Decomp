lbl_8058FDBC:
/* 8058FDBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FDC0  7C 08 02 A6 */	mflr r0
/* 8058FDC4  38 A0 00 6F */	li r5, 0x6f
/* 8058FDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FDCC  4B FF FE E9 */	bl aTNN1_common_init
/* 8058FDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FDD4  7C 08 03 A6 */	mtlr r0
/* 8058FDD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FDDC  4E 80 00 20 */	blr 
