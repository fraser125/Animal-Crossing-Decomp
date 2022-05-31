lbl_80543398:
/* 80543398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054339C  7C 08 02 A6 */	mflr r0
/* 805433A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805433A4  98 A3 07 DC */	stb r5, 0x7dc(r3)
/* 805433A8  4B FF FF B5 */	bl aNPC_schedule_init
/* 805433AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805433B0  7C 08 03 A6 */	mtlr r0
/* 805433B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805433B8  4E 80 00 20 */	blr 
