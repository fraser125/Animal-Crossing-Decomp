lbl_8039A978:
/* 8039A978  54 67 1F 7E */	srwi r7, r3, 0x1d
/* 8039A97C  28 07 00 07 */	cmplwi r7, 7
/* 8039A980  4C 80 00 20 */	bgelr 
/* 8039A984  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039A988  54 60 00 FE */	clrlwi r0, r3, 3
/* 8039A98C  54 E6 10 3A */	slwi r6, r7, 2
/* 8039A990  38 60 00 01 */	li r3, 1
/* 8039A994  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8039A998  28 07 00 01 */	cmplwi r7, 1
/* 8039A99C  7C 85 32 14 */	add r4, r5, r6
/* 8039A9A0  7C 60 00 30 */	slw r0, r3, r0
/* 8039A9A4  3C C4 00 03 */	addis r6, r4, 3
/* 8039A9A8  80 86 DB B8 */	lwz r4, -0x2448(r6)
/* 8039A9AC  7C 80 03 78 */	or r0, r4, r0
/* 8039A9B0  94 06 DB B8 */	stwu r0, -0x2448(r6)
/* 8039A9B4  4C 82 00 20 */	bnelr 
/* 8039A9B8  80 06 00 00 */	lwz r0, 0(r6)
/* 8039A9BC  3C 65 00 02 */	addis r3, r5, 2
/* 8039A9C0  90 03 05 50 */	stw r0, 0x550(r3)
/* 8039A9C4  4E 80 00 20 */	blr 
