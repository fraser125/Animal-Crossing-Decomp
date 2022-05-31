lbl_8058BF78:
/* 8058BF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BF7C  7C 08 02 A6 */	mflr r0
/* 8058BF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BF84  38 00 00 02 */	li r0, 2
/* 8058BF88  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 8058BF8C  4B FF FD 2D */	bl aTKN0_normal_wait_init
/* 8058BF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BF94  7C 08 03 A6 */	mtlr r0
/* 8058BF98  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BF9C  4E 80 00 20 */	blr 
