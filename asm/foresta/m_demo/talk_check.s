lbl_80399B28:
/* 80399B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399B2C  7C 08 02 A6 */	mflr r0
/* 80399B30  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399B38  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399B3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80399B40  48 04 14 11 */	bl mPlib_check_request_main_talk_type1_priority
/* 80399B44  30 03 FF FF */	addic r0, r3, -1
/* 80399B48  7C 60 19 10 */	subfe r3, r0, r3
/* 80399B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399B50  7C 08 03 A6 */	mtlr r0
/* 80399B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80399B58  4E 80 00 20 */	blr 
