lbl_805219B8:
/* 805219B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805219BC  7C 08 02 A6 */	mflr r0
/* 805219C0  7C 64 1B 78 */	mr r4, r3
/* 805219C4  38 60 00 05 */	li r3, 5
/* 805219C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805219CC  80 A4 09 94 */	lwz r5, 0x994(r4)
/* 805219D0  38 80 00 00 */	li r4, 0
/* 805219D4  38 05 2F 00 */	addi r0, r5, 0x2f00
/* 805219D8  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805219DC  4B E7 6A 5D */	bl mDemo_Set_OrderValue
/* 805219E0  38 60 00 05 */	li r3, 5
/* 805219E4  38 80 00 01 */	li r4, 1
/* 805219E8  38 A0 00 07 */	li r5, 7
/* 805219EC  4B E7 6A 4D */	bl mDemo_Set_OrderValue
/* 805219F0  38 60 00 05 */	li r3, 5
/* 805219F4  38 80 00 02 */	li r4, 2
/* 805219F8  38 A0 00 00 */	li r5, 0
/* 805219FC  4B E7 6A 3D */	bl mDemo_Set_OrderValue
/* 80521A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521A04  7C 08 03 A6 */	mtlr r0
/* 80521A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80521A0C  4E 80 00 20 */	blr 
