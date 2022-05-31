lbl_8051D810:
/* 8051D810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D814  7C 08 02 A6 */	mflr r0
/* 8051D818  3C A0 80 52 */	lis r5, aEDSN_set_norm_talk_info@ha /* 0x8051D670@ha */
/* 8051D81C  7C 64 1B 78 */	mr r4, r3
/* 8051D820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D824  38 A5 D6 70 */	addi r5, r5, aEDSN_set_norm_talk_info@l /* 0x8051D670@l */
/* 8051D828  38 60 00 07 */	li r3, 7
/* 8051D82C  4B E7 C9 31 */	bl mDemo_Request
/* 8051D830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D834  7C 08 03 A6 */	mtlr r0
/* 8051D838  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D83C  4E 80 00 20 */	blr 
