lbl_80399B5C:
/* 80399B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399B60  7C 08 02 A6 */	mflr r0
/* 80399B64  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399B6C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399B70  80 63 00 00 */	lwz r3, 0(r3)
/* 80399B74  48 04 14 B9 */	bl mPlib_check_request_main_speak_type1_priority
/* 80399B78  30 03 FF FF */	addic r0, r3, -1
/* 80399B7C  7C 60 19 10 */	subfe r3, r0, r3
/* 80399B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399B84  7C 08 03 A6 */	mtlr r0
/* 80399B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80399B8C  4E 80 00 20 */	blr 
