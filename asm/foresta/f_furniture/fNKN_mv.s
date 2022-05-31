lbl_80633320:
/* 80633320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633324  7C 08 02 A6 */	mflr r0
/* 80633328  3C 80 80 6D */	lis r4, int_nog_kouban_off_pal@ha /* 0x806D7AA0@ha */
/* 8063332C  3C A0 80 6D */	lis r5, int_nog_kouban_on_pal@ha /* 0x806D7A80@ha */
/* 80633330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633334  7C 66 1B 78 */	mr r6, r3
/* 80633338  38 84 7A A0 */	addi r4, r4, int_nog_kouban_off_pal@l /* 0x806D7AA0@l */
/* 8063333C  38 A5 7A 80 */	addi r5, r5, int_nog_kouban_on_pal@l /* 0x806D7A80@l */
/* 80633340  80 63 08 50 */	lwz r3, 0x850(r3)
/* 80633344  4B FF B5 41 */	bl func_8062E884
/* 80633348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063334C  7C 08 03 A6 */	mtlr r0
/* 80633350  38 21 00 10 */	addi r1, r1, 0x10
/* 80633354  4E 80 00 20 */	blr 
