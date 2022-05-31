lbl_8039A9C8:
/* 8039A9C8  54 67 1F 7E */	srwi r7, r3, 0x1d
/* 8039A9CC  28 07 00 07 */	cmplwi r7, 7
/* 8039A9D0  4C 80 00 20 */	bgelr 
/* 8039A9D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039A9D8  54 60 00 FE */	clrlwi r0, r3, 3
/* 8039A9DC  54 E6 10 3A */	slwi r6, r7, 2
/* 8039A9E0  38 60 00 01 */	li r3, 1
/* 8039A9E4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8039A9E8  28 07 00 01 */	cmplwi r7, 1
/* 8039A9EC  7C 85 32 14 */	add r4, r5, r6
/* 8039A9F0  7C 60 00 30 */	slw r0, r3, r0
/* 8039A9F4  3C C4 00 03 */	addis r6, r4, 3
/* 8039A9F8  80 86 DB B8 */	lwz r4, -0x2448(r6)
/* 8039A9FC  7C 80 00 78 */	andc r0, r4, r0
/* 8039AA00  94 06 DB B8 */	stwu r0, -0x2448(r6)
/* 8039AA04  4C 82 00 20 */	bnelr 
/* 8039AA08  80 06 00 00 */	lwz r0, 0(r6)
/* 8039AA0C  3C 65 00 02 */	addis r3, r5, 2
/* 8039AA10  90 03 05 50 */	stw r0, 0x550(r3)
/* 8039AA14  4E 80 00 20 */	blr 
