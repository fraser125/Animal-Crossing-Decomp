lbl_805F7688:
/* 805F7688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F768C  7C 08 02 A6 */	mflr r0
/* 805F7690  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F7694  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805F7698  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 805F769C  41 80 00 18 */	blt lbl_805F76B4
/* 805F76A0  28 00 2D 2C */	cmplwi r0, 0x2d2c
/* 805F76A4  41 81 00 10 */	bgt lbl_805F76B4
/* 805F76A8  38 60 00 28 */	li r3, 0x28
/* 805F76AC  4B DE 23 61 */	bl mPlib_request_main_release_creature_insect_from_submenu
/* 805F76B0  48 00 00 38 */	b lbl_805F76E8
lbl_805F76B4:
/* 805F76B4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805F76B8  38 A0 00 00 */	li r5, 0
/* 805F76BC  28 00 2D 00 */	cmplwi r0, 0x2d00
/* 805F76C0  41 80 00 10 */	blt lbl_805F76D0
/* 805F76C4  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 805F76C8  40 80 00 08 */	bge lbl_805F76D0
/* 805F76CC  38 A0 00 01 */	li r5, 1
lbl_805F76D0:
/* 805F76D0  20 05 00 00 */	subfic r0, r5, 0
/* 805F76D4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 805F76D8  7C A0 01 10 */	subfe r5, r0, r0
/* 805F76DC  38 03 D3 00 */	addi r0, r3, -11520
/* 805F76E0  7C 03 28 38 */	and r3, r0, r5
/* 805F76E4  4B DE 23 29 */	bl mPlib_request_main_release_creature_insect_from_submenu
lbl_805F76E8:
/* 805F76E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F76EC  7C 08 03 A6 */	mtlr r0
/* 805F76F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805F76F4  4E 80 00 20 */	blr 
