lbl_8056E1C8:
/* 8056E1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E1CC  7C 08 02 A6 */	mflr r0
/* 8056E1D0  7C 65 1B 78 */	mr r5, r3
/* 8056E1D4  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 8056E1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E1DC  88 05 09 9B */	lbz r0, 0x99b(r5)
/* 8056E1E0  38 A0 00 01 */	li r5, 1
/* 8056E1E4  7C 04 07 74 */	extsb r4, r0
/* 8056E1E8  3C 84 00 01 */	addis r4, r4, 1
/* 8056E1EC  38 04 A0 00 */	addi r0, r4, -24576
/* 8056E1F0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8056E1F4  4B E0 7B 4D */	bl Actor_info_fgName_search
/* 8056E1F8  28 03 00 00 */	cmplwi r3, 0
/* 8056E1FC  41 82 00 0C */	beq lbl_8056E208
/* 8056E200  38 00 00 01 */	li r0, 1
/* 8056E204  90 03 03 1C */	stw r0, 0x31c(r3)
lbl_8056E208:
/* 8056E208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E20C  7C 08 03 A6 */	mtlr r0
/* 8056E210  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E214  4E 80 00 20 */	blr 
