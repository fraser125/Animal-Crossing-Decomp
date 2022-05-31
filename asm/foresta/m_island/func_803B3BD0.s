lbl_803B3BD0:
/* 803B3BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3BD4  7C 08 02 A6 */	mflr r0
/* 803B3BD8  3C 60 81 17 */	lis r3, data_81168278@ha /* 0x81168278@ha */
/* 803B3BDC  38 80 19 00 */	li r4, 0x1900
/* 803B3BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3BE4  38 63 82 78 */	addi r3, r3, data_81168278@l /* 0x81168278@l */
/* 803B3BE8  4B CA 94 81 */	bl bzero
/* 803B3BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3BF0  7C 08 03 A6 */	mtlr r0
/* 803B3BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3BF8  4E 80 00 20 */	blr 
