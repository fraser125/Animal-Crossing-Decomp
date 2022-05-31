lbl_803B608C:
/* 803B608C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6090  7C 08 02 A6 */	mflr r0
/* 803B6094  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6098  4B FF FF 11 */	bl Kabu_decide_price_sunday
/* 803B609C  4B FF FF C9 */	bl Kabu_decide_price_schedule_without_sunday
/* 803B60A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B60A4  7C 08 03 A6 */	mtlr r0
/* 803B60A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B60AC  4E 80 00 20 */	blr 
