lbl_80634818:
/* 80634818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063481C  7C 08 02 A6 */	mflr r0
/* 80634820  3C 80 80 6E */	lis r4, int_nog_shop1_off_pal@ha /* 0x806D8480@ha */
/* 80634824  3C A0 80 6E */	lis r5, int_nog_shop1_on_pal@ha /* 0x806D8460@ha */
/* 80634828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063482C  7C 66 1B 78 */	mr r6, r3
/* 80634830  38 84 84 80 */	addi r4, r4, int_nog_shop1_off_pal@l /* 0x806D8480@l */
/* 80634834  38 A5 84 60 */	addi r5, r5, int_nog_shop1_on_pal@l /* 0x806D8460@l */
/* 80634838  80 63 08 50 */	lwz r3, 0x850(r3)
/* 8063483C  4B FF A0 49 */	bl func_8062E884
/* 80634840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634844  7C 08 03 A6 */	mtlr r0
/* 80634848  38 21 00 10 */	addi r1, r1, 0x10
/* 8063484C  4E 80 00 20 */	blr 
