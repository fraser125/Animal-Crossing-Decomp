lbl_8051E0A8:
/* 8051E0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E0AC  7C 08 02 A6 */	mflr r0
/* 8051E0B0  3C A0 80 52 */	lis r5, func_8051E084@ha /* 0x8051E084@ha */
/* 8051E0B4  7C 64 1B 78 */	mr r4, r3
/* 8051E0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E0BC  38 A5 E0 84 */	addi r5, r5, func_8051E084@l /* 0x8051E084@l */
/* 8051E0C0  38 60 00 07 */	li r3, 7
/* 8051E0C4  4B E7 C0 99 */	bl mDemo_Request
/* 8051E0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E0CC  7C 08 03 A6 */	mtlr r0
/* 8051E0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E0D4  4E 80 00 20 */	blr 
