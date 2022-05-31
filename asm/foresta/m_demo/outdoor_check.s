lbl_80399AFC:
/* 80399AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399B00  7C 08 02 A6 */	mflr r0
/* 80399B04  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399B0C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399B10  80 63 00 00 */	lwz r3, 0(r3)
/* 80399B14  48 04 1A 9D */	bl mPlib_check_request_main_outdoor_priority
/* 80399B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399B1C  7C 08 03 A6 */	mtlr r0
/* 80399B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80399B24  4E 80 00 20 */	blr 
