lbl_80554618:
/* 80554618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055461C  7C 08 02 A6 */	mflr r0
/* 80554620  38 60 00 04 */	li r3, 4
/* 80554624  38 80 00 09 */	li r4, 9
/* 80554628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055462C  38 A0 00 00 */	li r5, 0
/* 80554630  4B E4 3E 09 */	bl mDemo_Set_OrderValue
/* 80554634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554638  7C 08 03 A6 */	mtlr r0
/* 8055463C  38 21 00 10 */	addi r1, r1, 0x10
/* 80554640  4E 80 00 20 */	blr 
