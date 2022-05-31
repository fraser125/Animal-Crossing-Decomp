lbl_80558D90:
/* 80558D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558D94  7C 08 02 A6 */	mflr r0
/* 80558D98  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80558D9C  3C C0 80 6A */	lis r6, animeSeqNo@ha /* 0x806A6B28@ha */
/* 80558DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558DA4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80558DA8  54 80 08 3C */	slwi r0, r4, 1
/* 80558DAC  38 E6 6B 28 */	addi r7, r6, animeSeqNo@l /* 0x806A6B28@l */
/* 80558DB0  3C 85 00 02 */	addis r4, r5, 2
/* 80558DB4  38 A0 00 00 */	li r5, 0
/* 80558DB8  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 80558DBC  7C 87 02 AE */	lhax r4, r7, r0
/* 80558DC0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80558DC4  7D 89 03 A6 */	mtctr r12
/* 80558DC8  4E 80 04 21 */	bctrl 
/* 80558DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558DD0  7C 08 03 A6 */	mtlr r0
/* 80558DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80558DD8  4E 80 00 20 */	blr 
