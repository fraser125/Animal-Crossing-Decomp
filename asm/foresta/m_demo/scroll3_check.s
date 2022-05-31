lbl_80399A78:
/* 80399A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399A7C  7C 08 02 A6 */	mflr r0
/* 80399A80  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399A88  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399A8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80399A90  48 04 18 69 */	bl mPlib_check_request_main_demo_geton_boat_wade_priority
/* 80399A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399A98  7C 08 03 A6 */	mtlr r0
/* 80399A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80399AA0  4E 80 00 20 */	blr 
