lbl_80507980:
/* 80507980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507984  7C 08 02 A6 */	mflr r0
/* 80507988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050798C  4B E9 29 15 */	bl mDemo_End
/* 80507990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507994  7C 08 03 A6 */	mtlr r0
/* 80507998  38 21 00 10 */	addi r1, r1, 0x10
/* 8050799C  4E 80 00 20 */	blr 
