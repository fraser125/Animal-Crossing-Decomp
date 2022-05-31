lbl_80399A20:
/* 80399A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399A24  7C 08 02 A6 */	mflr r0
/* 80399A28  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399A30  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399A34  80 63 00 00 */	lwz r3, 0(r3)
/* 80399A38  48 04 17 69 */	bl mPlib_check_request_main_wade_priority
/* 80399A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399A40  7C 08 03 A6 */	mtlr r0
/* 80399A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80399A48  4E 80 00 20 */	blr 
