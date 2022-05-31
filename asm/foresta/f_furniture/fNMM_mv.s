lbl_806334A4:
/* 806334A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806334A8  7C 08 02 A6 */	mflr r0
/* 806334AC  3C 80 80 6D */	lis r4, int_nog_museum_off_pal@ha /* 0x806D7C80@ha */
/* 806334B0  3C A0 80 6D */	lis r5, int_nog_museum_on_pal@ha /* 0x806D7CA0@ha */
/* 806334B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806334B8  7C 66 1B 78 */	mr r6, r3
/* 806334BC  38 84 7C 80 */	addi r4, r4, int_nog_museum_off_pal@l /* 0x806D7C80@l */
/* 806334C0  38 A5 7C A0 */	addi r5, r5, int_nog_museum_on_pal@l /* 0x806D7CA0@l */
/* 806334C4  80 63 08 50 */	lwz r3, 0x850(r3)
/* 806334C8  4B FF B3 BD */	bl func_8062E884
/* 806334CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806334D0  7C 08 03 A6 */	mtlr r0
/* 806334D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806334D8  4E 80 00 20 */	blr 
