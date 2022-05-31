lbl_805D9918:
/* 805D9918  A8 83 00 16 */	lha r4, 0x16(r3)
/* 805D991C  38 A0 FF FF */	li r5, -1
/* 805D9920  7C 80 07 35 */	extsh. r0, r4
/* 805D9924  41 82 00 28 */	beq lbl_805D994C
/* 805D9928  80 03 00 28 */	lwz r0, 0x28(r3)
/* 805D992C  3C 60 80 6D */	lis r3, data_806CC8D8@ha /* 0x806CC8D8@ha */
/* 805D9930  38 63 C8 D8 */	addi r3, r3, data_806CC8D8@l /* 0x806CC8D8@l */
/* 805D9934  7C 80 22 14 */	add r4, r0, r4
/* 805D9938  88 04 FF FF */	lbz r0, -1(r4)
/* 805D993C  7C 63 00 AE */	lbzx r3, r3, r0
/* 805D9940  7C 00 18 00 */	cmpw r0, r3
/* 805D9944  41 82 00 08 */	beq lbl_805D994C
/* 805D9948  7C 65 1B 78 */	mr r5, r3
lbl_805D994C:
/* 805D994C  7C A3 2B 78 */	mr r3, r5
/* 805D9950  4E 80 00 20 */	blr 
