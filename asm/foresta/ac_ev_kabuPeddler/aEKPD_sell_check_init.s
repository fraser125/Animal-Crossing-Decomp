lbl_80521988:
/* 80521988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052198C  7C 08 02 A6 */	mflr r0
/* 80521990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521994  4B FF FB CD */	bl aEKPD_set_price_str
/* 80521998  38 60 00 04 */	li r3, 4
/* 8052199C  38 80 00 09 */	li r4, 9
/* 805219A0  38 A0 00 00 */	li r5, 0
/* 805219A4  4B E7 6A 95 */	bl mDemo_Set_OrderValue
/* 805219A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805219AC  7C 08 03 A6 */	mtlr r0
/* 805219B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805219B4  4E 80 00 20 */	blr 
