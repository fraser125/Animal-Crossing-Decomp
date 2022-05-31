lbl_8058FD74:
/* 8058FD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FD78  7C 08 02 A6 */	mflr r0
/* 8058FD7C  38 A0 00 6D */	li r5, 0x6d
/* 8058FD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FD84  4B FF FF 31 */	bl aTNN1_common_init
/* 8058FD88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FD8C  7C 08 03 A6 */	mtlr r0
/* 8058FD90  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FD94  4E 80 00 20 */	blr 
