lbl_803792F0:
/* 803792F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803792F4  7C 08 02 A6 */	mflr r0
/* 803792F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803792FC  88 03 00 04 */	lbz r0, 4(r3)
/* 80379300  28 00 00 00 */	cmplwi r0, 0
/* 80379304  41 82 00 0C */	beq lbl_80379310
/* 80379308  38 60 00 00 */	li r3, 0
/* 8037930C  48 00 00 1C */	b lbl_80379328
lbl_80379310:
/* 80379310  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379314  38 80 0E F4 */	li r4, 0xef4
/* 80379318  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037931C  38 A0 00 10 */	li r5, 0x10
/* 80379320  38 C0 0F FF */	li r6, 0xfff
/* 80379324  4B FF F7 11 */	bl mBGMClock_range_time_check
lbl_80379328:
/* 80379328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037932C  7C 08 03 A6 */	mtlr r0
/* 80379330  38 21 00 10 */	addi r1, r1, 0x10
/* 80379334  4E 80 00 20 */	blr 