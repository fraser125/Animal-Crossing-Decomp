lbl_805A2618:
/* 805A2618  3C 80 81 1F */	lis r4, data_811F2870@ha /* 0x811F2870@ha */
/* 805A261C  38 60 00 00 */	li r3, 0
/* 805A2620  38 84 28 70 */	addi r4, r4, data_811F2870@l /* 0x811F2870@l */
/* 805A2624  38 A0 00 00 */	li r5, 0
/* 805A2628  80 84 00 00 */	lwz r4, 0(r4)
/* 805A262C  38 84 01 74 */	addi r4, r4, 0x174
/* 805A2630  48 00 00 20 */	b lbl_805A2650
lbl_805A2634:
/* 805A2634  A0 04 02 40 */	lhz r0, 0x240(r4)
/* 805A2638  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805A263C  41 82 00 0C */	beq lbl_805A2648
/* 805A2640  38 60 00 01 */	li r3, 1
/* 805A2644  4E 80 00 20 */	blr 
lbl_805A2648:
/* 805A2648  38 84 02 50 */	addi r4, r4, 0x250
/* 805A264C  38 A5 00 01 */	addi r5, r5, 1
lbl_805A2650:
/* 805A2650  7C A0 07 34 */	extsh r0, r5
/* 805A2654  2C 00 00 02 */	cmpwi r0, 2
/* 805A2658  41 80 FF DC */	blt lbl_805A2634
/* 805A265C  4E 80 00 20 */	blr 
