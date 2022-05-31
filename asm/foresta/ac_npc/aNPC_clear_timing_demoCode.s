lbl_8052E45C:
/* 8052E45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052E460  7C 08 02 A6 */	mflr r0
/* 8052E464  2C 03 00 00 */	cmpwi r3, 0
/* 8052E468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052E46C  40 82 00 18 */	bne lbl_8052E484
/* 8052E470  38 60 00 04 */	li r3, 4
/* 8052E474  38 80 00 01 */	li r4, 1
/* 8052E478  38 A0 00 00 */	li r5, 0
/* 8052E47C  4B E6 9F BD */	bl mDemo_Set_OrderValue
/* 8052E480  48 00 00 14 */	b lbl_8052E494
lbl_8052E484:
/* 8052E484  38 60 00 04 */	li r3, 4
/* 8052E488  38 80 00 03 */	li r4, 3
/* 8052E48C  38 A0 00 00 */	li r5, 0
/* 8052E490  4B E6 9F A9 */	bl mDemo_Set_OrderValue
lbl_8052E494:
/* 8052E494  38 60 00 05 */	li r3, 5
/* 8052E498  38 80 00 00 */	li r4, 0
/* 8052E49C  38 A0 00 00 */	li r5, 0
/* 8052E4A0  4B E6 9F 99 */	bl mDemo_Set_OrderValue
/* 8052E4A4  38 60 00 05 */	li r3, 5
/* 8052E4A8  38 80 00 01 */	li r4, 1
/* 8052E4AC  38 A0 00 00 */	li r5, 0
/* 8052E4B0  4B E6 9F 89 */	bl mDemo_Set_OrderValue
/* 8052E4B4  38 60 00 05 */	li r3, 5
/* 8052E4B8  38 80 00 02 */	li r4, 2
/* 8052E4BC  38 A0 00 00 */	li r5, 0
/* 8052E4C0  4B E6 9F 79 */	bl mDemo_Set_OrderValue
/* 8052E4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052E4C8  7C 08 03 A6 */	mtlr r0
/* 8052E4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052E4D0  4E 80 00 20 */	blr 
