lbl_8050FD78:
/* 8050FD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050FD7C  7C 08 02 A6 */	mflr r0
/* 8050FD80  38 80 00 4C */	li r4, 0x4c
/* 8050FD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050FD88  4B B4 D2 E1 */	bl bzero
/* 8050FD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FD90  7C 08 03 A6 */	mtlr r0
/* 8050FD94  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FD98  4E 80 00 20 */	blr 
